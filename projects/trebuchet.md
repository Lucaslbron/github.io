---
layout: default
title: Floating-Arm Trebuchet | Engineering Dynamics Project Report
permalink: /projects/trebuchet.html
toc: true
---

# Floating-Arm Trebuchet

**Design, Fabrication, and Competition Testing of a Full-Scale Mechanical Launching System**  
**Engineering Dynamics Competition | Team Captain**  
**Role:** Team Captain, Structural Layout, Fastener Planning, Fabrication & Field Testing  
**Team Size:** 10 Engineering Students • **Budget Constraint:** $500 • **Timeline:** ~1 Month  

![Floating-Arm Trebuchet Competition Hero]({{ '/assets/images/trebuchet/trebuchet-competition-hero.png' | relative_url }})

*Full-scale floating-arm trebuchet fielded during the university engineering dynamics competition, showing the vertical guide tracks, drop-channel axle, and team loading the 10 lb pumpkin payload into the sling pouch.*

---

## Project at a Glance

| Parameter | Value |
|---|---|
| **Event / Competition** | School-Wide Engineering Dynamics Trebuchet Competition |
| **Primary Objective** | Design and fabricate a mechanical launcher to maximize the launch distance of a 10 lb pumpkin |
| **Role & Responsibilities** | Team Captain, structural layout, fastener planning, material procurement, fabrication, and field testing |
| **Team Size** | 10 Undergraduate Engineering Students |
| **Budget Constraint** | \$500 limit ($462.14 allocated in BOM; $37.86 contingency reserve) |
| **Development Window** | ~1 Month (concurrent design, procurement, fabrication, and validation) |
| **Mechanism Architecture** | Floating-Arm Trebuchet (FAT) with dual vertical rolling drop tracks |
| **Structural Materials** | Commercial dimensional lumber (2×4 Whitewood, 2×4 & 2×8 Southern Yellow Pine) |
| **Fasteners & Motion Hardware** | 3/8"-16 & 1/2"-13 grade bolts, #14 structural screws, 8" steel cast iron wheels, 1/2" steel drop axle |
| **Target Payload** | 10 lb pumpkin |
| **Competition Outcome** | **9th of 14 Teams** |

---

## The Engineering Challenge & Concept Selection

### Competition Mandate

The project was organized as a university-wide engineering dynamics competition between engineering classes. Each team was tasked with designing, constructing, and testing a mechanical projectile launcher capable of throwing a **10 lb pumpkin** for maximum horizontal distance. The entire machine had to be developed under a non-negotiable **$500 budget constraint** and built from commercially accessible raw materials within approximately **one month**.

The compressed 4-week timeline required the engineering workflow to proceed concurrently rather than sequentially: mechanical concept selection, structural drafting, lumber procurement, fastener calculations, subassembly fabrication, and field tuning occurred in parallel.

### Mechanism Selection: Why the Floating-Arm Configuration?

Early in the conceptual design phase, the team evaluated two competing mechanical configurations:

1. **Conventional Fixed-Pivot Trebuchet:**  
   The counterweight swings about a fixed central pivot shaft, traversing a circular arc. Because a portion of the counterweight's path moves horizontally during the swing, not all of its gravitational potential energy ($\Delta U = mgh$) is converted into downward vertical acceleration. Angular momentum must also be redirected through the counterweight arm, requiring a heavy, rigid frame to handle rotational jerk.

2. **Floating-Arm Trebuchet (FAT):**  
   In a floating-arm trebuchet, the counterweight drops in a **pure vertical straight line** constrained within vertical guide tracks. The throwing arm's pivot is mounted directly onto the falling axle, while a secondary pivot or wheel rolls along a horizontal track. This kinematic decoupling allows virtually 100% of the counterweight's gravitational potential energy to drop directly downward, theoretical calculations suggesting substantially higher arm tip release velocities than an equivalent-height swinging-counterweight machine.

> **Engineering Decision:** The team recognized that the floating-arm architecture offered a significant theoretical dynamic advantage. We chose to pursue the floating-arm configuration to maximize potential launch velocity, accepting the trade-off of greater kinematic complexity and tighter fabrication tolerances within our single-month timeline.

---

## Structural Layout & Fastener Planning

### Frame Geometry & Working Drawings

The trebuchet's half-frame structural layout was developed around standard dimensional lumber sizes, establishing structural dimensions that balanced stability against overturning moments with vertical drop height.

![Floating Arm Trebuchet Frame Working Drawing]({{ '/assets/images/trebuchet/trebuchet-frame-drawing.png' | relative_url }})

