# EEG topoplot practice, statistical foundations, and the uncertainty gap

[Evidence matrix](../matrices/eeg-topoplot-practice.md) · [Claim catalog](../catalog/claims.md)

## Research question

What evidence motivates uncertainty-aware EEG topoplots, and what is still unknown?

## Scope and synthesis boundary

This page links practice surveys, ERP benchmark/statistical methods, and scalp interpolation. It does not claim that any reviewed encoding has been validated specifically for uncertainty topoplots.

## Evidence map

- **`supports` — [The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices](../evidence/mikheev2024art.md#claim-mikheev-uncertainty-friction):** Direct evidence that adding uncertainty is a practical ERP-tooling problem.
- **`supports` — [The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices](../evidence/mikheev2024art.md#claim-mikheev-omission-awareness):** Shows omission and incomplete awareness among surveyed practitioners.
- **`qualifies` — [The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices](../evidence/mikheev2024art.md#claim-mikheev-topoplot-semantics):** Different interpretations of topoplot time series imply that uncertainty semantics must be explicit.
- **`context` — [ERP CORE: An Open Resource for Human Event-Related Potential Research](../evidence/kappenman2021erp.md#claim-kappenman-sem-shading):** Provides a concrete ERP convention for waveform uncertainty, while not solving spatial-map uncertainty.
- **`context` — [ERP CORE: An Open Resource for Human Event-Related Potential Research](../evidence/kappenman2021erp.md#claim-kappenman-noise-resource):** Supplies benchmark variability and noise that could support method testing.
- **`context` — [LIMO EEG: A Toolbox for Hierarchical LInear MOdeling of ElectroEncephaloGraphic Data](../evidence/pernet2011limo.md#claim-pernet-single-trial):** Shows that trial-level variability can be retained statistically before visualization.
- **`context` — [Spherical Splines for Scalp Potential and Current Density Mapping](../evidence/perrin1989spherical.md#claim-perrin-smoothing-ci):** Provides an early map-level smoothing and confidence-interval foundation.
- **`supports` — [Data Visualization in the Neurosciences: Overcoming the Curse of Dimensionality](../evidence/allen2012data.md#claim-allen-audit-uncertainty):** Broader neuroscience evidence that uncertainty is frequently omitted or unlabeled.

## Research gaps

- No archived study directly compares uncertainty encodings on EEG scalp topographies using perceptual or decision tasks.
- The literature does not establish whether viewers interpret uncertainty as measurement noise, between-participant variability, model uncertainty, interpolation uncertainty, or statistical confidence unless the display states it.
- Topoplot interpolation creates spatial smoothness between electrodes, but the reviewed user studies do not test how that smoothness interacts with an uncertainty overlay.
- No evidence matrix row establishes which encoding best preserves sign, magnitude, spatial pattern, and uncertainty simultaneously for EEG audiences.

## How to use this page

Open the matrix for side-by-side methods and quantitative details. Then open the claim record and verify the linked raw passage before citing. Relations such as `mixed`, `qualifies`, or `challenges_integration` are synthesis labels, not labels used by the original authors.
