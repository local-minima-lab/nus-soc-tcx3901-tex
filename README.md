# NUS SCALE TCX3901/TIC3901 Report Template

LaTeX template for the TCX3901/TIC3901 Industrial Practice reports. The
Proposal, Mid-Term and Final reports are written in a single document as
Parts I–III, developed over the two semesters and submitted at each
deadline. Sample: [sample/sample.pdf](sample/sample.pdf).

## How to use

1. Configure [config.tex](config.tex) (course, title, members, advisor,
   repository); it is shared by the report and the slides. For a
   single-student project, set `\individualprojecttrue` there.
2. Write in [report1.tex](report1.tex) / [report2.tex](report2.tex) /
   [report3.tex](report3.tex) (one file per part). Parts II and III are
   commented out in [main.tex](main.tex); enable each when it is due.
3. Keep [contributions.tex](contributions.tex) updated at every submission,
   including the statement on the use of AI tools.
4. References go in [cite.bib](cite.bib), appendices in
   [appendix-a.tex](appendix-a.tex).

The red italic text, in the report and the slides, is a prompt
(`\guide{...}`): replace all of it with your own writing.

Don't change the geometry or font; they follow the required format.
Max 10 pages per report; **max 3 pages per part**, with the Individual
Contributions page taking 1 page. A part that runs over 3 pages is flagged
in red at its end.

## Before you submit

Common mistakes from past submissions:

- **Title page**: your own matriculation number and repository link, with
  the supervisor added to the repository as a collaborator.
- **No template text left**: no red prompts, no unfilled Part II/III, and
  no sentences that only describe the report ("This section states ...").
- **Part I within 3 pages**: move supporting detail to an appendix and
  refer to it.
- **Introduction**: self-contained (a reader new to the topic can follow
  it), with a study of existing solutions and why they fall short, properly
  cited.
- **Objectives**: one or two sentences of prose on what the project
  achieves, not a list of deliverables or deadlines.
- **Scope**: short prose; don't repeat the same point under scope and
  assumptions.
- **Requirements**: user stories in the report itself, each with a unique
  identifier, a "so that" and testable conditions of satisfaction.
- **Approach**: how you will work and how the system is structured
  (components, architecture); design decisions are about the system, each
  with the alternatives considered and the reason.
- **Project plan**: the development plan (iterations, and which user
  stories in what sequence), not the submission deadlines.
- **Writing**: say things directly, group sentences into full paragraphs,
  prefer prose to long bullet lists, and run a spellcheck.
- **Individual project**: a declaration of individual work replaces the
  contributions table.
- **AI use**: state which tools, for what, and how the output was checked.

## Presentations

Beamer slide templates for the two presentations, sharing
[config.tex](config.tex), [cite.bib](cite.bib) and `images/` with the report:

- [ppt1.tex](ppt1.tex): Presentation 1 (Sem 1, end of Week 8), the proposal
  and progress to date.
- [ppt2.tex](ppt2.tex): Presentation 2 (Sem 2, end of Week 12), the
  completed project, evaluation and reflection.

The look (theme, colours) is set in [ppt-preamble.tex](ppt-preamble.tex).

## Compile

- **Overleaf** (Recommended, free for NUS students):
  1. [Download the zip](https://github.com/local-minima-lab/nus-soc-tcx3901-tex/archive/refs/heads/main.zip).
  2. **New Project → Upload Project** and select the zip; it compiles as-is.
  3. Submit via **Download PDF**.
  4. For the slides, set **Menu → Main document** to `ppt1.tex` or
     `ppt2.tex`.
- **Local**: `make` builds the report and both slide decks into `build/`
  (or `make report` / `make ppt1` / `make ppt2` for one of them,
  `make watch MAIN=ppt1.tex`, `make clean`).
