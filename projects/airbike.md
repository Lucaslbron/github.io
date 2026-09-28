---
layout: default
title: Electric Airbike Structural, Aerodynamic, & Thermal Simulations
permalink: /projects/airbike.html
---

# Electric Airbike Structural, Aerodynamic, & Thermal Simulations

**Simulation-Driven Vehicle Engineering & Multiphysics Optimization**  
**Author / Engineer:** Lucas Lebron  
**Role:** Full-Vehicle CAD Integration, Structural FEA (Linear Static & Nonlinear Dynamics), Rotating-Region Aerodynamic CFD, Conjugate Heat Transfer (CHT), and Fatigue Analysis  
**Tools:** SolidWorks 3D CAD, SolidWorks Simulation (Static FEA, Nonlinear Dynamics, Fatigue Studies), SolidWorks Flow Simulation (External Aerodynamics, Rotating Regions, Multi-Species Heat Transfer)

![Electric Airbike Full Vehicle CAD Assembly]({{ '/assets/images/airbike/airbike-assembly-hero.png' | relative_url }})

*Final Electric Airbike assembly modeled in SolidWorks, showing the tubular aluminum chassis, operator ergonomics, mid-mounted battery pack and heat exchanger, fixed swept wings, and rear ducted propeller propulsion system.*

<script type="module" src="https://ajax.googleapis.com/ajax/libs/model-viewer/4.0.0/model-viewer.min.js"></script>

<div id="cad-viewer" style="margin: 1.75rem 0; background: #181926; border-radius: 12px; padding: 1.25rem; border: 1px solid #2e3048; box-shadow: 0 8px 24px rgba(0,0,0,0.4);">
  <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 0.75rem; flex-wrap: wrap; gap: 0.5rem;">
    <h4 style="margin: 0; color: #f8fafc; font-size: 1.05rem;">
      Interactive 3D CAD Assembly Viewer
    </h4>
    <a href="{{ '/projects/airbike-cad-viewer.html' | relative_url }}" style="color: #60a5fa; text-decoration: none; font-size: 0.85rem; font-weight: 500;">
      Open Fullpage 3D Viewer ↗
    </a>
  </div>
  <model-viewer
    src="{{ '/assets/models/airbike/airbike-assembly.glb' | relative_url }}"
    poster="{{ '/assets/images/airbike/airbike-assembly-hero.png' | relative_url }}"
    alt="3D CAD Assembly of Electric Airbike"
    auto-rotate
    rotation-per-second="20deg"
    camera-controls
    touch-action="pan-y"
    shadow-intensity="1.5"
    exposure="1.15"
    camera-orbit="45deg 60deg 110%"
    style="width: 100%; height: 500px; background: radial-gradient(circle at center, #25283b 0%, #11121a 100%); border-radius: 8px; outline: none;">
    <div slot="progress-bar" style="height: 4px; background: #3b82f6;"></div>
  </model-viewer>
  <div style="margin-top: 0.75rem; display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 0.5rem; font-size: 0.82rem; color: #94a3b8;">
    <span>🖱️ <strong>Interactive:</strong> Click + drag to orbit • Scroll to zoom • Two-finger drag to pan</span>
    <a href="{{ '/assets/models/airbike/airbike-assembly.glb' | relative_url }}" download style="color: #60a5fa; text-decoration: none;">
      ⬇ Download .GLB (53 MB)
    </a>
  </div>
</div>

---

## Project Overview

The objective of this project was to design an **electric personal airbike** starting from fixed baseline coordinates for the front and rear wheels, the operator steering control device (handlebars and linkage rod), and the rear electric drive motor. 

Rather than treating computer-aided engineering (CAE) as a passive visualization tool or an afterthought, this project utilized an aggressive, **simulation-driven design methodology**. Every primary vehicle subsystem—including the chassis, operator seat, suspension, fixed lifting surfaces, ducted propeller, battery array, and active cooling system—was evaluated and refined through an iterative design-analysis-redesign loop. 

Finite element analysis (FEA), computational fluid dynamics (CFD), and conjugate heat transfer (CHT) simulations were directly leveraged to expose structural under-design, aerodynamic stall risks, and thermal runaway hazards, driving tangible geometric and material evolutions across the airframe.

### Project at a Glance

| Parameter | Specification / Result |
|---|---|
| **Vehicle Concept** | Single-Operator Personal Electric Airbike |
| **Gross Vehicle Mass** | ~3,000 lbm (initial baseline with solid lifting surfaces) |
| **Operator Design Mass** | 200 lbf (modeled for 50th–95th percentile rider + gear) |
| **Main Chassis Tubing** | 6061-T6 Aluminum Round Tube: 2.50" OD × 0.25" Wall |
| **Chassis Rear Bracing** | 6061-T6 Aluminum Round Tube: 2.00" OD × 0.25" Wall |
| **Chassis Max Stress (V1 → V2)** | 52,330 psi → 2,786 psi (**94.7% reduction**) |
| **Chassis Max Deflection (V1 → V2)** | 5.512 in → 0.034 in (**99.4% reduction**) |
| **Chassis Minimum FOS (V1 → V2)** | 0.76 (Yield Failure) → 14.32 (High Stability) |
| **Seat & Suspension Material** | 7075-T6 High-Strength Aluminum (Gauge 3, $t = 0.2294\text{ in}$) |
| **Suspension Stress (V1 → V2)** | 30,130 psi → 17,880 psi (**40.7% reduction**; FOS 4.10) |
| **Propeller Normal Force (Thrust)** | **798.5 lbf** converged average at 75 mph cruise |
| **Lifting Wing Stress & FOS** | 4,795 psi (Balsa wood core, FOS 0.605 → upgraded to 6061-T6) |
| **Active Heat Exchanger Fluids** | R-134a Refrigerant ($\dot{m} = 1.17\text{ lb/s}$) & Battery Cooling Oil ($\dot{m} = 0.35\text{ lb/s}$) |
| **Primary Engineering Software** | SolidWorks CAD, SolidWorks Simulation FEA, SolidWorks Flow Simulation |

