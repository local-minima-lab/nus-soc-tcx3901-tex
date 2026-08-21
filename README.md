# NUS SCALE TCX3901/TIC3901 Report Template

LaTeX template for the TCX3901/TIC3901 Industrial Practice reports. The
Proposal, Mid-Term and Final reports are written in a single document as
Parts I–III, developed over the two semesters and submitted at each
deadline. Sample: [sample/sample.pdf](sample/sample.pdf).

## How to use

1. Configure the block at the bottom of [preamble.tex](preamble.tex)
   (course, title, members, advisor, repository).
2. Write in [report1.tex](report1.tex) / [report2.tex](report2.tex) /
   [report3.tex](report3.tex) (one file per part).
3. Keep [contributions.tex](contributions.tex) updated at every submission.
4. References go in [cite.bib](cite.bib), appendices in
   [appendix-a.tex](appendix-a.tex).

Don't change the geometry or font; they follow the required format.
Max 10 pages per report; **max 3 pages per part**, with the Individual
Contributions page taking 1 page.

## Compile

- **Overleaf** (Recommended, free for NUS students):
  1. [Download the zip](https://github.com/local-minima-lab/nus-soc-tcx3901-tex/archive/refs/heads/main.zip).
  2. **New Project → Upload Project** and select the zip; it compiles as-is.
  3. Submit via **Download PDF**.
- **Local**: `make` (or `make watch` / `make clean`).
