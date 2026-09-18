# PEMbook — Working Context

This repository contains a technical Jupyter Book on PEM water electrolysis.

## Source of truth

The **existing book structure is authoritative**.

- Do not reorganize chapters or sections unless the author explicitly asks.
- Do not rename, merge, split, reorder, add, or remove chapters based on this context file.
- Always read `jupyter-book/_toc.yml` before making structural changes.
- The current book source is under `jupyter-book/`.
- The book is built with Jupyter Book and deployed through GitHub Pages.

## Current chapter structure

The current TOC contains these chapters, in this order:

1. `chapters/01_introduction`
2. `chapters/02_principles`
3. `chapters/03_components`
4. `chapters/04_single_cell_modeling`
5. `chapters/05_stack_modeling`
6. `chapters/06_numerical_methods`
7. `chapters/07_control_requirements`
8. `chapters/08_model_based_control`
9. `chapters/09_learning_control`
10. `chapters/10_future_trends`

This list is descriptive only. The live file `jupyter-book/_toc.yml` remains the authoritative structure.

## Book objective

The book develops PEM electrolyzer knowledge from physical and electrochemical fundamentals toward modeling, characterization, numerical implementation, and control.

The intended audience is primarily graduate students, researchers, and engineers working on electrochemical energy conversion, hydrogen technologies, modeling, diagnostics, and control.

## Writing principles

When editing scientific content:

- Preserve the author's existing structure and technical intent.
- Prefer physical interpretation before mathematical abstraction when introducing a new concept.
- Clearly state assumptions behind equations and models.
- Distinguish thermodynamic, kinetic, ohmic, mass-transport, thermal, and degradation effects.
- Connect equations to measurable physical quantities whenever possible.
- Use SI units consistently unless an established electrochemical convention is explicitly needed.
- Keep notation consistent across chapters.
- Do not silently change symbols that are already defined elsewhere in the book.
- Avoid unsupported numerical values.
- Do not invent references, DOIs, experimental data, or literature claims.
- Prefer primary literature, authoritative reviews, standards, institutional reports, and established thermodynamic databases.
- Clearly distinguish an approximation from a thermodynamically rigorous expression.

## Thermodynamics conventions

For water electrolysis, be especially careful about phase conventions and standard states.

- State explicitly whether water is liquid or vapor.
- For low-temperature PEM electrolysis, liquid water is normally the relevant reactant phase.
- At 298.15 K under standard conditions, the reversible voltage for liquid-water electrolysis is approximately 1.229 V.
- The thermoneutral voltage at 298.15 K is approximately 1.48 V.
- When temperature dependence is discussed, account for temperature-dependent thermodynamic properties rather than assuming constant enthalpy and entropy over large ranges.
- If NASA polynomial data are used, note that common NASA polynomial sets describe gaseous species; liquid-water properties require an appropriate liquid-phase treatment or an authoritative liquid-water thermodynamic source.
- Do not use a constant latent-heat offset as if it were a rigorous liquid-water Gibbs-energy model over a broad temperature interval.

## Modeling philosophy

Whenever possible, organize modeling explanations around the chain

`physical phenomenon -> governing equation -> assumptions -> parameters -> validation -> control relevance`.

For model development:

- Separate equilibrium/reversible potential from irreversible voltage losses.
- Identify model states, inputs, outputs, parameters, disturbances, and measurable quantities.
- State the spatial and temporal scale of each model.
- Explain why a chosen model fidelity is appropriate for its intended use.
- Distinguish detailed multiphysics models from control-oriented and reduced-order models.
- When presenting data-driven or physics-informed methods, explain what physical information is imposed and what is learned from data.

## Characterization and validation

Characterization methods should be linked to the physical processes or parameters they reveal. Relevant examples can include polarization curves, electrochemical impedance spectroscopy, cyclic voltammetry where appropriate, gas crossover measurements, thermal measurements, local measurements, and durability tests.

When discussing characterization:

- distinguish in situ, operando, and ex situ methods correctly;
- connect measurements to model parameters or internal states;
- discuss uncertainty and identifiability where relevant.

## Control perspective

The control chapters should maintain a clear connection between electrochemical physics and system-level objectives.

Typical objectives may include:

- hydrogen production tracking;
- efficiency;
- temperature regulation;
- pressure and flow management;
- safe operation;
- mitigation of degradation;
- integration with variable renewable power.

Do not present advanced control methods as improvements by default. State assumptions, required measurements, computational needs, and appropriate baselines.

## Reproducible figures and computation

The repository uses Jupyter Book, so prefer reproducible computation for technical figures and numerical examples.

- Use Python/Jupyter when a figure is generated from equations or data.
- Keep plotting code understandable and reproducible.
- Label axes with quantities and units.
- Keep numerical assumptions near the code that uses them.
- Prefer source data or equations over manually digitized values when authoritative sources exist.
- If a figure reproduces literature data, cite the source and respect copyright; redraw from data/equations rather than copying protected artwork whenever practical.

## Markdown and MyST

For files inside `jupyter-book/`:

- Preserve valid MyST Markdown and Jupyter Book syntax.
- Use display math and equation labels consistently.
- Preserve citation keys already used in `jupyter-book/references.bib`.
- Do not replace working MyST constructs simply for stylistic reasons.
- Keep relative figure paths compatible with the Jupyter Book build.

## Collaboration workflow

This repository may be edited both through VS Code/GitHub Copilot and through ChatGPT-assisted GitHub workflows.

Before making a substantial edit:

1. inspect the current file rather than relying on an earlier draft;
2. treat the repository contents as newer than older conversational plans;
3. preserve existing author decisions unless explicitly asked to revisit them;
4. make the smallest coherent change needed for the task.