---

## Requirements & Geometric Packaging Constraints

The development began with strict physical interface constraints. The positions of the front wheel fork, rear axle, steering handlebars, and rear drive motor were fixed in space. The chassis structure had to bridge these components while ensuring sufficient packaging space for:

1. **Operator Ergonomics & Packaging:** Accommodating an upright seated operator weighing 200 lbf with clear foot placement along the lower chassis rails and uninhibited handlebar travel.
2. **Component Allocation:** Preserving the central volume between the seat pan and rear axle for the 200-cell battery pack and high-efficiency heat exchanger.
3. **Rear Wheel Clearance:** Establishing adequate clearance around the rear tire profile and wheel mounting brackets to prevent contact under dynamic suspension travel.
4. **Structural Load Transfer:** Transmitting propulsion thrust from the high-mounted ducted fan through the chassis to the wheels and wing root interfaces.

![Chassis Initial Packaging and Operator Placement]({{ '/assets/images/airbike/chassis-initial-packaging.png' | relative_url }})

*Initial packaging study establishing the structural frame geometry around the fixed wheel centers, steering axis, seated 200 lbf operator, and rear motor position.*

![Rear Wheel Mount and Clearance]({{ '/assets/images/airbike/chassis-rear-mount-clearance.png' | relative_url }})

*Detail view of the rear wheel mount and lower tubular rail interface, demonstrating tire clearance and mounting bracket integration.*

> **Engineering Decision:** Because the operator occupies the center of the airframe, the structural load paths could not follow a direct straight-line truss between the front fork and the rear motor. The upper rail was offset upward to support the seat and ducted fan mount, creating significant bending moments that dictated the subsequent FEA structural iterations.

---

## Chassis Structural Optimization (Linear Static FEA)

The chassis serves as the primary load-bearing spine of the vehicle. It was evaluated under static and dynamic loading representing the combined weight of a 200 lbf operator and a 400 lbf propulsion fan/motor assembly (providing a 2:1 dynamic safety margin over nominal propulsion hardware).

### Baseline Design (Chassis Version 1)

The initial chassis geometry utilized Aluminum 6061-T6 round tubing (2.50" OD × 0.25" wall thickness) spanning from the front steering head to the rear wheel dropouts. In Version 1, the upper rail supporting the propulsion assembly was cantilevered from the central bend without vertical truss bracing to the lower rail.

Fixtures were applied at the front steering tube and rear axle mounts. When loaded with the 200 lbf operator and 400 lbf rear propulsion assembly, FEA revealed catastrophic under-design:

![Chassis V1 von Mises Stress]({{ '/assets/images/airbike/chassis-v1-stress-fea.png' | relative_url }})

*Chassis V1 von Mises stress distribution. Peak stress of $5.233 \times 10^4\text{ psi}$ (52,330 psi) far exceeded the material yield strength ($3.989 \times 10^4\text{ psi}$), indicated by the red yield threshold arrow.*

![Chassis V1 Deflection]({{ '/assets/images/airbike/chassis-v1-deflection-fea.png' | relative_url }})

*Chassis V1 deflection contour showing a catastrophic maximum elastic deflection of 5.512 inches at the unsupported rear propulsion mount.*

![Chassis V1 Factor of Safety]({{ '/assets/images/airbike/chassis-v1-fos-fea.png' | relative_url }})

*Chassis V1 Factor of Safety (FOS) plot. The minimum FOS dropped to **0.76**, indicating immediate plastic deformation and structural failure under nominal static load.*

---

### Redesigned Architecture (Chassis Version 2)

To resolve the severe bending deflection and yield failure, the chassis geometry was modified by introducing **dual angled vertical rear truss tubes** fabricated from Aluminum 6061-T6 round tubing (2.00" OD × 0.25" wall thickness). These members triangulated the high-mounted propulsion load directly into the rear wheel mounting nodes.

The re-meshed and re-evaluated assembly produced dramatic structural improvements:

![Chassis V2 von Mises Stress]({{ '/assets/images/airbike/chassis-v2-stress-fea.png' | relative_url }})

*Chassis V2 von Mises stress distribution with rear truss bracing. Maximum stress dropped to $2.786 \times 10^3\text{ psi}$ (2,786 psi), representing an order-of-magnitude reduction well below material yield.*

