# Introduction to PEM Electrolyzers and Hydrogen Energy

## The Role of Hydrogen in Future Energy Systems
Hydrogen is both an important industrial feedstock and a potential energy carrier for the transition toward low-carbon energy systems. Unlike primary energy resources such as solar radiation, wind, or fossil fuels, hydrogen must be produced from other energy sources. Its environmental benefit therefore depends strongly on the production pathway and on the carbon intensity of the energy used for its production.

Hydrogen is already used at large scale. Global hydrogen demand surpassed **100 million tonnes per year in 2025**, with the large majority consumed in established applications such as oil refining, ammonia production, methanol production, and other industrial processes. However, current hydrogen production remains predominantly based on fossil fuels. Low-emissions hydrogen production reached almost **1 million tonnes in 2025**, illustrating the considerable gap between the present hydrogen industry and the low-carbon hydrogen system envisioned for the energy transition {cite}`IEA2026HydrogenReview`.

The role of hydrogen in future energy systems should be considered as complementary to direct electrification rather than as a replacement for it. When electricity can be used directly and efficiently, direct electrification generally avoids the additional conversion losses associated with hydrogen production, compression, storage, transport, and reconversion. Hydrogen becomes particularly relevant where direct electrification is technically difficult or economically restrictive. Examples include the production of ammonia and other chemicals, reduction of iron ores in some low-carbon steelmaking routes, and the production of hydrogen-derived fuels for selected heavy-transport applications {cite}`IRENA2024HardToAbate`.

Water electrolysis provides a direct pathway for converting electrical energy into chemical energy stored in hydrogen. When supplied by low-carbon electricity, electrolysis can substantially reduce the greenhouse-gas emissions associated with hydrogen production. Electrolyzers can also provide a flexible electrical load, allowing hydrogen production to be coupled with variable renewable generation. In this configuration, electrical power is converted into hydrogen according to

$$
\mathrm{H_2O + electrical\ energy \rightarrow H_2 + \frac{1}{2}O_2}.
$$

The produced hydrogen can subsequently be stored, transported, used as an industrial reactant, converted into hydrogen-derived fuels, or, when appropriate, reconverted into electricity. Electrolysis therefore establishes an interface between the electrical energy system and sectors in which molecules remain necessary.

The deployment of water electrolysis has accelerated considerably in recent years. According to the International Energy Agency, global installed electrolysis capacity **doubled during 2025 and exceeded 4 GW**, with more than 2.5 GW under construction for operation in 2026 {cite}`IEA2026HydrogenReview`. Nevertheless, installed electrolysis capacity remains small compared with the scale required to replace conventional fossil-based hydrogen production. Cost, electricity availability, infrastructure, equipment durability, efficiency, and the creation of reliable hydrogen demand remain major constraints.

Among the different electrolysis technologies, **proton exchange membrane water electrolysis (PEMWE)** is particularly attractive for operation with variable renewable electricity because of its high current density, compact architecture, wide operating range, and rapid dynamic response. At the same time, its large-scale deployment is constrained by the cost and availability of critical materials, particularly platinum-group-metal catalysts and titanium-based components, as well as by durability challenges under demanding operating conditions. Understanding the physical processes governing PEM electrolyzers, developing models capable of describing their behaviour, and designing appropriate monitoring and control strategies are therefore important for improving their efficiency, durability, safety, and integration into future energy systems.

## Overview of Water Electrolysis Technologies
There are three main types of electrolyzers: alkaline (AEL), proton exchange membrane (PEM), and solid oxide (SOEC). Their key differences are summarized below.

| Technology | Strengths | Limitations | Best use case |
|---|---|---|---|
| AEL | Mature, lower cost, robust long-term operation | Lower current density, slower dynamic response, bulkier systems | Large-scale steady hydrogen production |
| PEM | High current density, compact design, fast response, high-purity hydrogen | Higher cost, reliance on noble catalysts, membrane durability concerns | Coupling with variable renewable electricity |
| SOEC | High efficiency potential at high temperature, possible heat integration and co-electrolysis | Lower technology maturity, thermal cycling constraints, higher system complexity | Industrial sites with available high-temperature heat |

## Advantages and Challenges of PEM Electrolyzers
Key advantages include high current density and rapid response. Challenges include material cost and membrane durability.

## Structure and Goal of This Book
This book addresses modeling and control of PEM electrolyzers, intended for engineers and researchers working in hydrogen energy.
