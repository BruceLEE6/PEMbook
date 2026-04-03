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
*Outline kinetics, activation overpotential models, and typical parameter ranges.*

## Transport Phenomena in PEM Cells
*Summarize mass transport, membrane hydration, and gas management effects.*

## Faradaic Efficiency and Energy Efficiency
*Discuss how operating conditions, temperature, and pressure influence efficiency metrics.*
