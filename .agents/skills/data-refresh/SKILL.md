---
name: data-refresh
description: Bring the whole project up to date after data/data_uncertain_topoplots.csv is replaced with a new survey export - validate the export, code new open-ended A305 feedback, update category normalization, re-render every website page and figure, and update hard-coded numbers in prose and the manuscript. Use when the user says the data was updated, new participants arrived, or asks to refresh/re-render everything.
---

# Data refresh

Goal: after a new LimeSurvey export replaces `data/data_uncertain_topoplots.csv`
(UTF-16LE, `;`-separated), every derived artifact must reflect it, and
nothing derived from the old data may silently survive. Read the project
`AGENTS.md` first.

Work in order. Each step has an exit condition; do not continue past a failed
one.

## 1. Validate the export

```sh
Rscript scripts/check_data_refresh.R
```

(On Windows: `& "C:\Program Files\R\R-4.6.1\bin\Rscript.exe" scripts/check_data_refresh.R`.)

- Record the old and new analytic N (`git show HEAD:docs/pages/sample.html` or
  the previous render shows the old one).
- **Participant `ID` is a row position** (`row_number()` after the date and
  `TIME051` filters in `scripts/analysis_setup.R`). The A305 workbook is keyed
  by this ID. If the check reports meaning units that do not match their
  participant, **stop and report** which rows are affected and which
  participant actually wrote the text. Never re-key or edit existing coded
  rows without the user's explicit approval. An approved correction is
  written into the workbook itself (no separate corrections file), with every
  affected row shown before/after and the change recorded in the commit
  message and the relevant `reports/` audit entry.
- If N decreased, or previously coded IDs vanished, stop and ask: the export
  may have been filtered or reordered.

Exit: no blocking problems.

## 2. Normalize free-text categories

The check lists free-text country (`A004s`) and software (`A006_27a`) entries.

- Add new country spellings to the `case_when()` in the "Country of work"
  chunk of `pages/sample.qmd`, and to the `map_region` mapping in the
  `country-count-map` chunk when `maps::world` uses a different name (the
  chunk stops with "Countries missing from the map" otherwise).
- Non-countries (occupations, "Prefer not to say") map to `NA`.
- Check `countrycode` continent assignment warnings in the render log.

Exit: every free-text value is either mapped or deliberately `NA`.

## 3. Code new open-ended feedback (A305)

Follow `data/a305_content_analysis_prompt.md` exactly: fixed visualization
labels, fixed 13-theme codebook, intensity -2..+2, participant wording kept
verbatim (typo corrections only), one row per meaning unit. `Meaning unit` is
stored as `("excerpt")` with straight quotes and apostrophes only (no curly
quotes).

1. Take the responses listed under "Uncoded A305 responses" by the check.
2. Draft the meaning units. Non-substantive responses ("N/A", "-", thanks
   without evaluation) are not coded; add them to `data/a305_excluded_ids.csv`
   (`ID,reason`; create the file with that header if missing).
3. **Show the proposed rows and exclusions to the user and wait for
   approval** - coding is interpretive research data.
4. After approval, write a new script `scripts/append_a305_ids_<first>_<last>.R`
   modeled on `scripts/append_a305_new_participants.R` (tribble of rows,
   `stopifnot` guards on columns, unknown IDs, codebook values; appends below
   existing rows; never rewrites them) and run it.
5. Re-run `scripts/check_data_refresh.R`.

Exit: zero uncoded responses and no blocking problems.

A306 (general feedback) is shown verbatim on the feedback page and needs no
coding.

## 4. Re-render

Run from the project root, in this order:

```sh
quarto render pages/sample.qmd -P export_artifacts:true
quarto render
```

- The first command regenerates the participant-characteristics PNGs that
  `pages/figures.qmd` embeds; a plain render leaves them stale.
- Chunk caches are keyed on the MD5 of the CSV, `scripts/analysis_setup.R` and
  (feedback page) the A305 workbook, so they invalidate automatically. If a
  page still shows old numbers, delete that page's `pages/<page>_cache/` and
  re-render it.
- Task 1, Task 2, subjective and feedback pages rewrite their PNGs in
  `figures/` on every render; the feedback page also re-exports
  `data/feedback_A305.pdf` and `data/feedback_A306.pdf`.
- Mixed models can change convergence behaviour with new data. Search the
  render output for `convergence`, `singular`, `Warning`, `Error`.

Exit: render succeeds; every PNG in `figures/` used by `pages/figures.qmd` has
a fresh modification time (except `example_topoplots.gif` and the task example
PDFs, which are stimuli).

## 5. Verify outputs

- Open the regenerated figures (`figures/*.png`) and look at them: legends,
  "Other" groupings (country < 2%, software < 4%), the country map bins
  (1, 2-3, 4-6, 7-12, 13+; adjust if the largest country no longer fits the
  scale well and tell the user), axis ranges in the comparison-accuracy
  figures.
- Compare headline results before vs after (N, model estimates and contrasts
  relative to Basic, significance colouring). Report any contrast whose
  direction or significance changed.
- Privacy: `docs/` must not contain the raw CSV or feedback PDFs
  (`git status docs/` - only HTML, images, site libs).

## 6. Update hard-coded numbers

The check's "Hard-coded sample sizes" section lists prose still containing the
old N. Prefer replacing numbers in `.qmd` files with inline `` `r ...` `` code.

- `The Art of Uncertain Topoplots/journal.typ`, Participants section: total N
  and the country-of-work denominator and exclusions (take them from the
  rendered Sample page). Compile only with `scripts/compile-journal.ps1`.
- `README.md` if it mentions N.
- `reports/` are dated audit records: do not rewrite them; mention in the
  summary that their N is historical.
- If results the manuscript reports changed, list the affected sentences for
  the user rather than rewriting interpretation.

## 7. Report

Give the user: old -> new N; countries/software mappings added; A305 rows
added and IDs excluded; render warnings; changed results; files edited. Do not
commit unless asked.
