---
layout: default
title: Impinging Injector for Liquid Rocket Booster
permalink: /projects/injector/
---

# Impinging Injector for a 250 lbf Liquid Rocket Engine

**Kennesaw State University Liquid Propulsion Team**  
**Role:** Injector CAD Design, Injector Sizing, Mechanical Interface Design, and CFD Validation

![Final Injector Assembly]({{ '/assets/images/injector/injector-viewport.png' | relative_url }})

*Final injector assembly showing the two-plate architecture and internal flow geometry.*

---

## Project Overview

The Kennesaw State University Liquid Propulsion Team is developing **STRIX**, a 250 lbf-class liquid rocket engine using nitrous oxide (N₂O) and ethanol. The injector is responsible for metering both propellants into the combustion chamber while producing the desired impingement geometry for mixing and atomization.

My primary responsibility was the **iterative CAD development of the injector top plate**. I also determined the **position and sizing of the bulkhead bolt pattern for both plates** and contributed to the research and calculations used to establish the overall injector geometry.

### Project at a Glance

| Parameter | Value |
|---|---|
| **Engine** | STRIX |
| **Target Thrust** | 250 lbf |
| **Oxidizer / Fuel** | Nitrous Oxide (N₂O) / Ethanol |
| **Injector Configuration** | O-F-O Impinging Injector |
| **Manifold Pressure** | 900 psi |
| **Chamber Pressure** | 780 psi |
| **Injector Pressure Drop** | 120 psi |
| **Primary Role** | Injector CAD, sizing support, mechanical interface design |

---

## 1. Design Evolution: Coaxial Swirl → Impinging Injector

The initial injector concept used a **coaxial swirl injector**. As the design progressed toward manufacturing, the team determined that the required tolerances and geometric complexity were too demanding for the manufacturing resources available to a small university team.

The architecture was therefore changed to an **impinging injector**, which provided a more practical two-plate manufacturing approach.

> **Engineering Decision:** The final configuration was selected not only from fluid-dynamic considerations, but also from the requirement that the design be realistically manufacturable and testable by the team.

### Original Coaxial Swirl Concept

The original concept required a more complex internal geometry and tighter manufacturing tolerances. The team ultimately decided that the additional manufacturing complexity was not justified for the capabilities and resources available.

![Original Coaxial Swirl Injector]({{ '/assets/images/injector/coaxial-swirl.png' | relative_url }})

*Original coaxial swirl injector concept and associated manufacturing drawings.*

### Final Impinging Configuration

The revised concept used a two-plate architecture, allowing the internal flow passages and injector features to be incorporated into comparatively accessible machined geometries.

![Final Impinging Injector]({{ '/assets/images/injector/injector-viewport.png' | relative_url }})

*Final impinging injector assembly.*

This design change established an important constraint for the remainder of the project:

> **The injector needed to satisfy its fluid-dynamic requirements while remaining practical to manufacture, assemble, and test.**

---

## 2. From Requirements to Injector Geometry

The preliminary engine requirements were translated into injector flow requirements and then into physical geometry.

The design requirements included:

- **Target thrust:** 250 lbf
- **Oxidizer:** Nitrous oxide (N₂O)
- **Fuel:** Ethanol
- **O/F ratio:** 4.25
- **Injector manifold pressure:** 900 psi
- **Chamber pressure:** 780 psi
- **Injector pressure drop:** 120 psi

The overall design process followed:

**Engine Requirements → Mass Flow → Propellant Flow Rates → Orifice Sizing → Impingement Geometry → CAD**

---

### Mass-Flow Sizing

The total propellant mass flow rate was calculated from the target thrust and specific impulse:

$$
\dot{m}_{total} =
\frac{F}{I_{sp}g}
$$

Using the preliminary engine requirements:

$$
\dot{m}_{total}
=
\frac{1112.06}{(200)(9.807)}
=
0.56697\ kg/s
$$

The O/F ratio was then used to separate the total flow into the individual propellant streams:

$$
\dot{m}_{N_2O}
=
\frac{O/F}{1+O/F}\dot{m}_{total}
$$

$$
\dot{m}_{EtOH}
=
\frac{1}{1+O/F}\dot{m}_{total}
$$

Resulting in:

| Parameter | Oxidizer | Fuel |
|---|---:|---:|
| **Mass Flow Rate** | 0.45898 kg/s | 0.107995 kg/s |
| **Density** | 785.06 kg/m³ | 789.4 kg/m³ |
| **Pressure Drop** | 120 psi | 120 psi |
| **Calculated Orifice Diameter** | 1.8379 mm | 1.2591 mm |
| **Injection Velocity** | 27.55 m/s | 27.37 m/s |

