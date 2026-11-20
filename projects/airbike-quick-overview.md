---
layout: default
title: Electric Airbike Quick Overview | Simulations
permalink: /projects/airbike-quick-overview.html
---

<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=JetBrains+Mono:wght@400;500;600;700&display=swap');
html, body { background-color: #FFFFFF; color: #09090B; font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif; overflow-x: clip; -webkit-font-smoothing: antialiased; }
h1, h2, h3, h4 { color: #09090B; font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif; font-weight: 700; }
h1 { font-size: 2.15rem; font-weight: 800; letter-spacing: -0.03em; }
h2 { font-size: 1.4rem; border-bottom: 1.5px solid #18181B; padding-bottom: 0.4rem; margin-top: 2.2rem; }
a { color: #09090B; text-decoration: underline; text-decoration-color: #FFCC00; text-decoration-thickness: 2px; text-underline-offset: 3px; font-weight: 600; }
a:hover { background-color: #FFCC00; color: #09090B; }
table { width: 100%; border-collapse: collapse; margin: 1.5rem 0; background: #FFFFFF; border: 1.5px solid #18181B; border-radius: 3px; box-shadow: 4px 4px 0px #18181B; }
th, td { padding: 0.65rem 0.95rem; text-align: left; border-bottom: 1px dashed #D4D4D8; }
th { background: #F3F4F6; color: #09090B; font-family: 'JetBrains Mono', monospace; font-size: 0.76rem; font-weight: 700; text-transform: uppercase; letter-spacing: 0.05em; border-bottom: 1.5px solid #18181B; }
tr:last-child td { border-bottom: none; }
blockquote { background: #F3F4F6; border: 1.5px solid #18181B; border-left: 4px solid #FFCC00; border-radius: 3px; padding: 0.85rem 1.2rem; box-shadow: 3px 3px 0px #18181B; color: #09090B; }
img { max-width: 100%; height: auto; border: 1.5px solid #18181B; border-radius: 3px; box-shadow: 4px 4px 0px #18181B; background: #F3F4F6; display: block; margin: 1.25rem 0 0.5rem 0; }
.bp-action-bar { display: flex; gap: 0.65rem; flex-wrap: wrap; margin: 1.35rem 0; }
a.bp-btn { display: inline-flex; align-items: center; gap: 0.45rem; padding: 0.5rem 0.9rem; border-radius: 2px; border: 1.5px solid #18181B; font-family: 'JetBrains Mono', monospace; font-size: 0.8rem; text-decoration: none; }
a.bp-btn-primary { background: #FFCC00; color: #09090B; font-weight: 700; }
a.bp-btn-primary:hover { background: #E6B800; color: #09090B; }
a.bp-btn-secondary { background: #FFFFFF; color: #09090B; font-weight: 600; }
a.bp-btn-secondary:hover { background: #FFCC00; color: #09090B; }
</style>

# Electric Airbike Simulations — Quick Overview

**Simulation-Driven Vehicle Engineering & Multiphysics Optimization**  
**Author / Engineer:** Lucas Lebron  
**Role:** Full-Vehicle CAD Integration, Structural FEA (Linear & Nonlinear), Rotating-Region CFD, and Thermal CHT Analysis  
**Read Time:** ~3 minutes

<div class="bp-action-bar">
  <a href="airbike.html" class="bp-btn bp-btn-primary">
  Read Full Technical Deep-Dive Report →
  </a>
  <a href="airbike-cad-viewer.html" class="bp-btn bp-btn-secondary">
  Launch Interactive 3D Viewer ⛶
  </a>
  <a href="../" class="bp-btn bp-btn-secondary">
  ← Back to Home
  </a>
</div>

---

## Executive Summary

Given fixed baseline coordinates for the front/rear wheels, steering handlebars, and rear drive motor, I designed a single-operator **electric personal airbike** in SolidWorks. 

Rather than treating simulation as a post-design validation step, computational analysis was actively utilized to drive geometric and material revisions across the vehicle. Through finite element analysis (FEA), computational fluid dynamics (CFD), and conjugate heat transfer (CHT), structural weaknesses, aerodynamic deficiencies, and thermal runaway risks were exposed and resolved.

![Electric Airbike Full Vehicle CAD Assembly](../assets/images/airbike/airbike-assembly-hero.png)

*Final Electric Airbike assembly modeled in SolidWorks, showcasing the tubular chassis, operator packaging, mid-mounted battery/cooling core, swept wings, and rear ducted fan.*

---

## Key Parameters at a Glance

| Subsystem | Specification / Parameter | Performance / Result |
|:---|:---|:---|
| **Chassis Material** | 6061-T6 Aluminum Round Tube | 2.50" OD × 0.25" Wall (primary) / 2.0" OD (bracing) |
| **Chassis Peak Stress** | 52,330 psi (V1 unsupported) → **2,786 psi** (V2 braced) | **-94.7% stress reduction** (Yield: 39,890 psi) |
| **Chassis Deflection** | 5.512 in (V1 unsupported) → **0.034 in** (V2 braced) | **-99.4% deflection reduction** |
| **Chassis Factor of Safety**| 0.76 (Immediate failure) → **14.32** (High margin) | **+1,784% structural safety margin** |
| **Operator Seat & Leaf Spring** | 7075-T6 High-Strength Aluminum Sheet | Peak stress 17,880 psi; Minimum FOS = 4.10 |
| **Lifting Wing Structure** | Custom tapered airfoil | Balsa core failed (FOS 0.605) → Upgraded to 6061-T6 |
| **Ducted Propeller Propulsion** | Shrouded multi-blade rotating region | **798.5 lbf** converged average forward thrust |
| **Battery Array** | 10×20 Cylindrical 18650 cell pack | Passive cooling failed ($770,100^\circ\text{F}$ runaway artifact) |
| **Liquid Heat Exchanger** | Serpentine CHT (R-134a / Dielectric Oil) | $\dot{m}_{\text{R134a}} = 1.17\text{ lb/s}$, $\dot{m}_{\text{oil}} = 0.35\text{ lb/s}$; $50\text{ psia}$ loop |

---

## Core Engineering Challenges & Solutions

### 1. Chassis Bending Failure → Truss Triangulation
- **Problem:** In the initial cantilevered frame (Version 1), static loading under a 200 lbf rider and 400 lbf fan caused 5.51 inches of elastic deflection and 52,330 psi peak stress, failing yield with an FOS of 0.76.
- **Solution:** Integrated dual angled vertical rear truss tubes (2.0" OD × 0.25" wall), triangulating the propulsion load path into the rear wheel mount. Max stress plummeted to 2,786 psi (-94.7%), deflection dropped to 0.034 inches (-99.4%), and minimum FOS increased to 14.32.

![Chassis V2 Stress and Deflection](../assets/images/airbike/chassis-v2-stress-fea.png)

*Chassis V2 FEA showing order-of-magnitude stress reduction well below 6061-T6 yield strength.*

### 2. Seat Ergonomics & Nonlinear Dynamic Loading
- **Challenge:** Rider weight dynamically shifts rearward during vehicle acceleration, inducing cyclic fatigue.
- **Action:** Formulated a 100-step nonlinear simulation over a 2.0-second time interval transferring 25% of load to the backrest. To mitigate compliance, engineered an integrated 7075-T6 continuous-arc leaf spring suspension bracket (RevP2), reducing peak stress by 40.7% and raising FOS to 4.10.

![Seat Suspension V2 Stress](../assets/images/airbike/seat-suspension-v2-stress-fea.png)

*Seat Suspension RevP2 static nodal stress contour (17.88 ksi max stress; 4.10 factor of safety).*

### 3. Battery Passive Runaway → Active CHT Heat Exchanger
- **Problem:** Convective thermal modeling of the 200-cell battery pack produced a simulated temperature of $770,100^\circ\text{F}$. Recognizing that cells undergo catastrophic thermal runaway around $300^\circ\text{F}$, this exposed passive cooling as fundamentally impossible.
- **Solution:** Replaced passive fins with an active dual-fluid conjugate heat transfer (CHT) serpentine heat exchanger. Derived mass flow boundary conditions ($\dot{m}_{\text{R134a}} = 1.17\text{ lb/s}$, $\dot{m}_{\text{oil}} = 0.35\text{ lb/s}$) to ensure numerical continuity across thermal gradients.

![Heat Exchanger Surface Temperature Plot](../assets/images/airbike/heat-exchanger-surface-temperature.png)

*Conjugate heat transfer simulation displaying fluid temperature gradients through the serpentine cooling core.*

### 4. Vehicle-Level Thrust-to-Weight Synthesis
- **Action:** Executed a rotating-region CFD study on the ducted fan, verifying 798.5 lbf thrust. Comparing this against the 3,000 lbm vehicle mass revealed a marginal $T/W \approx 0.27$, driven by early solid-modeled aluminum wings.
- **Optimization:** Defined a design roadmap transitioning wings to ribbed/sparred hollow composite construction to cut wing mass by $>60\%$, thinning chassis tube walls in low-stress zones (leveraging the 14.3 FOS), and enlarging fan duct diameter.

---

## Technical Documentation & Downloads

- **[Full Technical Deep-Dive Report](airbike.html)**  
  *Complete, comprehensive technical case study covering all equations, FEA plots, CFD vector contours, and engineering derivations.*
- **[Electric Airbike CAD Model Assembly (Interactive 3D Viewer)](airbike-cad-viewer.html)** • [Direct 3D Model (.GLB)](../assets/models/airbike/airbike-assembly.glb)
- **[Electric Airbike Full Technical Presentation (PPTX)](../assets/docs/airbike/electric-airbike-final-presentation.pptx)**  
  *136-slide original presentation containing all setup screens, boundary conditions, and full result plots.*

---

[← Back to Portfolio Home](../)
