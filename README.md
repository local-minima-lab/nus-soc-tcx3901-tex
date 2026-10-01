# NUS SCALE TCX3901/TIC3901 Template

LaTeX template for the TCX3901/TIC3901 Industrial Practice reports and
presentations. Samples: [report](sample/sample.pdf),
[Presentation 1](sample/ppt1.pdf), [Presentation 2](sample/ppt2.pdf).

## How to use

1. Configure [config.tex](config.tex) (course, title, members, advisor,
   repository); it is shared by the report and the slides. For a
   single-student project, set `\individualprojecttrue` there.
2. Put references in [cite.bib](cite.bib) and figures in `images/`.
3. Replace all the red italic text (`\guide{...}`) in the report and the
   slides with your own writing.

## Report

The three reports are Parts I–III of one document, [main.tex](main.tex),
which is submitted at each deadline:

- [report1.tex](report1.tex): Report 1 (Sem 1, end of Week 5), the
  proposal.
- [report2.tex](report2.tex): Report 2 (Sem 2, end of Week 2), the mid-term
  report.
- [report3.tex](report3.tex): Report 3 (Sem 2, end of Week 8), the final
  report.

Parts II and III are commented out in [main.tex](main.tex); enable each
when it is due. Keep [contributions.tex](contributions.tex) updated at
every submission, including the statement on the use of AI tools.
Appendices go in [appendix-a.tex](appendix-a.tex).

The page layout and font are set in [preamble.tex](preamble.tex) and follow
the required format, so don't change them. Each report is at most 10 pages
and **each part at most 3 pages**; the Individual Contributions page takes
1 page.

## Presentations

The two presentations are Beamer slide decks that share
[config.tex](config.tex), [cite.bib](cite.bib) and `images/` with the report:

- [ppt1.tex](ppt1.tex): Presentation 1 (Sem 1, end of Week 8), the proposal
  and progress to date.
- [ppt2.tex](ppt2.tex): Presentation 2 (Sem 2, end of Week 12), the
  completed project, evaluation and reflection.

The theme and colours are set in [ppt-preamble.tex](ppt-preamble.tex).

## Compile

- **Overleaf** (recommended, free for NUS students):
  1. [Download the zip](https://github.com/local-minima-lab/nus-soc-tcx3901-tex/archive/refs/heads/main.zip).
  2. **New Project → Upload Project** and select the zip; it compiles as-is.
  3. Submit via **Download PDF**.
  4. For the slides, set **Menu → Main document** to `ppt1.tex` or
     `ppt2.tex`.
- **Local**: `make` builds the report and both slide decks into `build/`
  (or `make report` / `make ppt1` / `make ppt2` for one of them,
  `make watch MAIN=ppt1.tex`, `make clean`).
