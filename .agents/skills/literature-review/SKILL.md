---
name: literature-review
description: Build rigorous, source-traceable scientific literature reviews from this project's llm-wiki, especially for uncertainty visualization and EEG topoplots. Use when identifying citable claims, comparing studies, synthesizing supporting or conflicting evidence, finding research gaps, or drafting or revising review text. Do not use for figure design review; use figure-review instead.
---

# Literature Review

Use `The Art of Uncertain Topoplots/llm-wiki/` as the evidence map. Read its `AGENTS.md` first and obey its source caveats.

## Workflow

1. Define the review question, population or domain, visualization or uncertainty construct, outcome, and boundaries. State any necessary scope assumption.
2. Retrieve progressively: `catalog/research-questions.md`, `catalog/claims.md`, or `topics/` → concise `summaries/` → `index/` → one relevant `matrices/` page or selected `evidence/` records → linked `raw/` passages. Never load whole papers by default.
3. Build the synthesis from claim-level records. Preserve research design, sample or corpus size, conditions, measures, numerical results, null findings, and limitations.
4. Verify every substantive statement in the linked raw passage. Inspect the archived PDF when citing a table, figure, equation, or text affected by extraction or layout. Treat `sanyal2009user` as PDF-verification-required.
5. Distinguish explicitly among empirical findings, authors' interpretations, methodological claims, theoretical arguments, and your own synthesis. Label inference and uncertainty; use “not reported” rather than guessing.
6. Compare evidence by research question. Explain why findings support, qualify, or conflict by checking differences in task, audience, encoding, data, and outcome. Do not pool incomparable percentages or imply consensus from heterogeneous studies.
7. Report research gaps conservatively. Absence from this archive means “not established in the reviewed collection,” not proof that no study exists.

## Output contract

- Cite precise wiki raw anchors such as `raw/correll2018task.md#p008-b002`; include table, figure, and PDF-page locators when relevant.
- Keep discovery summaries concise; put study detail in evidence tables or prose near the claim it supports.
- Identify whether each limitation is author-stated or a labeled scope or source-quality note.
- Provide a source-to-claim audit trail for drafted prose.
- Do not modify the manuscript unless the user explicitly asks. A request to review, synthesize, or propose text authorizes analysis and draft text only, not file edits.
- Do not modify figures or scientific code under this skill.

If the archive cannot support an important statement, say what is missing and recommend a targeted search or source addition rather than filling the gap from memory.
