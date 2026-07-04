#!/usr/bin/env bash
# Commit + push, then watch the GitHub Pages deployment.
# GitHub Pages' backend intermittently returns "Deployment failed, try again
# later." on the deploy step (build always succeeds). This script auto-retries
# the deploy until it succeeds, so you don't have to click "Re-run" by hand.
set -uo pipefail

REPO="JayFzh/JayFzh.github.io"
BRANCH="main"
WORKFLOW="pages.yml"
MAX_RETRIES=5
SITE_URL="https://jayfzh.github.io/"

# ---------------------------------------------------------------------------
# 1. Commit & push
# ---------------------------------------------------------------------------
git add .
if git diff --cached --quiet; then
  echo "==> No staged changes; nothing new to commit."
  committed=0
else
  git commit -m "update: $(date '+%Y-%m-%d %H:%M:%S')"
  committed=1
fi
git push origin "$BRANCH"

# ---------------------------------------------------------------------------
# 2. Read GitHub token from the git credential helper (osxkeychain)
# ---------------------------------------------------------------------------
TOKEN=$(printf 'protocol=https\nhost=github.com\n\n' | git credential fill 2>/dev/null | sed -n 's/^password=//p')
if [ -z "${TOKEN:-}" ]; then
  echo "!! Could not read a GitHub token from your git credential helper." >&2
  echo "   Pushed OK; check the deployment manually:" >&2
  echo "   https://github.com/$REPO/actions" >&2
  exit 0
fi

api() { curl -s -H "Authorization: Bearer $TOKEN" -H "Accept: application/vnd.github+json" "$@"; }

TARGET_SHA=$(git rev-parse HEAD)

# Prints "RUNID STATUS CONCLUSION" for the newest pages.yml run on TARGET_SHA
newest_run() {
  api "https://api.github.com/repos/$REPO/actions/workflows/$WORKFLOW/runs?per_page=20" \
    | TARGET_SHA="$TARGET_SHA" python3 -c "
import os,sys,json
sha=os.environ['TARGET_SHA']
try:
    runs=[r for r in json.load(sys.stdin).get('workflow_runs',[]) if r['head_sha']==sha]
except Exception:
    runs=[]
if not runs:
    print('NONE none none')
else:
    r=runs[0]
    print(r['id'], r['status'], r['conclusion'])
"
}

dispatch() {
  api -X POST "https://api.github.com/repos/$REPO/actions/workflows/$WORKFLOW/dispatches" \
    -d "{\"ref\":\"$BRANCH\"}" >/dev/null
}

# Baseline: which run id have we already accounted for?
if [ "$committed" -eq 1 ]; then
  # New commit -> the push already triggered a fresh run for this sha.
  last_id=0
else
  # No new commit -> ignore any existing runs and trigger a fresh deploy.
  read -r last_id _ _ <<<"$(newest_run)"
  [ "$last_id" = "NONE" ] && last_id=0
  echo "==> No new commit; triggering a fresh deploy..."
  dispatch
fi

# ---------------------------------------------------------------------------
# 3. Watch the deployment, auto-retry on failure
# ---------------------------------------------------------------------------
attempt=1
while :; do
  echo "==> Watching GitHub Pages deploy (attempt $attempt/$MAX_RETRIES)..."
  concl=""
  for _ in $(seq 1 120); do            # up to ~20 min per attempt
    read -r rid status conclusion <<<"$(newest_run)"
    if [ "$rid" != "NONE" ] && [ "${rid:-0}" -gt "$last_id" ] 2>/dev/null; then
      if [ "$status" = "completed" ]; then
        last_id=$rid
        concl=$conclusion
        break
      fi
    fi
    printf '.'
    sleep 10
  done
  echo ""

  if [ "$concl" = "success" ]; then
    echo "✅ Deployed successfully -> $SITE_URL"
    exit 0
  fi

  if [ "$attempt" -ge "$MAX_RETRIES" ]; then
    echo "❌ Deploy still failing after $MAX_RETRIES attempts (last result: ${concl:-timeout})." >&2
    echo "   Check https://github.com/$REPO/actions" >&2
    exit 1
  fi

  echo "   Deploy result: ${concl:-timeout}. Re-triggering..."
  dispatch
  attempt=$((attempt + 1))
  sleep 5
done