*Working drawing showing frame geometry, structural dimensions, and handwritten fastener-layout calculations used during fabrication planning.*

Key geometric parameters established in the drawing package include:

- **90.00 in Vertical Guide Mast:** Dual vertical 2×4 uprights providing a long, unobstructed linear drop path for the 8-inch steel wheels and counterweight axle.
- **45.50 in Horizontal Base Extension:** A wide symmetrical horizontal footprint extending 45.5 inches in both directions from the central drop line, ensuring a broad base of support to resist dynamic overturning moments during rapid counterweight descent.
- **30° Diagonal Bracing:** Rigid 30° diagonal members connecting the outer base footing to the vertical mast, transmitting dynamic pitching loads into the ground structure.
- **3.50 in Standard Member Width:** Dimensioned specifically around standard 2×4 lumber (actual cross-section 1.5 in × 3.5 in) and 2×8 base runners.

### Fastener Calculations & Layout Notes

Rather than generating post-hoc diagrams, the working drawing captures the authentic, iterative engineering documentation created during fabrication planning:

- **Fastener Locations (Green Circles):** Marked directly at structural lumber intersections to identify where clamping bolts and shear fasteners were required to prevent joint separation under dynamic recoil.
- **Dual Bolt-Length Planning:** The annotations calculate joint thicknesses to select two distinct bolt length specifications:
  - **3/8"-16 × 8" Through-Bolts:** Sized to clamp through doubled and tripled 2×4 laminations (up to 4.5 in wood thickness plus steel guide plates, washers, and locknuts).
  - **1/2"-13 × 4" Joint Bolts:** Sized for single-lap shear joints between diagonal braces and horizontal runners.
- **Member Optimization Notes (Blue & Red Annotations):** Calculations (such as `8 → 16 for 2"×4"×8'` and `4 → 8 for 2"×4"×12'`) tracked cut-list allocations against standard commercial lumber lengths. This pre-fabrication planning minimized cut waste and ensured our material purchase list remained strictly within the $500 budget envelope.

---

## Material Planning & Budget Allocation

### Pre-Fabrication Bill of Materials (BOM)

To prevent budget overruns, a detailed Bill of Materials was established before purchasing any hardware. Materials were categorized across structural lumber, fasteners, motion hardware, and finishing supplies, prioritizing heavy-duty hardware where dynamic forces were highest (axle, wheels, structural screws) and economical dimensional lumber for frame members.

| Category | Key Items & Specifications | Source | Planned Cost |
|---|---|---|---|
| **Structural Lumber** | 22 × 2×4×8' Whitewood Studs<br>10 × 2×4×12' Southern Yellow Pine<br>4 × 2×8×10' Southern Yellow Pine | Lowe's | $240.57 |
| **Fasteners & Joinery** | 3/8"-16 × 8" Grade Bolts (40 pcs)<br>1/2"-13 × 4" Grade Bolts (5 pcs)<br>#14 × 6" Structural Screws (50 pcs)<br>Washers & Hex Locknuts (1/2" and 3/8") | Amazon | $118.72 |
| **Motion Hardware** | Two 8" × 2" Steel Cast Iron Wheels<br>1/2" Diameter × 8" Precision Steel Axle | Amazon | $78.29 |
| **Finishing & Lubrication** | Multi-grit Sandpaper Pack (80/120/220)<br>Paste Finishing Wax (16 oz friction reduction) | Amazon | $24.56 |
| **Grand Total Planned** | | | **$462.14** |
| **Contingency Buffer** | Unallocated reserve under strict $500 budget limit | | **$37.86** |

The procurement plan successfully capped total planned expenditures at **$462.14**, leaving a **$37.86 safety buffer** for incidental replacement hardware, drill bits, and field adjustments.

- **[Download Complete Bill of Materials (BOM) Spreadsheet (XLSX)]({{ '/assets/docs/trebuchet/trebuchet-temp-bom.xlsx' | relative_url }})**

---

## Fabrication & Hands-On Assembly

### Translating Drawings into Hardware

With raw materials delivered to the staging dock, fabrication commenced immediately. The team converted the 2D frame drawing into physical subassemblies, beginning with the construction of the structural half-frames.

![Trebuchet Half-Frame Assembly on Staging Ground]({{ '/assets/images/trebuchet/trebuchet-frame-fabrication.png' | relative_url }})

*Half-frame subassembly laid out on the staging ground, showing cut dimensional lumber, 30° mitered diagonal braces, and central guide track alignment.*

