---
source_id: "wilke2019fundamentals"
chapter: 27
title: "Understanding the Most Commonly Used Image File Formats"
printed_pages: "319–324"
pdf_pages: "336–341"
---

# Chapter 27: Understanding the Most Commonly Used Image File Formats

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p336-b001)

**Scope:** Explains vector/raster tradeoffs, compression artifacts, and preservation of master-quality figure files.

**Search terms:** `vector`, `raster`, `PDF`, `PNG`, `JPEG`, `compression`, `resolution`

## Section map

- **Bitmap and Vector Graphics** — printed p. 319; [raw page](../../raw/wilke2019fundamentals.md#p336-b003)
- **Lossless and Lossy Compression of Bitmap Graphics** — printed p. 321; [raw page](../../raw/wilke2019fundamentals.md#p338-b002)
- **Converting Between Image Formats** — printed p. 324; [raw page](../../raw/wilke2019fundamentals.md#p341-b001)

## Actionable principles

<a id="principle-27-match-format-to-content"></a>

### Match vector or bitmap storage to figure complexity

**Problem addressed:** Raster figures pixelate when enlarged, while huge vector scenes can render slowly and suffer font substitution.

**Recommended solution:** Use vector output for ordinary plots and line art; consider high-resolution raster output for extremely dense graphics and embed or outline fonts when needed.

**Why it works:** Vectors preserve geometric sharpness at arbitrary scale, while rasterizing a dense scene bounds file/rendering cost.

**Applies when:** Figure export and manuscript production.

**Exceptions and qualifications:** Bitmaps reproduce identically across systems; vectors depend on rendering software and available fonts.

**Book example:** Figure 27-1 magnifies the same image as bitmap and vector to show pixelation versus scale independence.

**Search terms:** `vector`, `bitmap`, `font embedding`, `dense scatterplot`

**Evidence:** passages [p336-b003](../../raw/wilke2019fundamentals.md#p336-b003), [p337-b004](../../raw/wilke2019fundamentals.md#p337-b004), [p338-b001](../../raw/wilke2019fundamentals.md#p338-b001); figures [Figure 27-1](../../raw/wilke2019fundamentals.md#p337-b003).

<a id="principle-27-avoid-jpeg-for-plots"></a>

### Avoid JPEG for plots, text, and screenshots

**Problem addressed:** Lossy compression creates visible or print-sensitive artifacts around sharp edges.

**Recommended solution:** Use PNG or TIFF for bitmap data visualizations and reserve JPEG for photographic images.

**Why it works:** JPEG is optimized for photographic gradients, not line art or text; lossless formats preserve exact pixels.

**Applies when:** Raster export of scientific figures.

**Exceptions and qualifications:** JPEG is suitable for photographs; mixed photo-and-text images should still use PNG or TIFF when quality matters.

**Book example:** Figure 27-2 shows increasing JPEG artifacts as compression rises.

**Search terms:** `JPEG`, `PNG`, `TIFF`, `compression artifact`, `text`

**Evidence:** passages [p338-b002](../../raw/wilke2019fundamentals.md#p338-b002), [p339-b001](../../raw/wilke2019fundamentals.md#p339-b001); figures [Figure 27-2](../../raw/wilke2019fundamentals.md#p340-b001).

<a id="principle-27-preserve-master-format"></a>

### Preserve a maximum-quality master and convert downward

**Problem addressed:** Format conversion cannot restore vector structure, resolution, or detail already lost.

**Recommended solution:** Keep an original PDF/vector or high-resolution lossless bitmap, then downscale or convert copies for delivery.

**Why it works:** Information loss is one-way: wrapping JPEG in PDF or converting JPEG to PNG does not undo rasterization or artifacts.

**Applies when:** Archiving and reproducible publishing workflows.

**Exceptions and qualifications:** Use the best available source when an original lossless/vector asset does not exist.

**Book example:** The chapter's conversion discussion contrasts vector-to-bitmap loss with superficial container changes.

**Search terms:** `master file`, `conversion`, `resolution`, `lossless archive`

**Evidence:** passages [p341-b001](../../raw/wilke2019fundamentals.md#p341-b001); figures [Figure 27-1](../../raw/wilke2019fundamentals.md#p337-b003).


## Source boundary

Printed pages 319–324; PDF pages 336–341. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
