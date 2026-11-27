# Interview content-analysis prompt

**Model:** Anthropic Claude Opus 5.5 (`claude-opus-5-5`).

Analyze the transcripts of the nine formative interviews (R1-R9) on topoplots
and uncertainty. The interviews followed the 14-question guide in
`data/interviews/interview_guide.csv`. The pilot interview R0 is not analyzed.

The transcripts are anonymized: names of people, institutions and cities are
replaced by black squares (■■■■■). Do not try to restore them, and do not add
identifying details to the coded units.

For each transcript:

1. Code only the participant's speech. The interviewer's questions, summaries
   and examples are context, not data.
2. Divide the participant's answers into meaning units. Each meaning unit
   expresses one idea that fits one code. If a passage expresses several
   ideas, split it into several units.
3. Retain the participant's wording as closely as possible in the
   `Meaning unit` field. Shorten long passages with "..." but do not
   paraphrase. Enclose the retained wording in quotation marks. Keep
   black-square redactions as they are.
4. Record in `Question` the guide question (Q1-Q14) that the participant was
   answering when the unit was said. Off-guide follow-ups belong to the guide
   question they followed. Talk after the closing thanks is not coded.
   Background facts (years of experience, software, field, demographics)
   go into `data/interviews/interview_participants.csv` and are not coded.
5. Assign one `Category` and one `Code` from the codebook in
   `data/interviews/interview_codebook.csv`. Code by content, not by
   question: a reason for not showing uncertainty mentioned while answering
   Q8 is coded under `Why it is not shown on topoplots`. Do not create new
   codes. If no code fits, leave the unit out and list it in the coding
   report.
6. Code an idea again only when it comes up in a new context (for example
   the participant's own practice versus other researchers) or with a new
   aspect. When an idea recurs, code its clearest wording.
7. Set `Prompted` to `Yes` when the interviewer named the idea, or gave it as
   an example, before the participant mentioned it in that interview.
   Wording of the guide question itself does not count as a prompt, nor does
   a participant's remark that they feel nudged. Otherwise set `No`.
8. Set `Stance` only for units that evaluate something: whether showing
   uncertainty on topoplots would help (code `Yes, it would help` under
   `Would uncertainty on topoplots help?`), or a specific encoding or
   practice (for example "looks weird and it's difficult to interpret").
   Use -2 (strongly negative), -1 (negative), 0 (neutral or mixed), +1
   (positive) or +2 (strongly positive). `Yes, it would help` takes only +1
   or +2; a mixed answer to Q10 is coded as `Caveat: complexity` (or the
   caveat it names), without a stance. Code the expressed
   strength, not the presumed importance. A reason for not showing
   uncertainty that the participant explicitly rejects (for example "I don't
   think they want to hide something") is coded under that code with
   Stance -1. Leave `Stance` empty for all other units.
9. Preserve ambiguity. Do not infer a code, a prompt or a stance that the
   transcript does not support.
10. Produce one row per meaning unit with exactly these columns, in this
    order: `Respondent`, `Question`, `Meaning unit`, `Category`, `Code`,
    `Prompted`, `Stance`.
11. When updating an existing analysis, keep all previously coded rows
    unchanged, add only uncoded transcripts, sort by `Respondent` and
    `Question`, and report the number of added units and the units left out.

The codes are defined in `data/interviews/interview_codebook.csv`. Its `Study design`
column links the proposed encodings to the six designs of the quantitative
study; it is not used for coding.

Read the anonymized transcripts (`R1.docx` to `R9.odt`, outside the
repository). Save the completed table to the `Interview content analysis`
worksheet in `data/interviews/interview_content_analysis.xlsx`.