### Practical Manufacturing Challenges

Fabricating a large dynamic mechanism from dimensional lumber revealed several hands-on engineering challenges that do not appear in theoretical calculations:

1. **Lumber Tolerances & Natural Warping:**  
   Commercial kiln-dried studs exhibit natural curvature, cup, and grain variations. Each board was inspected and paired so that opposing curvatures canceled each other out when laminated, keeping the structural uprights straight and true.

2. **Vertical Guide Track Parallelism:**  
   The central track required two 90-inch vertical 2×4 rails spaced precisely to house the 8-inch cast iron wheels. Any taper or misalignment along the 90-inch span would cause the falling wheels to bind during launch. The team clamped the uprights using temporary spacers while drilling and bolting the 30° diagonal bracing to guarantee constant track width from top to bottom.

3. **Perpendicular Through-Hole Drilling:**  
   Drilling 3/8" bolt holes through 4.5 inches of laminated lumber by hand often causes bit drift on the exit face. The team fabricated an alignment block to ensure all fastener bores remained perpendicular, preventing bolt binding and ensuring full thread engagement on washers and nuts.

4. **Surface Finishing & Friction Reduction:**  
   The wooden interior faces of the drop tracks were sanded through 80, 120, and 220 grit abrasive paper to eliminate splinters, grain raised edges, and surface roughness. A heavy coat of paste finishing wax was burnished into the wood grain along the rolling tracks to minimize mechanical friction during axle descent.

---

## Final Machine Architecture & Scale

The fully assembled trebuchet was transported to the university athletic fields for competition staging and final operational checks.

![Final Floating Arm Trebuchet Machine at Competition]({{ '/assets/images/trebuchet/trebuchet-competition-hero.png' | relative_url }})

*Complete floating-arm trebuchet assembled on the competition field. The vertical mast, red diagonal supports, counterweight barbell axle, and sling assembly establish scale relative to the 10-student team.*

![Trebuchet Competition Staging and Field Operations]({{ '/assets/images/trebuchet/trebuchet-competition-field.png' | relative_url }})

*Competition staging area showing field tools, rigging hardware, and neighboring student team trebuchet entries.*

### Key Machine Subsystems

- **Vertical Drop Mast:** A rigid dual-tower frame standing over 7.5 feet (90 inches) tall, providing the vertical descent path for the counterweight.
- **Axle & Counterweight Assembly:** A heavy-duty 1/2" steel axle fitted with two 8-inch cast iron wheels rolling inside the vertical channels, loaded with Olympic-style cast iron barbell plates to deliver substantial gravitational potential energy.
- **Throwing Arm & Release Trigger:** A long timber throwing arm equipped with a low-friction roller pivot, connected to a heavy-duty fabric pouch and sling rope sized specifically to cradle the 10 lb pumpkin.
- **Safety Cocking System:** Rigged with heavy haul ropes and a release pin to allow team members to winch the weighted counterweight safely to the top mast without standing beneath the suspended mass.

---

## Competition Outcome & Field Performance

### Objective Competition Result: 9th of 14 Teams

During official competition rounds, the floating-arm trebuchet successfully cocked, triggered, and launched the 10 lb pumpkin downfield without structural failure, yielding an official finish of **9th out of 14 competing university teams**.

### Post-Competition Dynamics Analysis

While the machine operated safely and demonstrated the fundamental mechanics of a floating-arm launcher, our post-competition engineering evaluation identified the specific shortcomings that limited our throwing distance:

1. **Warping & Channel Misalignment:**  
   The floating-arm mechanism required tight alignment between the vertical weight-drop channels and the horizontal wheel channels. Although the completed wooden frame was structurally rigid, small dimensional changes introduced during fabrication affected the clearances within the mechanism.

   During qualification certification the day before competition, approximately 1/16 in. of horizontal misalignment between the vertical channels caused the dropping weight bar to catch on the edge of the wooden channel. The interference damaged the weight bar and required the team to purchase a replacement out of pocket.

   The misalignment resulted from a combination of natural warping in the lumber and additional deformation introduced as screws and bolts were installed and tightened. This demonstrated an important limitation of the design: while the overall frame did not experience significant structural instability, the floating-arm mechanism was considerably more sensitive to dimensional tolerances than a conventional fixed-pivot trebuchet.

