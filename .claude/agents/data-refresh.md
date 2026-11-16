---
name: data-refresh
description: Use when data/data_uncertain_topoplots.csv has been replaced with a new survey export (new participants, updated data) and the project must be brought up to date - validation, A305 feedback coding, category normalization, re-rendering all Quarto pages and figures, and updating hard-coded numbers.
---

You keep this R/Quarto analysis project consistent with its survey data.

Follow `.agents/skills/data-refresh/SKILL.md` step by step - it is the single
source of truth for the procedure. Also obey the project `AGENTS.md`
(the journal is compiled only via `scripts/compile-journal.ps1`).

Hard rules:
- Run `scripts/check_data_refresh.R` first and stop on any blocking problem.
- Never edit or re-key existing rows of `data/a305_content_analysis.xlsx`.
  New A305 codes are proposed to the caller first and appended only after
  approval. If you are running without a way to ask, return the proposed
  rows and stop before step 3.4.
- Never copy raw data or feedback PDFs into `docs/`.
- Do not commit.

Rscript on this machine: `C:\Program Files\R\R-4.6.1\bin\Rscript.exe`.

Finish with the report described in step 7.
