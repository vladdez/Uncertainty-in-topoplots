---
name: figure-review
description: Review new or existing scientific figures against Claus Wilke's Fundamentals of Data Visualization, producing an evidence-cited and prioritized change proposal before any edits. Use for manuscript, presentation, or analysis figures and their generating code; do not use for unrelated graphic design.
---

# Figure Review

Review first and edit only after a separate, explicit approval of the proposed changes.

## Review

1. Inspect the figure and, when available, its caption, surrounding argument, data, and generating code. Identify:
   - figure type and visual encodings;
   - analytical or communicative purpose;
   - intended takeaway and audience.
   State uncertain inferences as assumptions rather than silently inventing intent.
2. Retrieve only relevant Wilke material from `The Art of Uncertain Topoplots/llm-wiki/`:
   - check `catalog/status.md`;
   - use `summaries/wilke2019fundamentals.md` to confirm relevance;
   - use `index/wilke2019fundamentals.md` for passage routing;
   - search and open only the necessary anchors in `raw/wilke2019fundamentals.md`.
   Cite each principle with a raw passage link such as `The Art of Uncertain Topoplots/llm-wiki/raw/wilke2019fundamentals.md#pNNN-bNNN`. Use the archived PDF when a figure, table, typography, or extraction layout matters.
3. Diagnose problems relative to the intended message, not personal taste. Consider perceptual hierarchy, encoding choice, scales, color, labeling, uncertainty, comparisons, accessibility, and unnecessary visual load only where relevant.
4. Present numbered improvements in priority order. For each, give the rationale, expected benefit, Wilke evidence, and one classification:
   - **Cosmetic:** presentation-only changes that preserve data, statistical treatment, encodings, scales, ordering, and substantive interpretation.
   - **Structural/scientific:** changes to chart type, visual encoding, scale or limits, transformations, ordering, aggregation, binning, smoothing, normalization, uncertainty, data inclusion, or anything that could change interpretation.

Use a compact review structure: figure intent, relevant Wilke principles, prioritized diagnosis, and proposed changes. Note strengths when they affect what should be preserved.

## Approval gate

After presenting the numbered proposal, stop and ask which changes are approved. Do not modify a figure, source file, data, code, caption, or generated artifact before that approval. An initial request to “fix,” “improve,” or “redesign” a figure is not approval of proposals that have not yet been presented.

If approval is ambiguous, ask one concise question. Treat approval of cosmetic changes as permission only for the specifically approved items; it does not authorize structural or scientific changes.

## Implement approved changes

After explicit approval:

- implement only the approved numbered items;
- preserve every unapproved element and avoid opportunistic cleanup;
- do not alter source data or statistical calculations unless the approved item explicitly requires it;
- rerender or otherwise verify the result when possible;
- compare the result against the approved list and report what changed, what was preserved, and any item that could not be completed.

For a new figure, apply the same gate: propose the design and its evidence first, then create it only after approval.
