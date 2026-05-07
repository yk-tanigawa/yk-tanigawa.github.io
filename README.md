# Yosuke Tanigawa Personal Website

This repository contains the Jekyll source for Yosuke Tanigawa's personal website at <https://yosuketanigawa.com/>. The site is built on the [AcademicPages](https://academicpages.github.io/) Jekyll template, forked from commit [`25c30de2b4`](https://github.com/academicpages/academicpages.github.io/tree/25c30de2b4ce3e3f23559384699bb4b9865d6473).

## Current Hosting

- Site URL: <https://yosuketanigawa.com/>
- Hosting: GitHub Pages, deployed from this repository
- Custom domain: configured via `CNAME`
- Site configuration: `_config.yml`

The site is published as a GitHub User Pages site and deploys automatically when changes land on the default branch. Some content, including the CV PDF, is hosted on Google Drive and embedded into the site with an `iframe`.

## Local Development

Install dependencies:

```bash
bundle install
```

Start the preview server:

```bash
bundle exec jekyll serve
```

The local site is then available at <http://localhost:4000/>.

A `Makefile` provides shortcuts: `make install`, `make dev` (or `make serve`), `make build`, and `make clean`. Run `make help` for the list.

## Development Workflow

For substantive content changes, prefer a branch-based workflow:

1. Create a branch from the default branch.
2. Make your edits in that branch.
3. Build and preview locally with `bundle exec jekyll serve` and check the changed pages in the browser.
4. Commit your changes to the same branch.
5. Push the branch to GitHub and open a pull request.
6. Review the diff and merge when satisfied.
7. GitHub Pages will deploy the merged changes automatically.

Small, self-contained edits such as a typo fix or a single news entry can be committed directly to the default branch.

## Repo Layout

- `_pages/`
  - Top-level pages such as `about.md`, `cv.md`, `publications.html`, `talks.html`, `teaching.md`, `resources.html`
- `_publications/`
  - One Markdown file per publication or preprint
  - Filename convention and front matter rules: `docs/publications.md`
- `_talks/`
  - One Markdown file per talk or invited presentation
- `_posts/`
  - Blog posts and longer news entries
- `_teaching/`
  - Teaching activities and guest lectures
- `_resources/`
  - Datasets, code, and tools released alongside publications
- `_data/`
  - Site data such as `authors.yml` and `navigation.yml`
- `_includes/`, `_layouts/`, `_sass/`
  - Theme partials, layouts, and styles inherited from AcademicPages
- `files/<year>/`
  - Publication figures, talk slides, and other static assets, organized by year
- `images/`
  - Site-wide images such as the profile photo
- `_config.yml`
  - Site configuration
- `docs/`
  - Maintainer notes for content and publications

## Publications

Publication pages live under `_publications/`.

Publication assets such as figures, slides, and any locally hosted PDFs live under `files/<year>/`.

Main files to update:

- Publication front matter and body: `_publications/<prefix>-<yyyy-mm-dd>-<slug>.md`
- Featured image and figures: `files/<year>/`
- Publication conventions: `docs/publications.md`
- Shared writing and sourcing rules: `docs/content-guidelines.md`

When adding a new preprint:

- Create `_publications/preprint-<yyyy-mm-dd>-<slug>.md`
- Set `permalink: /publication/preprint-<yyyy-mm-dd>-<slug>`
- Set `venue` to the preprint server such as `bioRxiv` or `medRxiv`
- Add figures under `files/<year>/`

When adding a new peer-reviewed paper:

- Create `_publications/<yyyy-mm-dd>-<slug>.md`
- Set `permalink: /publication/<yyyy-mm-dd>-<slug>`
- Set `venue` to the journal name
- Add figures under `files/<year>/`

When moving a preprint to a paper:

- Rename the existing preprint file from `_publications/preprint-<yyyy-mm-dd>-<slug>.md` to `_publications/published-preprint-<yyyy-mm-dd>-<slug>.md`
- Keep the original `permalink: /publication/preprint-<yyyy-mm-dd>-<slug>` so the old URL keeps working
- Add `ispublishedpreprint: "True"` to the renamed file's front matter
- Replace the body of the renamed file with a short note that links to the new published page
- Create a new `_publications/<yyyy-mm-dd>-<slug>.md` for the peer-reviewed version, with `permalink: /publication/<yyyy-mm-dd>-<slug>`

## Talks, Teaching, Posts, and Resources

- Add a talk: `_talks/<yyyy-mm-dd>-<slug>.md` with assets under `files/<year>/`
- Add a teaching entry: `_teaching/<yyyy-...>-<slug>.md`
- Add a blog post or longer news entry: `_posts/<yyyy-mm-dd>-<slug>.md`
- Add a dataset, code, or tool resource: `_resources/<year>-<slug>.md`

The home page in `_pages/about.md` includes a hand-curated News list and a Research interests list. When publishing a new preprint or paper, also add a corresponding news entry near the top of the News section in `_pages/about.md`.

## Notes

- Contributor instructions and content standards live in `AGENTS.md`.
- For scientific content updates, follow the source, citation, naming, and writing guidance in `docs/content-guidelines.md`.
