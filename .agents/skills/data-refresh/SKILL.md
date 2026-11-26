---
name: data-refresh
description: Bring the whole project up to date after data/data_uncertain_topoplots.csv is replaced with a new survey export - re-create the de-identified copy, validate the export, code new open-ended A305 feedback, update category normalization, re-render every website page and figure, and update hard-coded numbers in prose and the manuscript. Use when the user says the data was updated, new participants arrived, or asks to refresh/re-render everything.
---

# Data refresh

Goal: after a new SoSci Survey export replaces `data/data_uncertain_topoplots.csv`
(UTF-16LE, `;`-separated; private, git-ignored), every derived artifact must
reflect it, and nothing derived from the old data may silently survive. Read
the project `AGENTS.md` first.

The analysis never reads the private export directly. It reads the
de-identified copy `data/data_uncertain_topoplots_deidentified.csv` (tracked,
public), which `scripts/deidentify_survey.R` writes from the export: same rows,
columns and order; SERIAL/REF/MAILSENT blanked; STARTED/LASTDATA reduced to
the date; email addresses replaced with `[email removed]`.

Work in order. Each step has an exit condition; do not continue past a failed
one.

## 1. Re-create the de-identified copy and validate the export

**Always run this first, after every new export:**

```sh
Rscript scripts/deidentify_survey.R
Rscript scripts/check_data_refresh.R
```

- `deidentify_survey.R` stops if the copy does not read back identically or
  if an email address survived. Report how many emails it redacted.
- `check_data_refresh.R` stops if the copy is out of date with the export.
- Before committing, look at `git diff --stat` for the de-identified copy and
  skim the new rows for personal data the automatic rules do not catch (names,
  phone numbers, institutions with a person's name, URLs to personal pages in
  free-text answers such as A004s, A006_27a, A305_01, A306_01). If you find
  any, **stop and report** the column and participant ID (do not print the
  value); the user decides whether to extend the rules in
  `scripts/deidentify_survey.R`.
- Never commit, copy or print the private export itself.

(On Windows: `& "C:\Program Files\R\R-4.6.1\bin\Rscript.exe" scripts/check_data_refresh.R`.)

- Record the old and new analytic N (`git show HEAD:docs/pages/sample.html` or
  the previous render shows the old one).
- **Participant `ID` is a row position** (`row_number()` after the date and
  `TIME051` filters in `scripts/analysis_setup.R`), so it can shift between
  exports. The A305 workbook and `data/a305_excluded_ids.csv` are therefore
  keyed on SoSci Survey's `CASE` number (kept in `data$CASE`; audit A3,
  24 Nov 2026); pages look up the `ID` from `CASE`. If the check reports
  meaning units that do not match their participant, **stop and report**
  which rows are affected (CASE and ID) and which participant actually wrote
  the text. Never re-key or edit existing coded
  rows without the user's explicit approval. An approved correction is
  written into the workbook itself (no separate corrections file), with every
  affected row shown before/after and the change recorded in the commit
  message and the relevant `reports/` audit entry.
- If N decreased, or previously coded CASE numbers vanished from the sample,
  stop and ask: the export may have been filtered differently.

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
   (`CASE,reason`; create the file with that header if missing).
3. **Show the proposed rows and exclusions to the user and wait for
   approval** - coding is interpretive research data. Show both the
   participant ID and the CASE number.
4. After approval, write a new script `scripts/append_a305_ids_<first>_<last>.R`
   (named by participant ID) modeled on `scripts/append_a305_ids_150_150.R`:
   a tribble keyed on `CASE`, `stopifnot` guards on columns, CASE numbers
   outside the analytic sample, codebook values and straight quotes; appends
   below existing rows; never rewrites them. Run it. (Scripts written before
   24 Nov 2026 are ID-keyed and marked historical; do not model on them.)
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
  `pages/summary.qmd` embeds; a plain render leaves them stale.
- Chunk caches are keyed on the MD5 of the CSV, `scripts/analysis_setup.R` and
  (feedback page) the A305 workbook, so they invalidate automatically. If a
  page still shows old numbers, delete that page's `pages/<page>_cache/` and
  re-render it.
- Task 1, Task 2, subjective and feedback pages rewrite their PNGs in
  `figures/` on every render; the feedback page also re-exports
  `data/feedback_A305.pdf` and `data/feedback_A306.pdf`.
- Mixed models can change convergence behaviour with new data. Search the
  render output for `convergence`, `singular`, `Warning`, `Error`.

Exit: render succeeds; every PNG in `figures/` used by `pages/summary.qmd` has
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
- Privacy: `docs/` must not contain the raw CSV, the de-identified CSV or feedback PDFs
  (`git status docs/` - only HTML, images, site libs).

## 6. Update hard-coded numbers

The check's "Hard-coded sample sizes" section lists prose still containing the
old N. Prefer replacing numbers in `.qmd` files with inline `` `r ...` `` code.

- **Manuscript and supplement numbers are not typed.** `journal.typ` and
  `supplement.typ` read `The Art of Uncertain Topoplots/numbers.json`, which the
  Sample, Quality control, Subjective and Task 1 pages rewrite when they render
  (`write_manuscript_numbers()` in `scripts/analysis_setup.R`). After the
  re-render, check that `numbers.json` changed as expected and recompile:
  `supplement.typ` with `typst compile`, `journal.typ` only with
  `scripts/compile-journal.ps1`. Both stop with an error if the sections come
  from different samples, and the Task 1 page stops if the below-chance
  targets are no longer MMN_19 and MMN_29 (the supplement's description of
  those images would then need rewriting). New manuscript numbers go into
  `numbers.json` the same way, not into the `.typ` text.
- The cross-references "Section 1.1", "Section 1.1.2", "Table S4" and
  "Table S5" in `journal.typ` are typed: check them if the supplement changes.
- `README.md` if it mentions N.
- `reports/` are dated audit records: do not rewrite them; mention in the
  summary that their N is historical.
- If results the manuscript reports changed, list the affected sentences for
  the user rather than rewriting interpretation.

## 7. Report

Give the user: old -> new N; countries/software mappings added; A305 rows
added and IDs excluded; render warnings; changed results; files edited. Do not
commit unless asked.
