---
title: "Unresolved"
subtitle: "Open issues in the analysis (N = 146), most severe first"
---

::: {.callout-note}
## Status, 18 November 2026

U3–U15 were worked through on 18 November 2026. Eleven are fixed ([F10–F20](fixed.md); U9 was later split into F15 and [F22](fixed.md#f22)).
Two still need something that code cannot do: a human second coder (U12, now
[A5](addressed.md#a5)) and a decision on the Task 2 scoring construct (U7, now
[A4](addressed.md#a4)). U16 came up while fixing the others; U17 (glmmTMB build) is fixed as
[F21](fixed.md#f21). U18–U23 come from an independent re-audit of all pages later the
same day. That re-audit also confirmed the 18 November fixes as correct: E[y], Dunnett
intervals, the time cap, the rating checks, the quality flags and the feedback
corrections. Figure issues are listed separately under [Figures vs Wilke](figures-wilke.md).
:::

| | Issue | Area |
|--|------------------|----|
| [Moderate]{.badge .sev-moderate} | [U18. Hit-rate probabilities are for a "typical" image, not expected rates](#u18) | Hit or miss, Task 2 |
| [Moderate]{.badge .sev-moderate} | [U19. Hit or miss page skips the Dunnett rule](#u19) | Hit or miss, Task 2 |
| [Low]{.badge .sev-low} | [U16. Two MMN targets are hard to tell from N170](#u16) | Task 1, manuscript |
| [Low]{.badge .sev-low} | [U20. "Reached the last page" is wrong](#u20) | Sample, data |
| [Low]{.badge .sev-low} | [U21. Rating models: test ignores clustering; estimates are conditional](#u21) | Ratings |
| [Low]{.badge .sev-low} | [U22. Cache and duplicate-filter hazards](#u22) | Ratings, Task 2 |
| [Low]{.badge .sev-low} | [U23. Unguarded prose, stale labels, typos](#u23) | Task 1, Task 2, Time |

: {.findings-table}

## U16. Two MMN targets are hard to tell from N170 {#u16}

::: {.finding-meta .sev-low}
**Severity:** Low · **Area:** Task 1 stimuli, manuscript
:::

**Problem.** The below-chance items from F20 are not mis-keyed: every trial passes the
answer-key check. MMN_19 (41.6% correct as target) and MMN_29 (45.5%) fail only
against N170 distractors (15.5% and 20.5% correct), not against P3 distractors. Both are
weak maps (±1.5 and ±1.7 µV) with lateral rather than posterior positivity, and some
N170 variations (N170_7, N170_12, N170_16) look like the MMN template. Across all MMN
targets, accuracy is 56.3% against N170 distractors and 85.8% against P3 distractors.

The hard items are spread evenly across visualizations, so they add noise rather than
bias. They stay in the primary analysis.

**Exploratory refit** (items chosen after seeing the data): dropping the two targets
moves the omnibus test from p = .056 to p = .028. The Bivariate corner and range odds
ratios become 0.64 and 0.65, with Dunnett-adjusted intervals still including 1
(adjusted p = .11 and .12).

**To decide.**

- Whether the manuscript mentions the exploratory refit.
- The Stimuli section should say that some single-subject MMN and N170 maps look alike.

## U18. Hit-rate probabilities are for a "typical" image, not expected rates {#u18}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Area:** `pages/hit_miss.qmd:199–251`; `pages/task2.qmd:1626–1657` (two-part table, "Probability of exact peak")
:::

**Problem.** `emmeans(type = "response")` on the binomial GLMMs sets all three random
intercepts to zero. Their SDs are large (participant 0.97, stimulus 1.35, image 0.81).
The table therefore shows the probability for a median participant and image, right
under the observed shares, and far below the expected rate. It also inflates relative
effects: Adjacent vs Basic is 13.0% vs 5.7% conditional but 22.3% vs 13.3% marginal.
This is the problem fixed for the Task 2 score in [F13](fixed.md#f13), still present in
the hit models.

| Basic topoplot | Table (RE = 0) | Marginal | Observed |
|---|---|---|---|
| Exact hit | 5% [3, 11] | 13.3% | 15.1% |
| Hit or near hit | 26% | 35.3% | 38.4% |

**Fix.** Report marginal probabilities by integrating over the summed random-intercept
variance, as Task 2 does for E[y]. Show the conditional values second, or drop them.
See Gelman, Hill & Vehtari (2020), §14.4, on predictions evaluated at a central value.

## U19. Hit or miss page skips the Dunnett rule {#u19}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Area:** `pages/hit_miss.qmd:205–215` (`adjust = "none"`), :229 and :265 (p < .05 shown in red); `pages/time.qmd:387–390`; [A1](addressed.md#a1), [A2](addressed.md#a2)
:::

**Problem.**

- The Hit or miss page uses unadjusted contrasts and colours p < .05 red, although
  [F14](fixed.md#f14) made Dunnett against Basic the rule on every page.
- The Time page says the same family is used on all pages. F14's table does not list
  the Hit or miss page.

Refitted with `adjust = "mvt"`:

| Contrast with Basic | Unadjusted p (red on page) | Dunnett p |
|---|---|---|
| Hit, Adjacent plots | .006 | .028 |
| Hit, Confidence intervals | .046 | .184 |
| Hit or near hit, Uncertainty markers | .029 | .124 |
| Hit or near hit, Bivariate range | .032 | .136 |

The exact-hit model is the same as `task2_peak_hit_model`, but the two pages frame it
differently:

- **Task 2 page:** the agreement table says "Adjacent: exact peak only (more exact
  hits)", based on the Dunnett interval +0.92 [+0.07, +1.76].
- **Hit or miss page:** reports only the omnibus test (χ²(6) = 8.6, p = .20) and calls
  single contrasts exploratory.

**Fix.**

- Use `adjust = "mvt"` on the Hit or miss page, and state the adjustment in the callout
  caption.
- Add the omnibus p to the Task 2 two-part section.
- Update the unadjusted .006 and .046 quoted in A1 and A2. Only the Adjacent exact-hit
  contrast survives
  adjustment (p = .028).

## U20. "Reached the last page" is wrong {#u20}

::: {.finding-meta .sev-low}
**Severity:** Low · **Area:** `pages/sample.qmd:76–77`, header of `scripts/data_quality.R` (written during F19)
:::

**Problem.** The filter requires only TIME051, but the questionnaire runs to page 53:

- TIME052 is present for all 146 participants, TIME053 for only 93.
- FINISHED = 0 for 59 of 146, and LASTPAGE = 52 for 57 of them.

The wording contradicts [F3](fixed.md#f3) ("endpoint-complete, not formal
completions").

**Fix.** Say: "reached page 51, after all outcome pages; 59 of 146 did not reach the
final page or are not flagged as finished."

## U21. Rating models: test ignores clustering; estimates are conditional {#u21}

::: {.finding-meta .sev-low}
**Severity:** Low · **Area:** `pages/subjective.qmd:258–270`, :321–327
:::

**Problem.**

- The proportional-odds test uses fixed-effects `clm`, which treats each participant's 7
  ratings per item as independent. Its p values (< .001 to .011) are therefore too
  small, so "rejects proportional odds for 4 of 4" is overstated. The conclusion (do not
  interpret odds ratios) is conservative and still holds.
- `mean.class` from `clmm` is evaluated at a participant effect of 0. It is not a
  population average; it is close to the raw means (≤ 0.08) here only empirically.

**Fix.**

- Say that the test ignores clustering, so its p values are approximate.
- Label the estimates "expected rating, typical participant".

See Gelman, Hill & Vehtari (2020), §15.5.

## U22. Cache and duplicate-filter hazards {#u22}

::: {.finding-meta .sev-low}
**Severity:** Low · **Area:** `pages/subjective.qmd:848–884`; `scripts/prepare_task2_region_plot_data.R:103–108`
:::

**Problem.**

- **Stale cache.** The cached `likert-quality-sensitivity` chunk sources
  `scripts/data_quality.R`, but that file is not in `cache.extra`. Editing the flag
  rules would update the Sample page and silently leave the Subjective sensitivity
  stale.
- **Second sample definition.** `prepare_task2_region_plot_data.R` copies the
  inclusion filters instead of sourcing `analysis_setup.R`, so the two definitions can
  drift apart.

**Fix.**

- Pass `project_path("scripts", "data_quality.R")` to `configure_analysis_cache()` on
  the Subjective page.
- Make the prepare script source the shared setup.

## U23. Unguarded prose, stale labels, typos {#u23}

::: {.finding-meta .sev-low}
**Severity:** Low · **Area:** Task 1, Task 2, Time pages
:::

- **`task1.qmd:58–61`:** "No responses were excluded … all 3,066 records" is hard-coded,
  while `task1_trials.R` drops NA rows silently. It is true today. Add a `stopifnot()`.
- **`task2.qmd:434`:** the gradient figure (also `figures/task2_gradient_figure.png`) is
  still titled "Detection task accuracy", and it is ordered by median while it shows
  means (see [V9](figures-wilke.md#v9)).
- **Typos on the public site:**
  - "becausewe" (`task1.qmd:528`);
  - "participan" (`task2.qmd:35`);
  - "This calcaulation is actually more complicated." (`task2.qmd:42`); the sentence
    needs rewriting, not only spelling.
- **`time.qmd`:**
  - it uses `dunnettx` (an approximation), where other pages use `mvt`;
  - the IQR sensitivity fit has fewer than 3,000 trials, so `emmeans` switches to
    Kenward–Roger df, while the note says "asymptotic".