![Chassis V2 Deflection]({{ '/assets/images/airbike/chassis-v2-deflection-fea.png' | relative_url }})

*Chassis V2 deflection contour demonstrating a maximum displacement of only 0.03444 inches (0.87 mm), restoring total frame rigidity.*

![Chassis V2 Factor of Safety]({{ '/assets/images/airbike/chassis-v2-fos-fea.png' | relative_url }})

*Chassis V2 Factor of Safety plot. The minimum FOS rose to **14.32**, confirming full structural integrity with substantial safety margins.*

### Chassis FEA Performance Comparison

| Structural Metric | Baseline (Chassis V1) | Redesigned (Chassis V2) | Delta / Improvement |
|---|---:|---:|---:|
| **Rear Vertical Bracing** | None (Cantilevered) | Dual 2.0" OD × 0.25" Wall Tubes | Triangulated Load Path |
| **Peak von Mises Stress** | 52,330 psi | 2,786 psi | **-94.7% stress reduction** |
| **Material Yield Strength** | 39,890 psi | 39,890 psi | Aluminum 6061-T6 |
| **Maximum Deflection** | 5.512 in | 0.034 in | **-99.4% deflection reduction** |
| **Minimum Factor of Safety** | **0.76** (Structural Failure) | **14.32** (Highly Stable) | **+1,784% FOS increase** |

> **Engineering Takeaway:** The chassis redesign exemplifies the utility of FEA as an active design guide. Simulation identified the exact location of bending failure, allowing a minor geometric addition (dual truss tubes) to eliminate 94.7% of peak stress and increase the factor of safety by over 17× without requiring exotic materials.

---

## Sheet Metal Seat Design & Nonlinear Dynamic Study

### Ergonomics and Sheet Metal Geometry

The operator seat was designed as a lightweight sheet metal structure tailored to rider anthropometrics and packaging envelope:

- **Material:** High-strength Aluminum 7075-T6
- **Sheet Thickness:** Gauge 3 ($t = 0.2294\text{ in}$)
- **Pan Dimensions:** $12\text{ in}$ width $\times 12\text{ in}$ seat depth $\times 16\text{ in}$ backrest height
- **Chassis Clearance:** $3.25\text{ in}$ nominal spacing from the chassis upper tube, leaving a $2.25\text{ in}$ gap between mounting flanges to accommodate a $1.0\text{ in}$ ergonomic shock-absorbing cushion.

![Sheet Metal Seat Design Model]({{ '/assets/images/airbike/seat-sheet-metal-design.png' | relative_url }})

*SolidWorks sheet metal model of the operator seat, featuring formed bends, side mounting flanges, and weight-relief cutouts.*

---

### Nonlinear Dynamic Loading Formulation

Rather than assuming a static load, a **nonlinear time-dependent simulation** was formulated over a $2.0\text{ second}$ duration across 100 solver time steps. This modeled the realistic physical behavior of a rider shifting weight rearward under forward vehicle acceleration:

- **Initial State ($t = 0\text{ s}$):** $200\text{ lbf}$ normal downward load on the horizontal seat pan; $0\text{ lbf}$ on the backrest.
- **Dynamic Transition ($0 < t \le 2\text{ s}$):** Rider inertia transfers $25\%$ of total weight into the angled backrest:
  
  $$
  F_{\text{seat}}(t) = 200 - 25t \quad [\text{lbf}] \quad \longrightarrow \quad F_{\text{seat}}(2) = 150\text{ lbf}
  $$
  
  $$
  F_{\text{backrest}}(t) = 25t \quad [\text{lbf}] \quad \longrightarrow \quad F_{\text{backrest}}(2) = 50\text{ lbf}
  $$

![Nonlinear Seat FEA Stress Distribution]({{ '/assets/images/airbike/seat-nonlinear-stress-fea.png' | relative_url }})

*Nonlinear nodal stress results at $t = 2.0\text{ s}$ (Time Step 100). Maximum von Mises stress reached $3.934 \times 10^4\text{ psi}$ (39,340 psi) at the lower formed mounting bend.*

### Factor of Safety Evaluation

The Factor of Safety was determined from the material yield strength of Aluminum 7075-T6 ($\sigma_y = 73,240\text{ psi}$):

$$
\text{FOS} = \frac{\sigma_{\text{yield}}}{\sigma_{\text{max}}} = \frac{7.324 \times 10^4\text{ psi}}{3.934 \times 10^4\text{ psi}} = 1.862
$$

While an FOS of **1.862** demonstrates static compliance without yield, the nonlinear analysis highlighted substantial elastic compliance at the forward pan tongue. To prevent cyclic rider fatigue and mitigate road shocks transferred into the chassis, an auxiliary suspension system was required.

---

## Seat Suspension System & Fatigue Life Analysis

To decouple operator inertia from high-frequency road vibrations and frame flex, an integrated leaf-spring suspension bracket was developed to sit between the chassis upper rail and the seat frame.

![Seat Suspension Assembly Integration]({{ '/assets/images/airbike/seat-suspension-assembly-integration.png' | relative_url }})

*Integrated seat suspension bracket (RevP2) mounted directly between the chassis tube and the sheet metal seat pan beneath the operator.*

---

### Suspension Iteration: RevP1 vs. RevP2

