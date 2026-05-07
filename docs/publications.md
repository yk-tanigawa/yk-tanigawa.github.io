# Publications Data Notes

Publication pages live under `_publications/`. They are rendered by the `publications` Jekyll collection configured in `_config.yml` and listed by `_pages/publications.html`.

## Filename and permalink conventions

The filename prefix encodes the publication type and is used to split the listing on `_pages/publications.html`.

- Active preprint
  - Filename: `_publications/preprint-<yyyy-mm-dd>-<slug>.md`
  - Permalink: `/publication/preprint-<yyyy-mm-dd>-<slug>`
  - Listed under "Preprints" on the publications page
- Peer-reviewed paper
  - Filename: `_publications/<yyyy-mm-dd>-<slug>.md`
  - Permalink: `/publication/<yyyy-mm-dd>-<slug>`
  - Listed under "Peer-reviewed publications" on the publications page
- Preprint that has since been published
  - Filename: `_publications/published-preprint-<yyyy-mm-dd>-<slug>.md`
  - Permalink: keep the original `/publication/preprint-<yyyy-mm-dd>-<slug>`
  - Front matter: add `ispublishedpreprint: "True"`
  - The publications page hides these from the active "Preprints" list while keeping the preprint URL alive as a redirect to the published page

The date in the filename and permalink should be the original posting date for preprints, and the publication date for peer-reviewed papers.

## Required front matter

Each publication page should define these fields in front matter:

- `title`
  - For preprints, prefix the title with `[Preprint] ` so the listing visually flags it
- `collection: publications`
- `permalink`
  - Must match the filename pattern above
- `excerpt`
  - One- or two-sentence summary shown on the publications page
- `date`
  - `yyyy-mm-dd` posting or publication date
- `venue`
  - Preprint server such as `bioRxiv` or `medRxiv`, or the journal name
- `paperurl`
  - DOI link, journal link, or preprint server link
- `citation`
  - Full citation string used on the publication page

## Recommended front matter

- `excerpt_image`
  - Path under `/files/<year>/...` to a small graphical abstract or figure used as the listing thumbnail
- `highlight: true`
  - Marks the entry as a select publication; select publications appear at the top of `_pages/publications.html`
- `ispublishedpreprint: "True"`
  - Only on `published-preprint-*` files; hides them from the active preprint list

## File assets

Store publication figures, graphical abstracts, and any locally hosted PDFs under `files/<year>/`.

When a paper has its own image-rich summary on the publication page, store the figures under `files/<year>/` and reference them with `/files/<year>/<filename>` in the Markdown body.

When the publisher provides a stable PDF link or a DOI, prefer linking out via `paperurl` rather than mirroring the PDF in this repository. Mirror the PDF only when the external link is unstable or when the publisher's terms allow and the file is small.

## Example

```yaml
---
title: "[Preprint] Example Title"
collection: publications
permalink: /publication/preprint-2025-11-19-example
excerpt: "One- or two-sentence summary of the contribution."
excerpt_image: '/files/2025/example_thumb.jpg'
date: 2025-11-19
venue: 'bioRxiv'
paperurl: 'https://doi.org/10.1101/2025.11.19.689166'
citation: "Author A, Author B, Y. Tanigawa. Example Title. bioRxiv, 2025.11.19.689166 (2025)."
---
```

## Moving a preprint to a paper

When a preprint is accepted and published as a peer-reviewed paper:

1. Rename the existing preprint file from `_publications/preprint-<yyyy-mm-dd>-<slug>.md` to `_publications/published-preprint-<yyyy-mm-dd>-<slug>.md`.
2. Keep the existing `permalink` value pointing at `/publication/preprint-<yyyy-mm-dd>-<slug>` so the original preprint URL keeps working.
3. Add `ispublishedpreprint: "True"` to the renamed file's front matter.
4. Replace the body of the renamed file with a short note that links to the new published page, for example:

   ```markdown
   This preprint is [now published in <Journal>](/publication/<yyyy-mm-dd>-<slug>)!
   ```

5. Create a new `_publications/<yyyy-mm-dd>-<slug>.md` file for the published version, with `permalink: /publication/<yyyy-mm-dd>-<slug>`, the journal as `venue`, the journal DOI as `paperurl`, and a fresh citation string.
6. Verify both pages render locally with `bundle exec jekyll serve` and that the old preprint URL still resolves and points readers to the published version.

## Updating the home page News list

When adding a new preprint or paper, add a corresponding entry near the top of the News section in `_pages/about.md`. The entry should follow the existing format: date, a bold label such as `**New Preprint**` or `**New Publication**`, the linked title, and a one-sentence summary.
