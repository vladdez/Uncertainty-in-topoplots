# Statistical analysis audit: summary

**Audit date:** 27 October 2026  
**Last updated:** 28 October 2026  
**Scope:** R/Quarto implementation, methodological fit, and readiness for manuscript interpretation  
**Detailed evidence:** [statistical-audit-detailed.md](statistical-audit-detailed.md)

## Overall assessment

The analysis is not yet ready for manuscript-level interpretation. The audit
found one critical coding defect and several important modeling and reporting
issues. The critical A304 labeling defect has since been corrected and
validated. The principal Task 2 participant–stimulus structure has also been
implemented; several methodological findings remain open.

This does not mean that all current conclusions are wrong. It means that the
uncertainty intervals and inferential scope do not yet fully reflect the
repeated participant, stimulus, and item structure of the experiment, and that
several analytic choices need to be defined before results are used in the
manuscript.

## Findings at a glance

| Priority | Finding | Current status |
|---|---|---|
| Critical | Five A304 aesthetic-rating conditions were mislabeled | **Resolved in code; outputs regenerated** |
| High | Task 2 omitted stimulus, pattern, and presentation-position structure | **Primary structure implemented; slope and diagnostic checks remain** |
| High | Task 1 omits repeated comparison-item structure | Open |
| High, conditional | The analytic sample does not use the formal survey completion marker | **Resolved: all 114 endpoint-complete respondents retained** |
| Moderate | Descriptive and modeled time analyses use inconsistent outlier populations | Open |
| Moderate | Model-adequacy diagnostics are not implemented | Open |
| Moderate | Multiplicity families and confirmatory contrasts are not consistently defined | Open |
| Moderate | Subjective models include only participant intercepts | Open |
| Moderate | “Sum of mean ratings” is an unvalidated equal-weight composite | Open |
| Moderate | Root `Analysis.qmd` was an obsolete, non-reproducible pilot workflow | **Resolved: obsolete file removed** |
| Low | Reduced sample-figure caption contradicted its category handling | **Resolved: country <2% and software <4% categories grouped into Other** |
| Low | Task 2 descriptive error bars do not represent a clearly defined estimand | Open |

## What should happen before manuscript interpretation

1. Define the inferential target: participants only, or participants and EEG
   stimuli/comparison items.
2. Refit Task 1 with a defensible crossed item structure and assess
   participant-specific visualization effects in both tasks.
3. Add model diagnostics and time-outlier sensitivity analyses.
4. Prespecify the primary outcomes, contrasts, and multiplicity families.
5. Decide whether the subjective composite has a theoretical justification; if
   not, remove it or label it exploratory.
6. Reconcile manuscript text, tables, and figures with the final
   model outputs.

## Important status update

The A304 defect is no longer open. The current mapping in
[`pages/subjective.qmd`](../pages/subjective.qmd) encodes the shared display
order while accounting for the final export's nonsequential A304 suffixes. It
also checks all 28 mappings against the embedded survey labels and stops if
they disagree.

The sample-definition finding is also resolved. The analytic sample is defined
as all 114 respondents who completed every primary endpoint; formal survey
submission status is not an additional inclusion requirement.

Task 2 now retains the existing pattern, stimulus, and presentation-position
variables. Its primary model adjusts for pattern and centered position and
uses crossed participant and stimulus intercepts; the original model remains
as a base sensitivity comparison.