The suspension bracket was manufactured from Aluminum 7075-T6. 
- **Version 1 (RevP1):** Utilized a sharp curved interface connecting the upper seat flange to the lower chassis clamp. FEA revealed severe stress concentrations and excessive vertical compliance ($0.66\text{ in}$ deflection).
- **Version 2 (RevP2):** Redesigned with a continuous-arc leaf spring geometry and planar mounting pads that distributed dynamic bending moments across the entire curved flank.

Loading conditions simulated a simultaneous worst-case dynamic event: $200\text{ lbf}$ vertical seat load combined with a $25\text{ lbf}$ rearward inertial backrest load.

![Seat Suspension V2 von Mises Stress]({{ '/assets/images/airbike/seat-suspension-v2-stress-fea.png' | relative_url }})

*Seat Suspension RevP2 static nodal stress contour. Peak stress dropped to $1.788 \times 10^4\text{ psi}$ (17,880 psi), well below the 73,240 psi yield limit.*

![Seat Suspension V2 Displacement]({{ '/assets/images/airbike/seat-suspension-v2-displacement-fea.png' | relative_url }})

*Seat Suspension RevP2 displacement contour showing a maximum deflection of 0.400 inches under full combined operator load.*

### Suspension Iteration Performance

| Metric | Version 1 (RevP1) | Version 2 (RevP2) | Improvement |
|---|---:|---:|---:|
| **Peak von Mises Stress** | 30,130 psi | 17,880 psi | **-40.66% reduction** |
| **Maximum Displacement** | 0.660 in | 0.400 in | **-39.39% reduction** |
| **Minimum Factor of Safety** | 2.432 | 4.097 | **+168.8% increase** |

### Critical Evaluation of Fatigue Life Solver Output

During cyclic fatigue analysis in SolidWorks Simulation, the damage percentage and cycle-life plots produced uniform fields across the part geometry. 

> **Critical Engineering Assessment:** Investigation revealed a simulation solver limitation: the S-N fatigue curve for 7075-T6 in the material database truncated below the peak applied stress ($17.88\text{ ksi}$), causing the solver to classify the entire part as having theoretical "infinite life" ($>10^6\text{ cycles}$). Rather than presenting this numerical artifact as physical ground truth, the limitation was explicitly documented. The structural superiority of RevP2 is verified through the confirmed 40.7% stress reduction and 4.10 factor of safety.

---

## Battery Pack Thermal Study & Runaway Investigation

The electric airbike's powertrain relies on a central high-density battery pack comprising a **10×20 array of 18650 cylindrical lithium-ion cells** (200 cells total). 

### Preliminary Passive Cooling Model

A thermal study was conducted to evaluate whether passive air convection and exterior surface fins could adequately cool the battery pack during peak power draw:

- **Heat Generation:** $0.30\text{ W}$ per cell ($60\text{ W}$ total pack heat generation, equivalent to an aggressive volumetric thermal input of $44\text{ BTU/s}$ applied across the cell array bodies).
- **Convective Boundary Condition:** Free air convection across external aluminum enclosure surfaces with heat transfer coefficient $h = 10\text{ W/m}^2\cdot\text{K}$ ($3.4 \times 10^{-6}\text{ BTU/s}\cdot\text{in}^2\cdot^\circ\text{F}$).

![Battery Pack Thermal Runaway FEA]({{ '/assets/images/airbike/battery-pack-thermal-runaway-fea.png' | relative_url }})

*Thermal simulation contour of the 10×20 battery array enclosure under passive convective boundary conditions, showing internal heat stagnation and extreme temperature accumulation.*

### Simulation Findings & Physical Interpretation

The steady-state solver converged to a peak internal temperature of **$770,100^\circ\text{F}$** ($7.701 \times 10^5^\circ\text{F}$), with a minimum temperature of $418,900^\circ\text{F}$ along the top enclosure edge.

> **Engineering Judgment:** In physical reality, lithium-ion battery cells undergo irreversible catastrophic failure via **thermal runaway** between $130^\circ\text{C}$ and $150^\circ\text{C}$ ($266^\circ\text{F} - 302^\circ\text{F}$), resulting in electrolyte boiling, cell venting, and combustion. 
> 
> The astronomical simulated temperature is an obvious **computational modeling artifact** resulting from setting a steady-state thermal balance on a closed system where internal volumetric heat generation drastically exceeds passive convective dissipation. This simulation provided a vital engineering conclusion: **passive air cooling is completely non-viable for this powertrain. An active liquid-cooled heat exchanger system is mandatory.**

---

## Fixed-Wing Aerodynamics & Structural Aeroelasticity

### Airfoil Design and External CFD

A custom fixed wing was engineered from scratch to provide aerodynamic lift at cruise speeds without requiring complex mechanical flaps or flight control surfaces:

- **Flow Domain:** 3D external computational flow tunnel in SolidWorks Flow Simulation.
- **Flight Velocities:** Simulated at preliminary cruise ($55\text{ mph}$ / $80.7\text{ ft/s}$) and high-speed cruise ($75\text{ mph}$ / $110.0\text{ ft/s}$).
- **Flow Physics:** Navier-Stokes formulation with $k$-$\epsilon$ turbulence modeling, resolving boundary layer development and pressure distribution.

