---
source_id: "wilke2019fundamentals"
chapter: 26
title: "Don't Go 3D"
printed_pages: "305–318"
pdf_pages: "322–335"
---

# Chapter 26: Don't Go 3D

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p322-b001)

**Scope:** Rejects decorative and most static positional 3D, while retaining narrow uses for actual 3D objects and interactive/rotating views.

**Search terms:** `3D`, `perspective`, `depth cue`, `small multiples`, `interactive`

## Section map

- **Avoid Gratuitous 3D** — printed p. 305; [raw page](../../raw/wilke2019fundamentals.md#p322-b003)
- **Avoid 3D Position Scales** — printed p. 307; [raw page](../../raw/wilke2019fundamentals.md#p324-b002)
- **Appropriate Use of 3D Visualizations** — printed p. 313; [raw page](../../raw/wilke2019fundamentals.md#p330-b002)

## Actionable principles

<a id="principle-26-remove-gratuitous-3d"></a>

### Remove 3D that carries no data

**Problem addressed:** Perspective decoration changes apparent sizes and occludes marks without encoding another variable.

**Recommended solution:** Render pies, bars, and lines in ordinary 2D when the third dimension has no substantive role.

**Why it works:** Projection distorts front and back objects, and the visual system can only partially correct the distortion.

**Applies when:** Decorative 3D charts.

**Exceptions and qualifications:** None for gratuitous 3D; Wilke calls it unequivocally bad.

**Book example:** Figures 26-1 and 26-2 show angle-dependent pie slices and distorted Titanic stacked bars.

**Search terms:** `gratuitous 3D`, `perspective distortion`, `pie`, `bar chart`

**Evidence:** passages [p322-b003](../../raw/wilke2019fundamentals.md#p322-b003); figures [Figure 26-1](../../raw/wilke2019fundamentals.md#p323-b001), [Figure 26-2](../../raw/wilke2019fundamentals.md#p324-b001).

<a id="principle-26-use-2d-alternatives"></a>

### Prefer invertible 2D encodings to static 3D position

**Problem addressed:** A static 2D projection cannot uniquely reveal where points lie in 3D and depends on fragile depth cues.

**Recommended solution:** Use 2D projections, other visual channels, or small multiples.

**Why it works:** Mapping directly to 2D avoids a second noninvertible transformation from 3D scene to flat display.

**Applies when:** Multivariable scatterplots and grouped 3D bars.

**Exceptions and qualifications:** The objection is primarily to 3D shown on 2D displays; true 3D environments change the perceptual problem.

**Book example:** Figures 26-3 to 26-8 replace a 3D car scatterplot and mortality bars with 2D views and small multiples.

**Search terms:** `3D scatterplot`, `2D projection`, `small multiples`, `depth cues`

**Evidence:** passages [p326-b001](../../raw/wilke2019fundamentals.md#p326-b001), [p329-b003](../../raw/wilke2019fundamentals.md#p329-b003); figures [Figure 26-3](../../raw/wilke2019fundamentals.md#p325-b002), [Figure 26-8](../../raw/wilke2019fundamentals.md#p330-b001).

<a id="principle-26-3d-only-for-spatial-subject"></a>

### Use 3D when three-dimensional structure is itself the subject

**Problem addressed:** A blanket prohibition would exclude actual surfaces and objects whose form is intrinsically spatial.

**Recommended solution:** Use 3D for real 3D objects/data, preferably interactively, in VR/AR, or with slow rotation that supplies multiple viewpoints.

**Why it works:** Multiple views allow the brain to reconstruct spatial structure; a real 3D object makes the extra dimension semantically necessary.

**Applies when:** Topography, molecular structures, anatomy, and similar spatial subjects.

**Exceptions and qualifications:** Static views remain harder to interpret than interactive or rotating ones.

**Book example:** Figures 26-9 and 26-10 show Corsica relief and conservation mapped on a protein structure.

**Search terms:** `appropriate 3D`, `topography`, `molecular structure`, `rotation`, `interactive`

**Evidence:** passages [p330-b002](../../raw/wilke2019fundamentals.md#p330-b002); figures [Figure 26-9](../../raw/wilke2019fundamentals.md#p331-b002), [Figure 26-10](../../raw/wilke2019fundamentals.md#p332-b001).


## Source boundary

Printed pages 305–318; PDF pages 322–335. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
