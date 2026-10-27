---
id: "petek2026general"
title: "A General Approach to Visualizing Uncertainty in Statistical Graphics"
year: "2026"
topics: ["uncertainty visualization", "statistical graphics", "software tools"]
---

# A General Approach to Visualizing Uncertainty in Statistical Graphics

**Citation:** Petek, Bernarda and Nabergoj, David and Štrumbelj, Erik (2026)  
**Topics:** `uncertainty visualization`, `statistical graphics`, `software tools`  
**Drill down:** [paper index](../index/petek2026general.md) · [full extracted text](../raw/petek2026general.md)

## Why this paper matters

Treats a plot as a function of uncertain quantities, samples the induced distribution over rendered images, and aggregates those images into one uncertainty display. The framework generalizes overlay methods and can make confidence intervals and bands emerge without special-purpose plotting routines.

## Key findings

- The method requires a base uncertainty distribution and ordinary plotting code, then operates on the resulting images.
- It provides coverage guarantees for several common visual-inference tasks and an open-source IID reference implementation.

## Scope and cautions

- Raster-only proof of concept; anti-aliasing, intensity perception, color mixing, and dependence beyond IID data require care.