---

### Orifice Sizing

The injector orifice dimensions were established using the incompressible orifice-flow relationship:

$$
\dot{m}
=
\frac{\pi d^2}{4}
C_d\sqrt{2\rho\Delta P}
$$

where:

- $\dot{m}$ = mass flow rate
- $d$ = orifice diameter
- $C_d$ = discharge coefficient
- $\rho$ = propellant density
- $\Delta P$ = injector pressure drop

The resulting dimensions provided the initial flow geometry used during CAD development.

---

## 3. Impingement Geometry

The calculated orifice dimensions were then used to establish the physical impingement geometry.

The average orifice diameter was calculated as:

$$
d_{avg}
=
\frac{1.8379+1.2591}{2}
=
1.5485\ mm
$$

Using the selected geometric relationship:

$$
L_{imp}
=
5d_{avg}
=
7.7425\ mm
$$

At a 45° impingement half-angle:

$$
S
=
L_{imp}\tan(45^\circ)
=
7.7425\ mm
$$

These calculations established the initial outlet locations and spacing used to develop the injector CAD geometry.

---

## 4. Iterative CAD Development

The analytical dimensions established the starting point, but the injector required significant CAD development to integrate the fluid passages, mechanical attachment, sealing, external interfaces, and manufacturing requirements.

![Injector CAD Assembly]({{ '/assets/images/injector/injector-viewport.png' | relative_url }})

*Final two-plate injector assembly. The cutaway view exposes the internal propellant passages and injector outlet geometry.*

### Top-Plate Design

I was primarily responsible for the **iterative development of the injector top plate**.

The design process required repeatedly adjusting the geometry as the following requirements were integrated:

- Propellant flow passages
- Injector outlet geometry
- Bulkhead attachment
- Bolt placement
- Sealing interfaces
- External propellant connections
- Manufacturing constraints

Rather than treating the initial analytical dimensions as a finished design, I iterated on the CAD geometry to resolve the interactions between these requirements.

### Bulkhead Bolt Pattern

I also determined the **position and sizing of the bulkhead bolt pattern for both injector plates**.

The bolt pattern needed to provide the required mechanical attachment while fitting within the available plate geometry and avoiding interference with the internal flow passages and other features.

This made the bolt pattern part of the overall injector architecture rather than simply a feature added after the fluid geometry was completed.

---

## 5. Mechanical Design and Engineering Drawings

The analytical design had to be translated into detailed manufacturing geometry.

### Manifold Face and Bolt Pattern

![Manifold Face and Bolt Pattern]({{ '/assets/images/injector/manifold-face.png' | relative_url }})

*Representative manifold face and bulkhead bolt pattern drawing.*

The bolt pattern was positioned around the injector geometry while maintaining the required hole size and radial spacing.

This was one of my primary areas of responsibility during the CAD development of the injector.

### Propellant Port Geometry

![Manifold Propellant Ports]({{ '/assets/images/injector/manifold-propellant-parts.png' | relative_url }})

*Section view showing the propellant port geometry and internal passages.*

The internal passages connect the external propellant interfaces to the injector flow paths while maintaining the required geometry for manufacturing.

### Bottom Plate and Orifice Pattern

![Bottom Plate Drawing]({{ '/assets/images/injector/bottom-plate.png' | relative_url }})

*Manufacturing drawing of the injector bottom plate showing orifice placement and bolt patterns.*

---

## 6. CFD Verification of Impingement Geometry

The impingement angle and outlet positioning were initially established through analytical calculations.

ANSYS CFD was then used to examine whether the simulated flow paths converged at the predicted impingement region.

![ANSYS Impingement Simulation]({{ '/assets/images/injector/ansys-impingement.png' | relative_url }})

*ANSYS velocity streamlines showing the calculated flow paths converging near the intended impingement region. The displayed probe value is approximately 27.3 m/s.*

![ANSYS Velocity Streamlines]({{ '/assets/images/injector/velocity-streamline.png' | relative_url }})

*Full velocity streamline simulation demonstrating propellant flow through the manifold and impingement zone.*

The simulation showed the fuel and oxidizer flow streams converging at the intended impingement region, providing computational support for the analytically determined geometry.

