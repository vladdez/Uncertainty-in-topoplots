# LLM literature wiki

This knowledge base covers all 44 PDFs and the collection README under `The Art of Uncertain Topoplots/papers/`, plus the Wilke and Gelman books in `llm-wiki/handbooks/` (46 indexed PDF records total). The paper source directory is immutable input. Full PDF text is preserved as page- and passage-addressable Markdown, while compact catalogs, summaries, and indexes support progressive retrieval.

## Retrieval path

Use the smallest layer that can answer the question:

1. **Catalog** — narrow by [topic](catalog/topics.md), [keyword](catalog/keywords.md), or [paper](catalog/papers.md).
2. **Summary** — open one or two files in `summaries/` to judge relevance.
3. **Index** — open the matching file in `index/` for metadata, a passage map, related papers, and a link to detailed evidence.
4. **Evidence** — open one file in `evidence/`, or a relevant topic and evidence matrix, for research questions, methods, samples, conditions, typed claims, quantitative results, conclusions, and limitations.
5. **Raw passages** — follow only the cited anchors in `raw/`; inspect the original PDF when a table, figure, equation, or extraction ambiguity matters.

For discovery by research question, start with [research questions](catalog/research-questions.md), [claims](catalog/claims.md), or a page in `topics/`. The matching page in `matrices/` compares methods, samples, evidence, and limitations without replacing source verification.

For figure review against Wilke, start with the compact [actionable-principle catalog](catalog/wilke-principles.md), open one [chapter index](index/wilke2019fundamentals/README.md), and then follow its exact passage and figure-caption links. This keeps the full 388-page extraction out of context.

For statistical audits against Gelman, start with the [Gelman chapter index](index/gelman2020regression/README.md), open only the relevant chapter entry, and follow its selected links to the 552-page raw extraction.

For personal reading rather than agent retrieval, use the column-based [Wilke principle guide](handbooks/wilke2019fundamentals-readable.md).

Before relying on curated prose, check [curation status](catalog/status.md). See [AGENTS.md](AGENTS.md) for operational instructions.

## Layout

| Path | Purpose | Generated? |
| --- | --- | --- |
| `catalog/papers.md` | One-row-per-paper overview | Yes |
| `catalog/topics.md` | Global controlled-topic catalog | Yes |
| `catalog/keywords.md` | Alphabetical search-term catalog | Yes |
| `catalog/status.md` | Source-hash/curation freshness | Yes |
| `catalog/research-questions.md` | One-row-per-paper research-question finder | Yes, from evidence metadata |
| `catalog/claims.md` | Searchable catalog of typed, citable claims | Yes, from evidence metadata |
| `catalog/wilke-principles.md` | Searchable catalog of Wilke design principles | Yes, from dedicated metadata |
| `handbooks/wilke2019fundamentals-readable.md` | Human-readable, column-based guide to every curated Wilke principle | Yes, from dedicated metadata |
| `summaries/<id>.md` | Concise relevance and findings summary | Yes, from curated metadata |
| `index/<id>.md` | Metadata, exact source links, passage map, semantic links | Yes, from curated metadata |
| `evidence/<id>.md` | Detailed methods and typed claim-level evidence record | Yes, from evidence metadata |
| `topics/<slug>.md` | Cross-paper synthesis by literature-review question | Yes, from synthesis metadata |
| `matrices/<slug>.md` | Side-by-side evidence, samples, results, and limitations | Yes, from synthesis metadata |
| `claim-audits/<table>.md` | Authored manuscript-table claim audit linked to project evidence and raw passages | No; edit this |
| `index/wilke2019fundamentals/` | Hub plus 29 detailed chapter indexes | Yes, from dedicated metadata |
| `index/gelman2020regression/` | Chapter-level statistical-methods retrieval index | Yes, from dedicated metadata |
| `raw/<id>.md` | Full extracted text with `page-NNN` and `pNNN-bNNN` anchors | Yes, from source files |
| `raw/README.md` | Line-addressable preservation of the source collection README | Yes |
| `metadata/papers.json` | Human-curated claims, topics, keywords, and relations | No; edit this |
| `metadata/evidence.json` | Human-curated study details, claim types, numbers, and exact source references | No; edit this |
| `metadata/syntheses.json` | Human-curated cross-paper relations and explicit research gaps | No; edit this |
| `handbooks/wilke2019fundamentals.json` | Source-backed Wilke chapter, principle, example, and figure references | No; edit this |
| `handbooks/gelman2020regression.json` | Source-backed Gelman chapter map and selected audit passages | No; edit this |
| `manifest.json` | Source hashes, sizes, counts, and extraction state | Yes |
| `tools/build_wiki.py` | Incremental builder and validator | No |
| `tools/review_extract.py` | Review helper for likely evidence passages | No |
| `tools/inspect_evidence.py` | Read-only candidate-passage ranking for curation | No |

## Stable references

Raw PDFs are split on PDF page boundaries. `#page-007` identifies the seventh PDF page; `#p007-b003` identifies the third extracted text block on that page. Anchors remain stable while the source SHA-256 and extraction format remain unchanged. Printed page numbers may differ from PDF page numbers.

PDF extraction can reorder multi-column text and cannot reliably preserve equations, tables, figures, or typography. Use the archived PDF whenever these details matter. `sanyal2009user.pdf` has a broken font map and its text extraction is largely garbled; its index explicitly warns about this. `gwdgVoiceAI.pdf` is a whole newsletter issue, with the relevant article localized in its index.

## Incremental updates

From the repository root:

```powershell
python "The Art of Uncertain Topoplots/llm-wiki/tools/build_wiki.py" build
python "The Art of Uncertain Topoplots/llm-wiki/tools/build_wiki.py" validate
```

The builder hashes every source and re-extracts only files whose hash or extraction-format version changed. A changed PDF retains `review_required` status until its curated metadata has been checked. After reviewing and updating `metadata/papers.json`, `metadata/evidence.json`, and any affected synthesis rows, acknowledge that exact source version with:

```powershell
python "The Art of Uncertain Topoplots/llm-wiki/tools/build_wiki.py" mark-reviewed PAPER_ID
python "The Art of Uncertain Topoplots/llm-wiki/tools/build_wiki.py" build
python "The Art of Uncertain Topoplots/llm-wiki/tools/build_wiki.py" validate
```

For a new PDF, add matching records to `metadata/papers.json` and `metadata/evidence.json`; the builder deliberately fails if IDs differ. Claim IDs are globally unique. Evidence validation checks every cited raw anchor and verifies cited figure/table labels in their passage blocks. Wilke and Gelman deep metadata have additional chapter-level checks. Do not hand-edit generated catalog, summary, index, evidence, topic, matrix, raw, status, or manifest files.

## Scope and provenance

Bibliographic fields come from `The Art of Uncertain Topoplots/refs.bib` when available. Curated claims were derived only from the archived documents and point to supporting raw passages. The source collection README and manifest preserve acquisition context and exact hashes; the wiki does not claim that every bibliography entry has an archived PDF.
