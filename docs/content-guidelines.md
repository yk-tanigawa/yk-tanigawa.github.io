# Content Guidelines

This document contains shared editorial and sourcing guidance for both human contributors and agents working on this site.

## Content standards

Scientific accuracy comes first. Every page should reflect the underlying science faithfully. When a topic is complex, explain it in accessible language without changing the meaning of the science. If a claim is uncertain, state the uncertainty clearly.

Language on the website should be concise and direct. Prefer short words, short sentences, and concrete statements. Remove filler, repeated setup, and vague transitions.

## Trusted sources

For scientific accuracy, the full text in PubMed Central should be treated as a trusted source whenever it is available. When a paper is in PubMed Central, use the full text to verify the main claim, study design, sample size, and terminology before updating a publication summary or other scientific page. If PubMed Central is not available, use the journal article, the PubMed record, or the preprint server full text as the next-best source.

For publication front matter and citation strings, check PubMed for the citation details when a PubMed record exists. Use PubMed to confirm the title, author list, journal, year, volume, issue, pages, DOI, PMID, and PMCID before updating or adding a publication entry.

## Naming conventions

Use filenames and slugs that match the actual content. The slug and the contents should have a general match. Avoid generic or leftover template names from upstream AcademicPages such as `2009-10-01-paper-title-number-1.md` or `conference-paper.pdf` when the page is about something else.

Publication slugs on this site are the canonical slugs that other sites are expected to mirror. Choose a short, descriptive slug that will remain stable over time, and avoid embedding the venue or version in the slug when a generic project name will do. For example, prefer `ipgs` over `inclusivity-paper-ajhg`.

When a publication has a corresponding entry on the Tanigawa Lab website or any other downstream site, the slug here is the source of truth. Update the slug here only when there is a strong reason, since downstream pages and external links may depend on the existing URL.

For blog posts, use the AcademicPages convention `_posts/<yyyy-mm-dd>-<slug>.md` and set the `permalink` to `/posts/<yyyy>/<mm>/<slug>` to match the existing URL pattern.

Avoid visuals with unwanted historical or social connotations when a neutral alternative is available. For example, do not use a bell-curve graphic for human genetics or disease-risk content because of the association with the 1994 book *The Bell Curve* and its reputation.

## Writing guidance

Use one paragraph for one message. The first sentence of the paragraph should communicate the main point. The remaining sentences should support or expand that point.

Avoid zig-zag structure. Do not organize a paragraph around "X, not Y" framing when a direct positive statement will do the job better. Move forward in a straight line from the main idea to the supporting details.

Prefer a sequence of simple sentences over one long sentence. Break complex thoughts into two or more sentences when that improves clarity. Avoid em dashes. They often hide structure that should be made explicit with a period.

Cut low-information copy aggressively. Remove filler, repeated setup, and section text that does not add meaning beyond the heading. If a sentence does not add substance, delete it rather than softening it.

For publication summaries, lead with the main contribution or result. Prefer short summaries that say what was developed, identified, or shown, rather than broad scene-setting or journal-style preambles. The `excerpt` field in the front matter is what readers see in the publications list, so make it specific.

For news entries on the home page, lead with the date, then a short label such as `**New Preprint**` or `**New Publication**`, then a one-sentence summary of what the paper does. Link the title to the corresponding publication page on this site.

Prefer specific statements over vague claims. Replace phrases such as "we develop approaches" with concrete descriptions of what is being investigated, modeled, or connected.

When attributing a paper led by a collaborator or trainee, name the lead author in the summary so the credit is clear. For example, "In this study, led by Xiaohe (Lucy) Tian, we showed that ..."

## Editing checklist

Before publishing content changes, check the following:

- Facts, numbers, names, and citations are correct
- Scientific claims are accurate and appropriately qualified
- Scientific claims have been checked against trusted primary sources such as PubMed Central when available
- Publication front matter and citation strings have been checked against PubMed when a PubMed record exists
- Filenames, slugs, and `permalink` values follow the conventions in `docs/publications.md`
- Internal links to other pages on this site use site-relative paths such as `/publication/<slug>` rather than the full `https://yosuketanigawa.com/...` URL
- Language is accessible to a broad academic audience
- Paragraphs stay focused on one main message
- Sentences are short, direct, and easy to scan
- Local preview with `bundle exec jekyll serve` builds successfully and the changed pages render as expected
