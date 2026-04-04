# Electrochemical and Physical Principles

## Thermodynamics of Water Electrolysis
Water electrolysis splits water into hydrogen and oxygen using electrical energy:

$$
\mathrm{H_2O(l)} \rightarrow \mathrm{H_2(g)} + \tfrac{1}{2}\,\mathrm{O_2(g)}
$$

The standard Gibbs free energy change ($\Delta G^{0}$) and enthalpy ($\Delta H^{0}$) for this reaction at $25\,^{\circ}\mathrm{C}$ are approximately:

$$
\Delta G^{0} = 237.2\,\mathrm{kJ/mol}
$$
$$
\Delta H^{0} = 285.8\,\mathrm{kJ/mol}
$$

The minimum required cell voltage (reversible voltage) is:

$$
E_{\text{rev}}^{0} = \frac{\Delta G^{0}}{nF} \approx 1.23\,\mathrm{V}
$$

The thermoneutral voltage is:

$$
E_{\text{tn}}^{0} = \frac{\Delta H^{0}}{nF} \approx 1.48\,\mathrm{V}
$$

The thermoneutral voltage depends on temperature (see the original schematic for its variation).

### Nernst Equation
The reversible cell voltage under non-standard conditions is given by the Nernst equation:

$$
E = E^{0} + \frac{RT}{nF} \ln\!\left( \frac{a_{\mathrm{H_2}}\, a_{\mathrm{O_2}}^{1/2}}{a_{\mathrm{H_2O}}} \right)
$$

Assuming liquid water activity $a_{\mathrm{H_2O}} = 1$ and using gas partial pressures, this simplifies to:

$$
E = E^{0} + \frac{RT}{nF} \ln\!\left( p_{\mathrm{H_2}}\, p_{\mathrm{O_2}}^{1/2} \right)
$$

### Faradaic and Energy Efficiency
Faradaic efficiency ($\eta_F$) relates delivered charge to the amount of product:

$$
\eta_F = \frac{nF Q_{\text{actual}}}{I \cdot t}
$$

Energy efficiency compares the energy content of hydrogen to electrical input:

$$
\eta_E = \frac{\Delta G^{0}}{U_{\text{cell}} \cdot nF}
$$

## Electrochemical Kinetics and Overpotentials
Real electrolyzer operation requires a cell voltage above the reversible value because of kinetic, ohmic, and transport losses:

$$
U_{\text{cell}} = E_{\text{rev}} + \eta_{\text{act,a}} + \eta_{\text{act,c}} + \eta_{\Omega} + \eta_{\text{mt}}
$$

where:

- $\eta_{\text{act,a}}$ and $\eta_{\text{act,c}}$ are activation overpotentials (anode and cathode)
- $\eta_{\Omega}$ is the ohmic overpotential (membrane, contacts, plates)
- $\eta_{\text{mt}}$ is the mass-transport or concentration overpotential

### Butler-Volmer Kinetics
At each electrode, current density and activation overpotential are linked by the Butler-Volmer equation:

$$
j = j_0 \left[\exp\!\left(\frac{\alpha_a F\eta_{\text{act}}}{RT}\right) - \exp\!\left(-\frac{\alpha_c F\eta_{\text{act}}}{RT}\right)\right]
$$

with exchange current density $j_0$ and transfer coefficients $\alpha_a,\alpha_c$.

For PEM water electrolysis, the oxygen evolution reaction (OER, anode) is usually the dominant kinetic limitation, while the hydrogen evolution reaction (HER, cathode) is faster.

### Tafel Approximation
At moderate-to-high overpotential, Butler-Volmer simplifies to a Tafel form:

$$
\eta_{\text{act}} \approx \frac{2.303RT}{\alpha F}\log_{10}\!\left(\frac{j}{j_0}\right)
\;=\; b\,\log_{10}\!\left(\frac{j}{j_0}\right)
$$

where $b$ is the Tafel slope (V/dec). This form is commonly used for parameter identification from polarization curves.

### Ohmic Overpotential
Ohmic loss is often modeled as:

$$
\eta_{\Omega} = j\,R_{\text{ASR}}
$$

where $R_{\text{ASR}}$ is the area-specific resistance (membrane plus electronic/contact contributions). Membrane hydration and temperature strongly affect this term.

### Mass-Transport Overpotential
At high current density, reactant/product transport limitations can be represented by:

$$
\eta_{\text{mt}} = -\frac{RT}{nF}\ln\!\left(1-\frac{j}{j_{\text{lim}}}\right)
$$

where $j_{\text{lim}}$ is an effective limiting current density. In PEM electrolysis, this term becomes more significant at high utilization, inadequate water feed, or poor gas removal.

### Typical PEM Parameter Ranges
Representative values used in system-level PEM models are:

