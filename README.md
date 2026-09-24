# Zihao Fan’s Homepage

A compact academic homepage built with Jekyll, adapted from Changgang Zheng’s
website and the Jon Barron academic homepage design. The site uses local fonts
and responsive layouts for desktop and mobile.

Typography follows the reference stylesheet: Lato with Verdana and Helvetica
fallbacks, 15.5px body text and links, 16.5px bold emphasis and paper titles, 25px
section headings, 32px page titles, and normal line height. The same font sizes
apply on mobile. Both Latin and Latin Extended font subsets are hosted locally.

The homepage contains the biography and Selected News. Navigation links open
the Publications, Experience, and WeChat pages, as well as the author's GitHub
profile. Inner pages have compact navigation with a Home link. The WeChat page
displays `images/wechat.jpg`, with a link to the full-size image.

## Preview locally

```sh
bash run_server.sh
```

Open `http://127.0.0.1:4000`. The preview reloads when content changes. To use a
different port, run `PORT=4001 bash run_server.sh`.

The script uses `Gemfile.local` when present for the macOS Ruby 2.6 environment.
Otherwise, it uses `Gemfile`. Dependencies are checked and installed as needed.

## Edit content

| File | Content |
| --- | --- |
| `_config.yml` | Name, photo, email, GitHub, site metadata |
| `_pages/about.md` | Homepage: biography and Selected News |
| `_pages/publications.html` | Publications page, grouped into preprints and publication years |
| `_pages/experience.html` | Experience page: research experience and education |
| `_pages/wechat.html` | WeChat contact page and QR code |
| `_data/news.yml` | News archive; entries with `selected: true` appear on the homepage |
| `_data/publications.yml` | Papers, authors, venues, figures, PDF and BibTeX links |
| `_data/experience.yml` | Internships and education |
| `_data/navigation.yml` | Navigation links |
| `assets/css/homepage.css` | Typography, spacing, and responsive styles |

Paper and news text supports Markdown. Selected news entries have an image and
either related paper IDs or a description of the experience. News about a single
paper shows its available Paper, Link, and BibTeX resources. News about multiple
papers shows their names linking to each paper's PDF, falling back to its entry
on the Publications page when a PDF is unavailable.

Set `year` on published papers to control their year grouping;
papers with `badge: Preprint` appear in the Preprints section.

Use paths starting with `/` for local
resources (for example `/pubs/HyDra.pdf`) and complete URLs for external links.
Only add publication links when the resource is available. Missing links are
omitted; papers without any resources show “(Paper to be released)”.

Put papers in `pubs/`, BibTeX in `bib/`, and images in `images/`. All Selected News
images are stored in `images/news_image/`; update the corresponding `image` path
in `_data/news.yml` when changing an image filename. Existing resource
URLs and the `/about/` and `/about.html` redirects are retained. Publications are
at `/publications.html`, and experience is at `/experience.html`. Individual
papers can be linked using `/publications.html#hydra`, for example.

## Deployment

The existing `.github/workflows/pages.yml` workflow builds the Jekyll site and
publishes it to GitHub Pages when changes are pushed to `main`. In the repository
settings, Pages should use **GitHub Actions** as its build source.

For a production build:

```sh
JEKYLL_ENV=production bundle exec jekyll build
```

For the local macOS environment:

```sh
BUNDLE_GEMFILE=Gemfile.local BUNDLE_PATH=vendor/bundle JEKYLL_ENV=production bundle exec jekyll build
```

## Credits

Design reference: https://changgang-zheng.github.io/ (originally based on
https://jonbarron.info/). Attribution, reference revision, and license copies are
in `licenses/`. The Lato fonts are hosted locally under the SIL Open Font License.
The repository originally used AcadHomepage by Yi Ren; its MIT license is retained.
