# Project instructions

## Journal compilation

- Compile `The Art of Uncertain Topoplots/journal.typ` only through
  `scripts/compile-journal.ps1`.
- Do not invoke `typst compile` or `quarto typst compile` directly for the journal.
  The wrapper first runs `scripts/wrap-journal-prose-width.ps1`, which reflows ordinary
  manuscript prose to 92 characters, and then compiles the PDF.
- In VS Code, the default build task (`Ctrl+Shift+B`) invokes this wrapper.
- These requirements apply only to `journal.typ`; compile other Typst documents normally
  unless they receive their own wrapper.