The simulated velocity was also on the same order as the analytical injection-velocity calculations of approximately **27.4–27.6 m/s**.

> **Validation Approach:** CFD was used as a verification step for a geometry established from analytical calculations, rather than simply as a visualization of the final CAD model.

---

## 7. Designing for Manufacturing

Manufacturing feasibility was a major driver of the final injector architecture.

The original coaxial swirl concept required tighter tolerances and more complex geometry than the team considered practical for its available manufacturing resources. The design was therefore transitioned to an impinging configuration using a comparatively accessible two-plate architecture.

The final design incorporated:

- Machinable plate geometries
- Defined propellant ports
- Internal flow passages
- Injector outlet features
- Bulkhead attachment features
- Sealing O-ring interfaces
- Manufacturing drawings

The final architecture allowed the team to move from a more complex injector concept toward a design that could realistically be fabricated and assembled by a university propulsion team.

---

## 8. Design Outcome

The final injector design progressed from preliminary analytical sizing to a detailed two-plate CAD assembly with defined flow passages, mechanical interfaces, and manufacturing drawings.

The major outcomes were:

- **Completed preliminary injector sizing** from engine-level requirements.
- **Established an O-F-O impinging injector configuration.**
- **Iteratively developed the injector top plate in CAD.**
- **Established the bulkhead bolt pattern for both injector plates.**
- **Integrated internal propellant passages and mechanical interfaces.**
- **Developed detailed injector drawings.**
- **Used ANSYS CFD to examine and validate the calculated impingement geometry.**

The project therefore progressed through the complete preliminary design workflow:

**Requirements → Analysis → Geometry → CAD → CFD Verification → Manufacturing Documentation**

---

## 9. My Contribution

### Injector CAD — Primary Responsibility

- Iteratively designed the **injector top plate**.
- Integrated fluid passages and mechanical interfaces.
- Determined the **bulkhead bolt placement and sizing for both plates**.
- Refined the geometry toward a manufacturable final design.

### Engineering Analysis — Collaborative Responsibility

- Researched the calculations necessary to establish injector geometry.
- Worked through mass-flow and orifice-sizing calculations.
- Contributed to determining the injector dimensions and impingement geometry.

### Design Evolution — Team Contribution

- Participated in the transition from the original **coaxial swirl injector** to the impinging configuration.
- Helped evaluate manufacturing constraints and design feasibility.
- Contributed to the design justification documented in the PDR.

### CFD Validation — Team Contribution

- Contributed to the analytical-to-CFD workflow used to evaluate the impingement geometry.
- Used ANSYS flow visualization to examine whether the calculated flow paths converged at the intended location.

---

## Engineering Takeaway

This project demonstrated the progression from an engine-level requirement to a manufacturable propulsion component.

The design process connected several areas of aerospace engineering:

**Propulsion Requirements**  
↓  
**Fluid Mechanics & Injector Sizing**  
↓  
**Impingement Geometry**  
↓  
**3D CAD Development**  
↓  
**Mechanical Interface Design**  
↓  
**CFD Verification**  
↓  
**Manufacturing Documentation**

One of the most important design lessons was that the initial concept was not necessarily the final solution. The coaxial swirl injector provided a starting point, but manufacturing constraints caused the team to reconsider the architecture and select an impinging configuration that better balanced fluid-dynamic objectives with practical fabrication availability.

The resulting design demonstrates how analytical calculations, CAD development, simulation, and manufacturing considerations can be combined to develop a practical aerospace propulsion component.

---

## Supporting Technical Documents

The following documents provide the detailed technical record behind this case study.

### Project Documentation

- **[Preliminary Design Review (PDR)]({{ '/assets/docs/injector/liquid-propulsion-preliminary-design-review.pdf' | relative_url }})**
- **[Injector CAD Model Assembly]({{ '/assets/images/injector/injector-viewport.png' | relative_url }})**
- **[Injector Manufacturing Drawings & Plan (PDF)]({{ '/assets/docs/injector/injector-manufacturing-plan.pdf' | relative_url }})**
- **[Injector Sizing Calculations (MATLAB)]({{ '/assets/docs/injector/coaxial-swirl-injector-sizing.m' | relative_url }})**
- **[Original Coaxial Swirl Injector Drawings]({{ '/assets/images/injector/coaxial-swirl-drawing.jpg' | relative_url }})**

> **Note:** The case study above is intended to explain the engineering process and my contribution. The supporting documents provide the complete technical record, detailed dimensions, and design documentation.
