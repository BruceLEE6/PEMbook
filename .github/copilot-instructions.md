# GitHub Copilot Instructions for PEMbook

This repository contains a technical Jupyter Book on PEM water electrolysis.

## First rule: preserve the existing book structure

The author has already developed the current book after earlier planning discussions.

- Do **not** redesign or restructure the book unless explicitly requested.
- Treat `jupyter-book/_toc.yml` as the authoritative chapter structure.
- Do not rename, reorder, merge, split, add, or remove chapters on your own.
- Before substantial editing, read the current target file and, when relevant, `BOOK_CONTEXT.md`.
- Repository content is more authoritative than older plans, examples, or generic templates.

## Editing scope

When asked to improve a chapter or section:

- make the smallest coherent change that satisfies the request;
- preserve the author's technical intent and organization;
- keep existing headings unless a heading change is explicitly requested or clearly necessary to fix an error;
- do not overwrite technically meaningful text with generic prose;
- preserve valid MyST/Jupyter Book syntax.

## Scientific style

Write for graduate students, researchers, and engineers.

Preferred progression:

`physical meaning -> governing equation -> assumptions -> parameters -> interpretation -> modeling/control relevance`

Use concise academic English. Explain the physical meaning of important equations rather than presenting equations without interpretation.

## Technical accuracy

- Do not invent references, DOIs, data, standards, or numerical values.
- Flag uncertainty when a value or model depends on conventions.
- State phase, pressure, temperature, and standard-state assumptions where thermodynamics depend on them.
- Keep thermodynamic quantities dimensionally consistent.
- Use SI units consistently unless a conventional electrochemical unit is justified.
- Preserve notation consistency across chapters.
- Do not silently redefine variables.

## PEM electrolysis thermodynamics

Be particularly careful with:

- liquid vs vapor water;
- standard vs non-standard states;
- reversible voltage vs thermoneutral voltage;
- Nernst corrections;
- temperature-dependent enthalpy, entropy, and Gibbs free energy;
- the limitations of gas-phase NASA polynomial data for liquid-water calculations.

At 298.15 K under standard conditions for liquid-water electrolysis, use approximately 1.229 V for the reversible voltage and approximately 1.48 V for the thermoneutral voltage unless the surrounding text adopts a more precise cited convention.

Do not treat a constant latent-heat subtraction from gaseous H2O NASA data as a rigorous liquid-water Gibbs-energy model over a temperature range.

## Modeling guidance

When adding or revising modeling content:

- distinguish equilibrium voltage from activation, ohmic, and mass-transport losses;
- identify states, inputs, outputs, parameters, disturbances, and measurements where relevant;
- state the model dimensionality and time scale;
- explain the intended use of the model;
- distinguish detailed multiphysics models from reduced-order/control-oriented models;
- relate parameters to characterization methods when possible.

## Characterization guidance

Link characterization methods to the physics or parameters they reveal.

Examples include polarization curves, EIS, crossover measurements, thermal measurements, local/segmented measurements, operando optical methods, and durability testing.

Use `in situ`, `operando`, and `ex situ` accurately.

## Control guidance

Keep control discussion physically grounded. Relevant objectives may include production tracking, efficiency, temperature regulation, pressure/flow management, safe operation, renewable-power following, and degradation mitigation.

For advanced methods such as MPC, observers, reinforcement learning, PINNs, neural operators, or digital twins:

- state the baseline method;
- specify required measurements/model information;
- explain computational and implementation constraints;
- avoid claiming superiority without evidence.

## Jupyter Book and figures

The source book is under `jupyter-book/`.

- Prefer reproducible Python/Jupyter figures for equation- or data-based results.
- Keep code readable and deterministic where practical.
- Label plot axes with quantities and units.
- Keep assumptions close to the code.
- Preserve citation keys from `jupyter-book/references.bib`.
- Keep figure paths compatible with the Jupyter Book build.
- Do not modify generated build output unless explicitly requested.

## References

When adding references:

- prefer primary papers, authoritative reviews, standards, recognized textbooks, institutional reports, and trusted thermodynamic databases;
- verify bibliographic details before inserting them;
- reuse an existing BibTeX key when the same source is already present;
- never fabricate a citation to support a statement.

## Relationship to BOOK_CONTEXT.md

`BOOK_CONTEXT.md` provides broader scientific and workflow context. Use it as guidance, but do not let it override the live book structure or explicit author instructions.
