# Retrieval instructions for Codex agents

These instructions apply throughout `llm-wiki/`.

## Progressive retrieval is mandatory

Do not begin by loading whole papers. Retrieve in this order and stop as soon as the evidence is sufficient:

1. Open `catalog/topics.md`, `catalog/keywords.md`, or `catalog/papers.md` to identify candidate papers.
2. Open only the candidate files in `summaries/`.
3. For the strongest candidates, open their files in `index/`.
4. For literature-review work, open the matching `evidence/<id>.md`. If comparing papers, first use one relevant page in `topics/` and its `matrices/` evidence matrix.
5. Follow only the selected claim's links to specific `raw/` passage anchors.
6. Load adjacent raw passages or the original PDF only when the linked passage lacks context or when a table, equation, figure, page layout, or extraction problem matters.

For a manuscript table audit, open the matching authored file under `claim-audits/`, then verify its entries through the linked project evidence records and raw anchors. Treat external links there as supplementary; the archived paper and stable raw passages remain the project evidence base.

For Wilke figure-design questions, use the narrower path: `catalog/wilke-principles.md` → one principle in `index/wilke2019fundamentals/chapter-NN.md` → its cited raw passages and figure captions → the archived PDF page only when visual inspection is necessary. Do not treat a principle record as primary evidence, and do not open multiple chapter files unless the review genuinely spans those topics.

For statistical audits, use `index/gelman2020regression/README.md` → the relevant chapter entry → selected `raw/gelman2020regression.md` anchors. Use Gelman for methodological checks, not as domain-specific evidence that an EEG model is appropriate.

Use `rg -n -i "term1|term2" "The Art of Uncertain Topoplots/llm-wiki/catalog" "The Art of Uncertain Topoplots/llm-wiki/summaries" "The Art of Uncertain Topoplots/llm-wiki/topics"` from the repository root to narrow candidates before searching evidence records or raw text. When searching raw text, constrain the command to selected paper IDs whenever possible.

## Evidence rules

- Treat summaries, indexes, evidence records, topic pages, and matrices as navigation aids, not primary evidence. Verify substantive claims against the linked raw passage.
- Preserve distinctions among a paper's reported result, an author's interpretation, and your own synthesis.
- Preserve denominators, conditions, uncertainty definitions, and negative or null results. Do not turn a task-specific result into a universal recommendation.
- A synthesis relation such as `supports`, `mixed`, or `qualifies` is the curator's comparison label, not language from the source paper.
- Keep limitation provenance intact: `authors` is source-stated; `wiki_scope_note` is a conservative scope assessment; `source_quality_note` describes archive or extraction quality.
- Do not infer a result from a title, keyword, related-paper link, or catalog blurb.
- If a claim is not supported by the archived text, say so. Do not fill gaps from memory.
- Cite a raw anchor such as `raw/correll2018task.md#p008-b002` when giving a precise evidence location. State that page numbers are PDF page numbers when ambiguity matters.
- For tables, equations, figures, or garbled/multi-column extraction, inspect the original PDF at the source path recorded in the index.
- Check `catalog/status.md` before relying on curated metadata. If a paper is `review_required`, use its raw extraction and re-review the curated record.
- `raw/README.md` preserves collection provenance and is not a research paper.

## Known source caveats

- `sanyal2009user`: broken PDF font mapping makes most extracted text unreadable. Use the rendered PDF for verification.
- `gwdgVoiceAI`: the PDF is a complete GWDG newsletter; the Voice-AI article occupies only part of it.
- `wilke2019fundamentals`: a full book. Search `catalog/wilke-principles.md`, then open the relevant file under `index/wilke2019fundamentals/`; never load the entire raw extraction by default. Each principle separates the problem, recommendation, rationale, applicability, exceptions, example, and evidence. Preserve those qualifications. If an `inference` field appears, report it as an inference rather than Wilke's recommendation.
- `gelman2020regression`: a full statistical-methods book. Begin with `index/gelman2020regression/README.md`; retrieve only chapters and passages relevant to the estimand, model, uncertainty, checking, or interpretation under audit.
- `greis2015investigating`: a full INTERACT proceedings volume; the indexed article is localized to PDF pages 286–293.
- Machine extraction may interleave columns or detach captions. A clean-looking passage is not proof that layout was preserved.

## Maintaining the wiki

The source directory `The Art of Uncertain Topoplots/papers/` is read-only input. Never modify it as part of wiki maintenance.

Edit only `metadata/papers.json`, `metadata/evidence.json`, `metadata/syntheses.json`, handbook metadata in `handbooks/`, and tool or documentation files. Regenerate derived content from the repository root:

```powershell
python "The Art of Uncertain Topoplots/llm-wiki/tools/build_wiki.py" build
python "The Art of Uncertain Topoplots/llm-wiki/tools/build_wiki.py" validate
```

When a source changes, review the affected raw text and both curated paper/evidence records, then run `mark-reviewed PAPER_ID`. A new PDF must have exactly one record with the same ID in both metadata files. Keep claims conservative; attach every claim to a supporting raw anchor; record missing quantities as not reported; and update synthesis matrices only where new evidence genuinely changes a comparison or gap.
