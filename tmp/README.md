# Archived files

This directory holds files no longer used by the current homepage. Files were
moved here without changing their contents; the directory structure matches
their original paths. Nothing in `tmp/` is included in the Jekyll build.

| Directory | Contents |
| --- | --- |
| `_includes/`, `_sass/`, `assets/` | Retired AcadHomepage templates, scripts, styles, and icon fonts |
| `images/` | Old photos, duplicate logos, unused icons, and paper figures |
| `pubs/`, `bib/` | Unlinked manuscript versions and duplicate bibliography files |
| `docs/` | Original template documentation and screenshot |
| `google_scholar_crawler/` | Unused citation crawler |
| `.github/` | Original template author's funding configuration |
| `reference/` | Publication data before removing unused thumbnail fields |

`manifest.json` lists every moved file, its original path, size, and SHA-256
checksum. To restore one file, move it from `tmp/<original path>` back to
`<original path>` and restore any necessary references. The old publication
thumbnail paths are preserved in `reference/publications-before-cleanup.yml`.

Finder metadata is archived alongside its original directory and remains
ignored by Git. Archived source files and assets can be committed so the archive
is recoverable on other machines; this directory is not a build cache.