![Wing Flow Simulation Velocity Cut Plot]({{ '/assets/images/airbike/wing-cfd-velocity-cut-plot.png' | relative_url }})

*Velocity cut plot across the wing chord at 55 mph. Air accelerates over the upper suction surface to a maximum velocity of 96.67 mph, creating the required low-pressure lift field, while wake velocity drops to 17.78 mph.*

![Wing Surface Pressure Distribution]({{ '/assets/images/airbike/wing-cfd-surface-pressure.png' | relative_url }})

*Distributed normal aerodynamic force contour across the wing surface. Upper surface distributed suction reaches $-14.61\text{ lbf/in}^2$, producing net positive lift.*

---

### One-Way Fluid-Structure Interaction (FSI) & Structural FEA

The pressure and shear stress fields computed in the flow simulation were exported directly into SolidWorks Simulation as distributed external loads for a static structural finite element study.

The wing root was fixed at the chassis mounting boss. An initial material study evaluated lightweight **balsa wood core construction**:

![Wing Structural FEA Stress Distribution]({{ '/assets/images/airbike/wing-structural-stress-fea.png' | relative_url }})

*Static nodal stress distribution in the wing under 55 mph aerodynamic flight loads. Maximum stress reached 4,795 psi at the wing root/tip junction, exceeding balsa wood yield strength (2,901 psi).*

### Aero-Structural Findings

- **Maximum von Mises Stress:** $4,795\text{ psi}$
- **Balsa Wood Yield Strength:** $2,901\text{ psi}$
- **Maximum Tip Deflection:** $0.6859\text{ in}$
- **Minimum Factor of Safety:** **0.605**

Because the minimum FOS was **0.605**, balsa wood was incapable of sustaining the aerodynamic bending moment. 

> **Material Evolution & Vehicle Trade-off:** The wing material was upgraded to **Aluminum 6061-T6** in the master vehicle assembly, elevating the structural factor of safety well above 2.0. However, because early CAD models treated the wings as solid bodies, this material change added substantial parasitic weight, establishing the vehicle-level optimization described below.

---

## Ducted Propeller Flow Simulation & Thrust Sizing

Forward propulsion is generated by a rear-mounted ducted fan comprising a multi-bladed aerodynamic propeller surrounded by a protective shroud and flow duct.

### Computational Setup (Rotating Region Flow)

- **Domain:** Rotating Region (MRF / Moving Reference Frame) transient flow domain enclosing the propeller blades.
- **Flight Condition:** $75\text{ mph}$ vehicle forward velocity.
- **Goals:** Real-time monitoring of thrust force ($\text{GG Normal Force } Y$), aerodynamic torque, total pressure, and wake velocity.

![Propeller Rotating Region Trajectories]({{ '/assets/images/airbike/propeller-rotating-region-trajectories.png' | relative_url }})

*Velocity flow trajectories through the rotating ducted propeller domain at $t = 5.0\text{ s}$, illustrating blade tip vortex development, wake expansion, and acceleration through the shroud.*

![Propeller Thrust Goal Plot]({{ '/assets/images/airbike/propeller-thrust-goal-convergence.png' | relative_url }})

*SolidWorks Flow Simulation Goal Plot showing mathematical convergence of propeller thrust, total pressure, and velocity over solver iterations.*

### Quantitative Propulsion Results

| Goal Name | Instantaneous Value | Averaged Converged Value | Minimum | Maximum | Convergence Delta |
|---|---:|---:|---:|---:|---:|
| **GG Normal Force (Thrust)** | **-824.13 lbf** | **-798.55 lbf** | -828.27 lbf | -771.93 lbf | 16.41 lbf |
| **GG Average Velocity** | 74.67 mph | 74.66 mph | 74.65 mph | 74.67 mph | 0.02 mph |
| **PG Total Pressure** | 14.639 psi | 14.602 psi | 14.575 psi | 14.639 psi | 0.002 psi |
| **SG Torque (Y) at Gear** | -0.002 lbf·ft | -1.21e-4 lbf·ft | -0.005 lbf·ft | 0.005 lbf·ft | 2.46e-4 lbf·ft |

---

### Vehicle-Level Thrust-to-Weight Synthesis

The rotating-region simulation demonstrated that the ducted propeller generates an average forward normal force of **$798.5\text{ lbf}$** (~$800\text{ lbf}$ thrust).

However, executing the **Mass Properties** command across the full vehicle CAD assembly indicated a total vehicle mass of approximately **$3,000\text{ lbm}$** (driven heavily by the solid aluminum wings and 200-cell battery enclosure).

The resulting thrust-to-weight ratio:

$$
\frac{T}{W} = \frac{798.5\text{ lbf}}{3,000\text{ lbf}} \approx 0.266
$$