- Current density: $1$ to $3\,\mathrm{A\,cm^{-2}}$ (up to higher values in advanced stacks)
- Cell voltage under load: about $1.8$ to $2.2\,\mathrm{V}$
- OER Tafel slope: typically $40$ to $80\,\mathrm{mV\,dec^{-1}}$
- HER Tafel slope: typically $20$ to $40\,\mathrm{mV\,dec^{-1}}$
- Area-specific resistance (ASR): often around $0.1$ to $0.3\,\Omega\,\mathrm{cm^2}$ (technology- and condition-dependent)

These ranges vary with catalyst loading, membrane thickness, temperature, pressure, and water management.

## Transport Phenomena in PEM Cells
Transport processes strongly couple electrochemistry, ohmic losses, and durability in PEM electrolyzers. The main coupled phenomena are water transport, proton transport, gas transport, and heat transport.

### Water and Proton Transport in the Membrane
Proton conduction in the membrane depends on hydration state and temperature. A common local relation is:

$$
i_{\mathrm{H^+}} = -\kappa_{\mathrm{m}}(\lambda, T)\,\nabla \phi_{\mathrm{m}}
$$

where $\kappa_{\mathrm{m}}$ is membrane proton conductivity, $\lambda$ is membrane water content, and $\phi_{\mathrm{m}}$ is ionic potential.

Membrane hydration evolves through competing mechanisms:

- Electro-osmotic drag (water carried from anode to cathode with protons)
- Back-diffusion (water diffusion from wetter to drier side)
- Hydraulic permeation under pressure gradients

Insufficient hydration increases membrane resistance and accelerates degradation risk; excessive water accumulation can exacerbate gas transport limitations.

### Reactant/Product Gas Transport
At the anode, liquid water must reach catalyst sites while generated oxygen must be removed. At the cathode, hydrogen removal and water crossover management are critical.

Mass-transport limitations can be represented by an effective concentration overpotential, and they become important at high current density, high stoichiometric utilization, or inadequate channel/porous-layer design.

For modeling, gas-side transport is often represented with:

- Channel-scale pressure-drop and species-balance equations
- Effective diffusivity models in porous transport layers (PTLs)
- Interfacial source terms linking electrochemical rates to local composition

### Gas Crossover and Purity
Hydrogen and oxygen can permeate through the membrane by diffusion and pressure-driven transport. Crossover increases with pressure differential and can affect:

- Product gas purity
- Faradaic efficiency at low current density
- Safety margins due to combustible mixtures

Consequently, pressure control and membrane condition monitoring are central in high-pressure PEM operation.

### Thermal Transport and Water Management
Cell temperature is determined by Joule heating, activation losses, and heat removal through flow fields and plates. Temperature rise can improve kinetics and conductivity up to a point, but excessive thermal gradients may accelerate aging.

A practical control objective is to maintain a balanced operating window in which:

- Membrane stays sufficiently hydrated
- Reactant supply avoids starvation
- Gas evacuation prevents local accumulation
- Temperature remains within stack design limits

## Faradaic Efficiency and Energy Efficiency
Efficiency metrics quantify how effectively electrical input is converted into hydrogen.

### Faradaic Efficiency
Faradaic efficiency reflects the fraction of current that produces hydrogen:

$$
\eta_F = \frac{\dot n_{\mathrm{H_2,actual}}}{\dot n_{\mathrm{H_2,ideal}}}
= \frac{\dot n_{\mathrm{H_2,actual}}}{I/(2F)}
$$

In ideal operation $\eta_F \approx 1$, but it can decrease due to gas crossover, parasitic side reactions, and measurement uncertainties. In PEM systems, faradaic efficiency is often high at nominal load and can drop at very low current density where crossover is relatively more important.

### Energy Efficiency
Voltage-based energy efficiency can be written as:

$$
\eta_E = \eta_F\,\frac{E_{\mathrm{rev}}}{U_{\mathrm{cell}}}
$$

or, using thermodynamic quantities,

$$
\eta_E = \frac{\dot n_{\mathrm{H_2}}\,\Delta G}{P_{\mathrm{el}}}
$$

where $P_{\mathrm{el}} = U_{\mathrm{cell}} I$.

Because $U_{\mathrm{cell}}$ includes all overpotentials, reducing activation, ohmic, and transport losses directly improves efficiency.

### Influence of Operating Conditions
- Current density: increasing current usually increases production rate but also raises overpotentials, which lowers voltage efficiency.
- Temperature: moderate temperature increase generally improves kinetics and membrane conductivity, reducing voltage losses; too high temperatures can affect durability.
- Pressure: higher pressure reduces downstream compression demand and changes reversible voltage, but can increase crossover and impose stronger mechanical constraints.
- Water feed and flow management: poor distribution can induce local dry-out or flooding, increasing both ohmic and transport losses.

In practice, optimal operation is a multi-objective trade-off between hydrogen production rate, electrical efficiency, gas purity, and long-term stack health.