2. **Sling Release Angle Sensitivity:**  
   The primary performance limitation was the sling launch angle. Unlike the structural alignment issue, this was not a failure of the frame itself, but a lack of sufficient testing and tuning.

   Because the team had only a few weeks to progress from the initial design to a competition-ready machine, there was insufficient time to systematically test different sling lengths, attachment positions, or launch configurations. As a result, the final machine entered competition without the launch angle being fully optimized.

   The trebuchet was able to operate, but the resulting launch trajectory was not competitive with many of the other teams. The lack of time available for launch-angle testing was the primary factor contributing to the team's 9th-place finish out of 14 teams.

   Engineering takeaway: For a mechanically complex system, achieving a functional design is only the first step; performance often depends on an iterative testing and tuning process.

3. **Time & Tool Constraints:**  
   The project was completed under an approximately four-week development schedule, requiring the team to progress from initial concept selection through mechanical design, material selection, budgeting, procurement, fabrication, assembly, testing, and competition.

   The schedule became particularly restrictive once materials arrived. The team had approximately two weeks to construct the complete machine after receiving the lumber, screws, and bolts. This left limited time for full-scale testing and troubleshooting.

   The project also required coordinating a 10-person team, including assigning fabrication and design responsibilities, scheduling meetings, attending team captain meetings with safety officers and faculty, and integrating work performed by different members. Tool availability created an additional constraint: the school provided one shared set of tools for the competing teams, requiring teams to coordinate access. Our team also relied on one member to bring additional power tools when available.

Together, these constraints significantly reduced the amount of time available for systematic testing and refinement. The experience reinforced the importance of design-for-fabrication, early prototype testing, and schedule allocation for troubleshooting, particularly when developing a mechanically complex system.

---

## Lessons Learned & Engineering Takeaways

Rather than presenting an idealized narrative, this project is meant to show a realistic account of the design-build-test experience that revealed critical principles of mechanical engineering and project management:

### 1. Mechanism Complexity Must Be Balanced Against Development Time
The floating-arm configuration introduced additional alignment and tuning requirements compared with a simpler trebuchet design. With approximately four weeks available from concept to competition, the team had limited time to characterize the mechanism, resolve fabrication issues, and optimize its launch performance. This project demonstrated that a mechanically complex concept can require significantly more development time before its theoretical advantages translate into practical performance.

### 2. Manufacturing Tolerances Can Affect Mechanism Performance
Although the wooden frame remained structurally stable, relatively small dimensional changes affected the operation of the floating-arm mechanism. Natural lumber warping, combined with deformation introduced during fastening, contributed to approximately 1/16 in. of channel misalignment. This was sufficient to cause the weight bar to catch during qualification and require replacement. The experience demonstrated that structural strength alone does not guarantee proper mechanical function; clearances and alignment must also be considered during fabrication.

### 3. Testing and Tuning Are Part of the Design Process
The trebuchet was completed and operational, but the compressed schedule left insufficient time to systematically test and refine the sling launch angle. The resulting launch trajectory limited the machine's competitive performance and was the primary factor contributing to the team's 9th-place finish out of 14 teams. This project reinforced that completing the physical build is not the end of the design process—testing and iteration are necessary to translate a functional mechanism into a well-tuned system.

### 4. Engineering Requires Coordinating Design, Fabrication, and People
The project required a 10-person team to move from an initial concept to a competition-ready machine within approximately four weeks while working within a $500 budget and shared-tool constraints. Design decisions, material procurement, fabrication, assembly, testing, and team coordination had to occur simultaneously. This experience demonstrated the importance of distributing responsibilities effectively, accounting for fabrication and procurement time during planning, and maintaining enough schedule margin for unexpected problems.

---

## Supporting Project Documentation

The original working drawings and budgetary documentation are available below:

- **[Initial Frame Drafting Package (PDF)]({{ '/assets/docs/trebuchet/trebuchet-initial-draft.pdf' | relative_url }})**  
  *Original 1:10 scale working drawing documenting the 90" × 45.5" half-frame dimensions, 30° bracing, and handwritten fastener-layout calculations.*
- **[Bill of Materials (BOM) Spreadsheet (XLSX)]({{ '/assets/docs/trebuchet/trebuchet-temp-bom.xlsx' | relative_url }})**  
  *Detailed cost tracking sheet detailing lumber quantities, fasteners, axle hardware, and budget allocations under the $500 limit.*
- **[Trebuchet Quick Overview Page]({{ '/projects/trebuchet-quick-overview.html' | relative_url }})**  
  *Concise 2-minute project summary tailored for rapid portfolio review.*

---

[← Back to Portfolio Home]({{ '/' | relative_url }})