> **Engineering Assessment:** A thrust-to-weight ratio of $0.27$ is sufficient for low-speed ground taxi, but marginal for takeoff acceleration and climb gradient. 
> 
> Rather than viewing this as a failure, the analysis established clear, quantified design optimization paths:
> 1. **Wing Structural Lightweighting:** Redesign the solid aluminum wings as hollow structures featuring internal ribs, an extruded spar web, and thin composite/aluminum skin, reducing wing mass by $>60\%$.
> 2. **Chassis Tube Wall Optimization:** The V2 chassis demonstrated an FOS of 14.32. Thinning the tube wall from 0.25" to 0.125" in low-stress zones will shed significant chassis mass while preserving an FOS $>3.0$.
> 3. **Propulsion Refinement:** Enlarge fan duct diameter, optimize blade twist distribution, and increase blade count to raise thrust toward $1,000\text{ lbf}$.

---

## Battery Pack Heat Exchanger (Conjugate Heat Transfer CFD)

To resolve the thermal runaway risk identified in the battery pack, a multi-pass **conjugate heat transfer (CHT) liquid heat exchanger** was developed.

![Heat Exchanger Serpentine Tubing CAD Model]({{ '/assets/images/airbike/heat-exchanger-cad-configuration.png' | relative_url }})

*CAD geometry of the multi-pass serpentine heat exchanger, showing intertwined dual-fluid flow circuits embedded within the aluminum heat-sink body.*

---

### Analytical Derivation of Mass Flow Boundary Conditions

Rather than applying an arbitrary velocity inlet, **mass flow rate boundary conditions** were calculated. In thermal flow domains with high temperature gradients, fluid density $\rho$ varies substantially. Imposing a fixed velocity inlet causes artificial mass imbalances as fluid expands or contracts:

$$
\dot{m} = \rho A v = \rho \left( \frac{\pi D^2}{4} \right) v
$$

For an internal pipe diameter $D = 0.75\text{ in}$ ($A = 0.4418\text{ in}^2 = 0.003068\text{ ft}^2$):

1. **Refrigerant Circuit (R-134a):**
   - Inlet Temperature: $40^\circ\text{F}$
   - Target Velocity: $v = 5.0\text{ ft/s}$
   - Derived Mass Flow Rate: **$\dot{m}_{\text{R134a}} = 1.17\text{ lb/s}$**

2. **Cooling Oil Circuit (Dielectric Oil):**
   - Inlet Temperature: $200^\circ\text{F}$ (simulating heat rejection from the hot battery array)
   - Target Velocity: $v = 2.0\text{ ft/s}$
   - Derived Mass Flow Rate: **$\dot{m}_{\text{oil}} = 0.35\text{ lb/s}$**

---

### Thermal Flow Simulation Results

The conjugate heat transfer simulation solved simultaneous conduction in the aluminum housing and convection/advection in both fluid streams:

![Heat Exchanger Surface Temperature Contour]({{ '/assets/images/airbike/heat-exchanger-surface-temperature.png' | relative_url }})

*Surface temperature plot of the heat exchanger assembly. The hot dielectric oil enters at 200°F (red) and transfers heat into the counter-flowing R-134a circuit.*

![Heat Exchanger Fluid Flow Trajectories]({{ '/assets/images/airbike/heat-exchanger-flow-trajectories.png' | relative_url }})

*Fluid flow trajectories through the dual serpentine circuits showing thermal gradients from the 200°F oil inlet to the chilled refrigerant stream.*

![Heat Exchanger Goal Convergence Plot]({{ '/assets/images/airbike/heat-exchanger-goal-convergence.png' | relative_url }})

*Heat exchanger goal convergence table, validating numerical stabilization of fluid temperatures and velocities across 138 iterations.*

### Thermal Performance Data Summary

| Goal Parameter | Instantaneous Value | Averaged Converged Value | Minimum | Maximum |
|---|---:|---:|---:|---:|
| **GG Average Fluid Temperature** | 99.92 °F | 99.81 °F | 99.67 °F | 99.92 °F |
| **GG Average Velocity** | 143.51 ft/s | 143.06 ft/s | 142.13 ft/s | 143.54 ft/s |
| **SG R-134a Exit Temperature (Fluid)** | -15.70 °F | -16.37 °F | -17.19 °F | -15.38 °F |
| **SG Oil Exit Temperature (Fluid)** | 198.97 °F | 199.54 °F | 198.83 °F | 199.97 °F |
| **SG R-134a Exit Temperature (Solid)** | -2.65 °F | -3.03 °F | -3.52 °F | -2.30 °F |
| **SG Oil Input Temperature (Solid)** | 200.00 °F | 200.00 °F | 200.00 °F | 200.00 °F |

---

### Investigation of the $-9.81^\circ\text{F}$ Flash Cooling Phenomenon

The surface temperature plot revealed an unexpected localized minimum temperature of **$-9.81^\circ\text{F}$** at the R-134a outlet. 

> **Thermodynamic Root-Cause Investigation:** Liquid R-134a entering at $40^\circ\text{F}$ requires a saturation pressure of approximately $P_{\text{sat}} \approx 49.7\text{ psia}$ to remain in the liquid state without vaporizing. 
> 
> Because the initial simulation boundary condition discharged into ambient atmospheric pressure ($14.7\text{ psia}$ / $1\text{ atm}$), the pressure drop triggered rapid **expansion cooling (flashing)**. Under atmospheric pressure, R-134a boiling drops its saturation temperature to approximately $-15^\circ\text{F}$, driving localized evaporative chilling at the pipe exit.
> 
> **Design Fix for Closed-Loop Operation:** In an operational vehicle refrigeration cycle, the heat exchanger discharges into a closed, pressurized return line. Setting a backpressure boundary condition of **$50 - 60\text{ psia}$** eliminates this expansion artifact and maintains single-phase liquid flow throughout the cooling core.

