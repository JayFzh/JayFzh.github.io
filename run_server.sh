#!/usr/bin/env bash
# Serve the site locally at http://127.0.0.1:4000 with live reload.
#
# macOS ships Ruby 2.6, which the current github-pages gem no longer supports.
# If a Gemfile.local exists (pinned to a Ruby-2.6-compatible github-pages, and
# git-ignored) it is used instead of the Gemfile that CI builds with, and gems
# are kept in ./vendor/bundle so nothing is installed system-wide.
set -uo pipefail

cd "$(dirname "$0")"

PORT="${PORT:-4000}"

# Bundler installed via `gem install bundler --user-install`.
USER_GEM_BIN="$HOME/.gem/ruby/2.6.0/bin"
[ -d "$USER_GEM_BIN" ] && export PATH="$USER_GEM_BIN:$PATH"

if [ -f Gemfile.local ]; then
  export BUNDLE_GEMFILE=Gemfile.local
  export BUNDLE_PATH=vendor/bundle
fi

if lsof -nP -iTCP:"$PORT" -sTCP:LISTEN >/dev/null 2>&1; then
  echo "!! Port $PORT is already in use — a preview server is probably running." >&2
  echo "   Stop it, or start this one on another port: PORT=4001 ./run_server.sh" >&2
  exit 1
fi

if ! bundle check >/dev/null 2>&1; then
  echo "==> Installing gems..."
  bundle install || exit 1
fi

echo "==> Serving on http://127.0.0.1:$PORT (ctrl-c to stop)"
exec bundle exec jekyll serve --port "$PORT" --livereload