---

## Multiphysics Synthesis & Design Outcomes

Across the entire development cycle, simulation was employed as an active diagnostic and design tool rather than a final documentation check. The table below summarizes the problems detected and the engineering solutions implemented:

| Vehicle Subsystem | Baseline Analysis & Detected Problem | Engineering Iteration & Solution | Final Performance Outcome |
|---|---|---|---|
| **Chassis Frame** | Cantilevered upper rail experienced bending failure ($\sigma = 52.3\text{ ksi} > \sigma_y = 39.9\text{ ksi}$; $\text{Deflection} = 5.51"$; $\text{FOS} = 0.76$). | Added dual vertical angled 6061-T6 truss tubes ($2.0" \text{ OD} \times 0.25" \text{ wall}$) triangulating load to rear wheel mount. | $\sigma_{\text{max}} = 2.786\text{ ksi}$ (**-94.7%**); $\text{Deflection} = 0.034"$ (**-99.4%**); $\text{Minimum FOS} = 14.32$. |
| **Operator Seat** | Significant tongue flexure under dynamic load transfer ($200\text{ lbf} \rightarrow 150\text{ lbf}$ seat, $50\text{ lbf}$ backrest over 2s). | Engineered formed 7075-T6 sheet metal pan ($t = 0.2294"$) with $2.25"$ clearance for $1.0"$ cushion. | Peak stress $39.34\text{ ksi}$; static $\text{FOS} = 1.862$; identified requirement for compliant suspension. |
| **Seat Suspension** | RevP1 sharp curved geometry produced stress concentration ($30.13\text{ ksi}$) and excessive displacement ($0.66"$). | RevP2 continuous-arc leaf spring bracket distributing moment loads evenly across mounting pads. | Peak stress $17.88\text{ ksi}$ (**-40.7%**); displacement $0.40"$ (**-39.4%**); $\text{Minimum FOS} = 4.10$. |
| **Battery Array** | Passive air convection was mathematically incapable of dissipating heat, yielding a runaway temperature artifact ($770,100^\circ\text{F}$). | Eliminated passive cooling; designed active dual-fluid conjugate heat transfer heat exchanger. | Established absolute requirement for active liquid cooling; prevented catastrophic thermal runaway. |
| **Lifting Wings** | Balsa wood wing failed under aerodynamic lift ($\sigma = 4,795\text{ psi} > \sigma_y = 2,901\text{ psi}$; $\text{FOS} = 0.605$). | Upgraded to Aluminum 6061-T6; identified solid-model parasitic weight penalty. | $\text{FOS} > 2.0$; established design roadmap for ribbed/sparred composite lightweighting. |
| **Propulsion Fan** | Modeled ducted fan output $798.5\text{ lbf}$ thrust vs. $3,000\text{ lbm}$ vehicle gross mass ($T/W \approx 0.27$). | Rotating-region CFD verified blade flow; established vehicle-level weight reduction strategy. | $798.5\text{ lbf}$ thrust verified; outlined $>60\%$ wing weight reduction and duct diameter optimization. |
| **Heat Exchanger** | Atmospheric outlet boundary condition triggered unintended refrigerant flash expansion cooling ($-9.81^\circ\text{F}$). | Applied mass-flow inlets ($\dot{m}_{\text{R134a}} = 1.17\text{ lb/s}$, $\dot{m}_{\text{oil}} = 0.35\text{ lb/s}$); specified pressurized return loop. | Conjugate heat transfer stabilized; $50 - 60\text{ psia}$ loop backpressure defined to eliminate flashing artifacts. |

---

## Design Workflow Progression

The engineering workflow demonstrated in this project spans conceptual packaging to vehicle-level multiphysics optimization:

```
Fixed Packaging & Ergonomic Envelope
               │
               ▼
   3D SolidWorks CAD Modeling
               │
               ▼
 Linear Static FEA (Chassis Optimization)
   • Detected 5.51" deflection & 0.76 FOS
   • Integrated dual rear truss tubes (FOS -> 14.3)
               │
               ▼
 Nonlinear Dynamics & Fatigue Studies
   • 2-second weight shift on sheet metal seat
   • Integrated RevP2 leaf-spring suspension (FOS -> 4.1)
               │
               ▼
 Aerodynamic CFD & One-Way FSI
   • Wing flow cut plots at 55 mph and 75 mph
   • Transferred CFD pressure loads into structural FEA
   • Replaced failing balsa wood with 6061-T6
               │
               ▼
 Rotating-Region Propeller Simulation
   • Ducted fan thrust convergence: 798.5 lbf
   • Evaluated vehicle thrust-to-weight ratio (T/W = 0.27)
               │
               ▼
 Conjugate Heat Transfer (Thermal Management)
   • Exposed non-physical passive runaway (770,100 °F)
   • Designed R-134a / oil serpentine heat exchanger
   • Diagnosed and resolved -9.81 °F flash expansion artifact
               │
               ▼
 Vehicle-Level Weight & Performance Optimization
```

---

## My Contributions

### 1. Full-Vehicle CAD Modeling & Subsystem Integration
- Modeled the entire electric airbike assembly in SolidWorks from scratch around fixed packaging coordinates.
- Designed the tubular aluminum chassis, sheet metal operator seat, compliant leaf-spring suspension, aerodynamic wing airfoils, ducted propeller shroud, battery array, and serpentine heat exchanger.
- Resolved ergonomic interference between the 200 lbf human model, handlebars, chassis rails, and drive motor.

### 2. Structural Finite Element Analysis (FEA)
- Executed linear static FEA on the chassis, diagnosing catastrophic cantilever failure in Version 1 and implementing the dual rear truss tubes in Version 2.
- Set up a 100-step nonlinear dynamic study on the sheet metal seat, capturing a 2-second shifting weight profile.
- Designed and refined the RevP2 seat suspension bracket, slashing peak stress by 40.7% and boosting the factor of safety from 2.43 to 4.10.
- Executed one-way fluid-structure interaction (FSI) by exporting CFD surface pressure fields directly into wing structural FEA.

### 3. Computational Fluid Dynamics (CFD) & Propulsion
- Modeled external wing aerodynamics across 55 mph and 75 mph cruise conditions, analyzing velocity cut contours, wake structures, and surface pressure distributions.
- Established a Moving Reference Frame (MRF) rotating region study for the shrouded propeller, achieving numerical goal convergence of 798.5 lbf forward thrust.
- Compared propulsion thrust against the 3,000 lbm vehicle gross mass, proposing actionable lightweighting paths.

### 4. Thermal Analysis & Computational Diagnostics
- Formulated the battery pack thermal study, correctly diagnosing the simulated $770,100^\circ\text{F}$ condition as a modeling artifact indicating that passive cooling is physically non-viable.
- Designed a multi-pass counter-flow heat exchanger and derived analytical mass flow boundary conditions ($\dot{m}_{\text{R134a}} = 1.17\text{ lb/s}$, $\dot{m}_{\text{oil}} = 0.35\text{ lb/s}$).
- Investigated and explained the localized $-9.81^\circ\text{F}$ exit flash freezing artifact, determining that unpressurized boundary conditions caused R-134a phase-change flashing.

---

## Engineering Takeaways

### 1. Simulation Must Drive Geometry, Not Merely Confirm It
The primary purpose of engineering simulation is not to generate colorful contours for a report, but to expose critical weaknesses before physical fabrication. The chassis redesign is the purest example of this philosophy: linear static FEA caught an unacceptable 5.5-inch deflection and an FOS of 0.76, directly guiding the addition of rear truss supports that increased safety margins by 1,780%.

### 2. Subsystem Solutions Must Be Evaluated at the Vehicle Level
Optimizing an isolated subsystem can create unforeseen penalties at the vehicle level. When the wing core failed in balsa wood, upgrading to solid 6061-T6 aluminum easily satisfied the structural FOS requirement—but it drove overall vehicle weight to approximately 3,000 lbm. Comparing this mass against the 798.5 lbf fan thrust proved that solid metal wings crippled the vehicle's thrust-to-weight ratio, demonstrating that true aerospace design requires hollow, rib-and-spar lightweight structures.

### 3. Rigorous Evaluation of Computational Artifacts
A competent simulation engineer must know when **not** to trust a software result at face value:
- When the battery pack reached $770,100^\circ\text{F}$, recognizing that physical cells undergo thermal runaway at $300^\circ\text{F}$ exposed that passive cooling was fundamentally impossible.
- When the fatigue study produced uniform damage plots, understanding S-N curve truncation prevented the false claim of infinite cycle life.
- When the heat exchanger exit registered $-9.81^\circ\text{F}$, thermodynamic phase-equilibrium analysis correctly identified atmospheric flash expansion, guiding the implementation of a 50–60 psia pressurized loop.

---

## Supporting Technical Documents

The following documents contain the complete technical record, slide presentations, and detailed engineering data for this project:

- **[Electric Airbike CAD Model Assembly (Interactive 3D Viewer)]({{ '/projects/airbike-cad-viewer.html' | relative_url }})** • [Direct 3D Model (.GLB)]({{ '/assets/models/airbike/airbike-assembly.glb' | relative_url }})
- **[Electric Airbike Full Technical Presentation (PPTX)]({{ '/assets/docs/airbike/electric-airbike-final-presentation.pptx' | relative_url }})**  
  *Complete 136-slide comprehensive deck containing all setup screens, boundary conditions, mesh parameters, animations, and intermediate FEA/CFD result plots.*
- **[Electric Airbike Deep Dive Summary Report (PDF)]({{ '/assets/docs/airbike/airbike-deep-dive-summary.pdf' | relative_url }})**  
  *Executive summary report detailing the design-analysis-redesign loop across all primary vehicle subsystems.*
- **[Electric Airbike Quick Overview Page]({{ '/projects/airbike-quick-overview.html' | relative_url }})**  
  *Condensed high-level project summary for recruiters and quick reviews.*

---

[← Back to Portfolio Home]({{ '/' | relative_url }})
