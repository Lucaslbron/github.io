---
layout: default
title: Academic Class Schedule & Degree Progress
permalink: /class-schedule.html
toc: true
---

<style>
  .schedule-intro-meta {
    font-size: 1.05rem;
    color: var(--text-muted);
    line-height: 1.5;
    margin-bottom: 1.25rem;
  }

  .nav-pills-bar {
    display: flex;
    gap: 0.75rem;
    flex-wrap: wrap;
    margin: 1.25rem 0 2rem 0;
  }

  .nav-pill-btn {
    display: inline-flex;
    align-items: center;
    gap: 0.4rem;
    padding: 0.45rem 0.9rem;
    border-radius: 6px;
    font-size: 0.88rem;
    font-weight: 500;
    text-decoration: none;
    transition: all 0.2s ease;
  }

  .nav-pill-primary {
    background: #3b82f6;
    color: #ffffff !important;
  }
  .nav-pill-primary:hover {
    background: #2563eb;
  }

  .nav-pill-secondary {
    background: #1c202c;
    color: var(--text-muted) !important;
    border: 1px solid #2d3345;
  }
  .nav-pill-secondary:hover {
    color: #ffffff !important;
    border-color: #3b82f6;
  }

  /* Summary Stats */
  .stats-summary-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(170px, 1fr));
    gap: 1rem;
    margin: 1.5rem 0 2rem 0;
  }

  .stat-tile {
    background: var(--card-bg);
    border: 1px solid var(--border-color);
    border-radius: 10px;
    padding: 1.1rem 1rem;
    position: relative;
    overflow: hidden;
  }

  .stat-tile-val {
    font-size: 1.75rem;
    font-weight: 700;
    color: #ffffff;
    line-height: 1.1;
    margin-bottom: 0.35rem;
    font-family: 'JetBrains Mono', monospace;
  }

  .stat-tile-label {
    font-size: 0.8rem;
    color: var(--text-muted);
    text-transform: uppercase;
    letter-spacing: 0.05em;
    font-weight: 600;
  }

  /* Flowchart Legend */
  .legend-card {
    background: rgba(22, 25, 34, 0.6);
    border: 1px solid var(--border-color);
    border-radius: 10px;
    padding: 1.25rem;
    margin-bottom: 2rem;
  }

  .legend-card-header {
    font-size: 0.88rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.06em;
    color: var(--text-muted);
    margin-bottom: 0.85rem;
  }

  .legend-card-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 0.6rem 1.2rem;
  }

  .legend-pill {
    display: inline-flex;
    align-items: center;
    gap: 0.45rem;
    font-size: 0.82rem;
    color: var(--text-main);
  }

  .legend-dot {
    width: 10px;
    height: 10px;
    border-radius: 50%;
    flex-shrink: 0;
  }

  /* Badges */
  .badge {
    display: inline-flex;
    align-items: center;
    gap: 0.3rem;
    font-size: 0.78rem;
    font-weight: 600;
    padding: 0.2rem 0.6rem;
    border-radius: 6px;
    letter-spacing: 0.02em;
    vertical-align: middle;
  }

  .badge-completed {
    background: rgba(16, 185, 129, 0.15);
    color: #34d399;
    border: 1px solid rgba(16, 185, 129, 0.35);
  }

  .badge-planned {
    background: rgba(168, 85, 247, 0.15);
    color: #d8b4fe;
    border: 1px solid rgba(168, 85, 247, 0.35);
  }

  .badge-grade-a {
    background: rgba(16, 185, 129, 0.18);
    color: #34d399;
    border: 1px solid rgba(16, 185, 129, 0.4);
    font-family: 'JetBrains Mono', monospace;
    font-weight: 700;
  }

  .badge-grade-b {
    background: rgba(56, 189, 248, 0.18);
    color: #38bdf8;
    border: 1px solid rgba(56, 189, 248, 0.4);
    font-family: 'JetBrains Mono', monospace;
    font-weight: 700;
  }

  .badge-track-aae {
    background: rgba(251, 191, 36, 0.12);
    color: #fbbf24;
    border: 1px solid rgba(251, 191, 36, 0.3);
  }

  .badge-track-me {
    background: rgba(56, 189, 248, 0.12);
    color: #38bdf8;
    border: 1px solid rgba(56, 189, 248, 0.3);
  }

  .badge-track-me-elective {
    background: rgba(45, 212, 191, 0.12);
    color: #2dd4bf;
    border: 1px solid rgba(45, 212, 191, 0.3);
  }

  .badge-track-math {
    background: rgba(167, 139, 250, 0.12);
    color: #c084fc;
    border: 1px solid rgba(167, 139, 250, 0.3);
  }

  .badge-track-core {
    background: rgba(74, 222, 128, 0.12);
    color: #4ade80;
    border: 1px solid rgba(74, 222, 128, 0.3);
  }

  .badge-credits {
    background: rgba(148, 163, 184, 0.12);
    color: #cbd5e1;
    border: 1px solid rgba(148, 163, 184, 0.25);
    font-family: 'JetBrains Mono', monospace;
  }

  .course-block {
    background: var(--card-bg);
    border: 1px solid var(--border-color);
    border-radius: 8px;
    padding: 1.1rem 1.25rem;
    margin: 1rem 0;
    transition: border-color 0.2s ease, transform 0.15s ease;
  }

  .course-block:hover {
    border-color: #3b82f6;
    transform: translateY(-2px);
  }

  .course-badges-line {
    display: flex;
    gap: 0.45rem;
    flex-wrap: wrap;
    margin: 0.4rem 0 0.65rem 0;
  }

  .course-desc-p {
    font-size: 0.92rem;
    color: #cbd5e1;
    line-height: 1.6;
    margin: 0.5rem 0 0.75rem 0;
  }

  .course-link-p {
    margin: 0.25rem 0 0 0;
    font-size: 0.82rem;
  }

  .course-link-p a {
    color: #60a5fa;
    text-decoration: none;
  }

  .course-link-p a:hover {
    text-decoration: underline;
  }
</style>

# Academic Class Schedule & Degree Progress

<div class="schedule-intro-meta">
  <strong>Lucas Lebron</strong> • Dual Degree: <strong>B.S. Aerospace Engineering (Astronautics Concentration)</strong> & <strong>B.S. Mechanical Engineering</strong> • Minor in <strong>Mathematics</strong><br>
  Southern Polytechnic College of Engineering and Engineering Technology, <strong>Kennesaw State University</strong>
</div>

<div class="nav-pills-bar">
  <a href="{{ '/' | relative_url }}" class="nav-pill-btn nav-pill-secondary">
    ← Back to Portfolio Home
  </a>
  <a href="{{ '/assets/docs/resume-lucas-lebron.pdf' | relative_url }}" class="nav-pill-btn nav-pill-primary">
    View Resume (PDF)
  </a>
  <a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="nav-pill-btn nav-pill-secondary">
    Official KSU Catalog ↗
  </a>
</div>

---

## Degree Progress Overview

<div class="stats-summary-grid">
  <div class="stat-tile" style="border-top: 3px solid #10b981;">
    <div class="stat-tile-val">3.65</div>
    <div class="stat-tile-label">Completed Major GPA</div>
  </div>
  <div class="stat-tile" style="border-top: 3px solid #3b82f6;">
    <div class="stat-tile-val">40</div>
    <div class="stat-tile-label">Credits Completed</div>
  </div>
  <div class="stat-tile" style="border-top: 3px solid #10b981;">
    <div class="stat-tile-val">16</div>
    <div class="stat-tile-label">Courses Completed (10 A's, 6 B's)</div>
  </div>
  <div class="stat-tile" style="border-top: 3px solid #a855f7;">
    <div class="stat-tile-val">20</div>
    <div class="stat-tile-label">Planned / In Progress</div>
  </div>
  <div class="stat-tile" style="border-top: 3px solid #f59e0b;">
    <div class="stat-tile-val">36</div>
    <div class="stat-tile-label">Total Curriculum Courses</div>
  </div>
</div>

<div class="legend-card">
  <div class="legend-card-header">Curriculum Classification & Legend (2025–2026 Flowcharts)</div>
  <div class="legend-card-grid">
    <div class="legend-pill">
      <span class="legend-dot" style="background: #fbbf24;"></span>
      <span><strong>AAE Credits:</strong> Aerospace Engineering Major Core</span>
    </div>
    <div class="legend-pill">
      <span class="legend-dot" style="background: #38bdf8;"></span>
      <span><strong>ME Credits:</strong> Mechanical Engineering Major Core</span>
    </div>
    <div class="legend-pill">
      <span class="legend-dot" style="background: #2dd4bf;"></span>
      <span><strong>ME Technical Elective:</strong> Upper-division ME Specialization</span>
    </div>
    <div class="legend-pill">
      <span class="legend-dot" style="background: #fb923c;"></span>
      <span><strong>AAE Technical Elective:</strong> Upper-division AAE Specialization</span>
    </div>
    <div class="legend-pill">
      <span class="legend-dot" style="background: #c084fc;"></span>
      <span><strong>Math Minor:</strong> Advanced Mathematics Elective</span>
    </div>
    <div class="legend-pill">
      <span class="legend-dot" style="background: #4ade80;"></span>
      <span><strong>Core IMPACTS:</strong> Institutional Social & Economic Core</span>
    </div>
  </div>
</div>

---
## Fall 2025
<span class="badge badge-completed">Completed</span> • **14 Credit Hours • Term GPA: 3.57**

<div class="course-block">
### AAE 1001L: Intro to Aerospace Engineering Laboratory
<div class="course-badges-line">
  <span class="badge badge-grade-a">Grade: A</span>
  <span class="badge badge-track-aae">AAE Credits</span>
  <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
</div>
<p class="course-desc-p">Introductory laboratory experience in aerospace engineering covering foundational concepts of aeronautical and astronautical engineering, flight principles, laboratory instrumentation, aerodynamic force measurement, and engineering design teamwork.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ME 3101: Materials Science and Engineering
<div class="course-badges-line">
  <span class="badge badge-grade-b">Grade: B</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">A study of metals, ceramics, polymers, and composite materials in the context of material selection for engineering design and manufacturing. Topics include atomic bonding, crystal structures and defects, mechanical properties, deformation mechanisms, diffusion, phase diagrams, and heat treatment transformations.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ENGR 3122: Engineering Mechanics - Dynamics
<div class="course-badges-line">
  <span class="badge badge-grade-a">Grade: A</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">A study of the mechanics of particles and rigid bodies. Topics covered include kinematics and kinetics of particles, work and kinetic energy principles, linear and angular impulse and momentum, planar rigid body kinetics, equations of motion, relative motion, and moving coordinate reference systems.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ENGR 3131: Strength of Materials
<div class="course-badges-line">
  <span class="badge badge-grade-b">Grade: B</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Study and mathematical modeling of the mechanical behavior of deformable bodies under load. Emphasis is placed on elastic conditions of equilibrium, compatibility, and material behavior. Includes normal and shear stress/strain, axial loading, torsion of shafts, beam bending, shear flow, beam deflections, combined loading, and column buckling.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ENGR 3132: Strength of Materials Lab
<div class="course-badges-line">
  <span class="badge badge-grade-a">Grade: A</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
</div>
<p class="course-desc-p">Study and performance of laboratory testing and analysis techniques used in determining the mechanical behavior of materials under load. Includes standardized tensile, compressive, torsional, impact, and beam deflection testing, strain measurement with strain gages, and formal technical documentation.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ME 3410: Thermodynamics
<div class="course-badges-line">
  <span class="badge badge-grade-a">Grade: A</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Fundamentals of classical thermodynamics including the concept of energy and the laws governing the transfer and transformation of energy. Emphasis on thermodynamic properties of pure substances, equations of state, first and second law analysis of control volumes, entropy generation, and basic power and refrigeration cycles.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

## Spring 2026
<span class="badge badge-completed">Completed</span> • **16 Credit Hours • Term GPA: 3.44**

<div class="course-block">
### AAE 3000: Introduction to Flight
<div class="course-badges-line">
  <span class="badge badge-grade-b">Grade: B</span>
  <span class="badge badge-track-aae">AAE Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Covers the technological and historical perspectives of aeronautical and astronautical engineering. Topics include atmospheric properties, basic aerodynamics, airfoil and wing geometry, aircraft performance (climb, range, endurance), static stability and control, propulsion systems, and introduction to orbital space flight.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ENGR 3801: Aerodynamics
<div class="course-badges-line">
  <span class="badge badge-grade-b">Grade: B</span>
  <span class="badge badge-track-me-elective">ME Tech Elective</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Fundamentals of aerodynamics and fluid flow around aerodynamic bodies. Topics include potential flow theory, stream functions, circulation, thin airfoil theory, finite wing vortex theory (Prandtl lifting line), induced drag, boundary layer development, skin friction, and introduction to compressible flow and shock waves.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ENGR 3343: Fluid Dynamics (Fluid Mechanics)
<div class="course-badges-line">
  <span class="badge badge-grade-a">Grade: A</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">A study of the fundamentals of fluid statics and dynamics, including hydrostatic forces on submerged plates, buoyancy, continuity of fluid flow, linear momentum, and energy conservation. Applications of laminar and turbulent conduit flows, Moody charts, piping systems, pumps, and turbines.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ENGR 3345: Fluid Mechanics Lab
<div class="course-badges-line">
  <span class="badge badge-grade-a">Grade: A</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
</div>
<p class="course-desc-p">Laboratory reinforcing the principles of fluid mechanics studied in ENGR 3343, as they apply to hydraulic and pneumatic systems, flow rate metering, orifice discharge, friction head loss in pipes and fittings, and aerodynamic drag measurement. Emphasizes experimental reporting and error analysis.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ENGR 3125: Machine Dynamics & Vibrations
<div class="course-badges-line">
  <span class="badge badge-grade-a">Grade: A</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Analysis of motion, velocity, acceleration, and forces in mechanisms and machines. Emphasis on analytical methods suitable for computerized simulation and graphical visualization. Provides an introduction to vibration theory, including oscillatory modeling and analysis of discrete and continuous mechanical systems.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ME 4141: Machine Design 1
<div class="course-badges-line">
  <span class="badge badge-grade-b">Grade: B</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Fundamentals of mechanical engineering design and component sizing under static and fatigue loading conditions. Covers stress concentrations, fatigue failure theories (Goodman, Gerber, ASME elliptic), and the design and selection of shafts, rolling contact bearings, spur and helical gears, springs, and fasteners.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

## Summer 2026
<span class="badge badge-completed">Completed</span> • **10 Credit Hours • Term GPA: 4.00**

<div class="course-block">
### ENGR 4402: Engineering Ethics
<div class="course-badges-line">
  <span class="badge badge-grade-a">Grade: A</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">1 Credit Hour (1 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Explores the practice of engineering in the context of ethics and moral philosophy. Covers safety, liability, professional responsibility, environmental impact, and legal obligations through engineering case studies. Emphasis on the NSPE Code of Ethics for Engineers and resolving ethical dilemmas.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ME 3440: Heat Transfer
<div class="course-badges-line">
  <span class="badge badge-grade-a">Grade: A</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Fundamentals and applications of conduction, convection, and thermal radiation. Topics include 1D and multi-dimensional steady and transient conduction, forced and free convection with boundary layer theory, radiation exchange between surfaces, and design and rating of heat exchangers (LMTD and ε-NTU methods).</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ME 4250: Computer Aided Engineering
<div class="course-badges-line">
  <span class="badge badge-grade-a">Grade: A</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Introduces engineering software tools and computational techniques for the modeling and simulation of mechanical components and systems. Covers meshing strategies, finite element analysis (FEA) for structural and thermal problems, and computational fluid dynamics (CFD / finite volume methods) for fluid and thermal analysis.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ME 3701: Manufacturing Engineering
<div class="course-badges-line">
  <span class="badge badge-grade-a">Grade: A</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Introduces the fundamentals and applications of major manufacturing processes and engineering principles. Establishes technical knowledge in metal casting, bulk and sheet metal deformation, machining and material removal, additive manufacturing, polymer processing, and manufacturing economics.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

## Fall 2026
<span class="badge badge-planned">Plan to Take / In Progress</span> • **15 Credit Hours • 5 Courses**

<div class="course-block">
### ENGR 3804: Intro to Aerospace Structural Analysis
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-aae">AAE Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">An introductory course for analyzing aircraft and aerospace structures that bridges basic solid mechanics with lightweight aerospace applications. Covers aircraft design and certification criteria, material allowables, stress analysis of thin-walled sections, shear flow, multicell torsion, and panel buckling.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### AAE 4802: Spacecraft Propulsion
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-aae">AAE Credits (Astronautics)</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Principles and engineering of propulsion systems used in spacecraft. Covers rocket propulsion fundamentals, the ideal rocket equation, converging-diverging nozzle aerodynamics, chemical rocket engines (liquid and solid propellants), electric propulsion systems (ion thrusters, Hall thrusters), and orbital velocity increment requirements.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### AAE 3125: Orbital Mechanics
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-aae">AAE Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Study of the science of space travel and orbital motion. Covers the two-body orbital problem, Kepler's laws, classical orbital elements, orbital coordinate transformations, orbital maneuvers (Hohmann and bi-elliptic transfers), inclination and plane changes, satellite ground tracks, and interplanetary trajectories.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### AAE 3801L: Aerodynamics & UAS Lab
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-aae">AAE Credits</span>
  <span class="badge badge-credits">3 Credit Hours (0 Class, 3 Lab)</span>
</div>
<p class="course-desc-p">Comprehensive hands-on laboratory in aerodynamics and unmanned aerial systems (UAS). Students utilize wind tunnels to evaluate surface pressure distributions across airfoils, determine lift and drag polars, observe boundary layer stall, calibrate aerodynamic balances, and design and flight-test unmanned aerial vehicles.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### MATH 3262: Mathematical Modeling
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-math">Math Minor</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Project-oriented introduction to fundamental concepts and methods of mathematical modeling. Students formulate real-world problems in engineering and physical sciences into continuous and discrete mathematical models, applying analytical and numerical methods, sensitivity analysis, and simulation techniques.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

## Spring 2027
<span class="badge badge-planned">Plan to Take</span> • **17 Credit Hours • 6 Courses**

<div class="course-block">
### ME 4201: Senior Design 1
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">1 Credit Hour (1 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Part 1 of the two-course mechanical engineering senior design capstone project. Students form teams, identify open-ended engineering design problems, formulate engineering requirements and design constraints, generate conceptual designs, perform feasibility studies, and prepare for the FE Exam.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### AAE 4250: Aero Computer-Aided Design
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-aae">AAE Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Computer-aided design applications specifically tailored for aerospace structures and flight vehicles. Covers 3D parametric geometric modeling of aerodynamic surfaces and fuselages, aerospace structural meshing, shell and composite modeling, and CAD-to-FEA digital engineering integration.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ME 3501: Dynamic Systems & Control Theory
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">A unified approach for lumped-element modeling and dynamic analysis of mechanical, electrical, fluid, and multi-energy domain systems. Covers transfer functions, state-space equations, time and frequency domain responses, Laplace transforms, root locus, stability criteria, and PID feedback control design.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### AAE 4503: Spacecraft Dynamic Systems & Control
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-aae">AAE Credits (Astronautics)</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Solves engineering problems related to the dynamics of spaceflight, orbital maneuvers, and satellite attitude stability and control. Students analyze 3D spacecraft rotational kinematics and kinetics, disturbance torques, and apply classical and state-space control methods using reaction wheels and thrusters.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ME 4501: Vibrations & Control Lab
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
</div>
<p class="course-desc-p">Laboratory course complementing dynamic systems and controls. Involves experimental study of single and multi-degree-of-freedom vibrations, damping characterization, free and forced response, resonance isolation, and hardware-in-the-loop implementation of closed-loop PID control algorithms.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### EE 2305: Electronic Circuits & Machines
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">4 Credit Hours (3 Class, 3 Lab)</span>
</div>
<p class="course-desc-p">Fundamentals of DC and AC circuits and electromechanical machinery for non-electrical engineering majors. Covers circuit theorems, phasors, AC power, transformers, operational amplifiers, and the characteristics, control, and applications of DC motors, induction motors, and generators.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

## Summer 2027
<span class="badge badge-planned">Plan to Take</span> • **6 Credit Hours • 2 Courses**

<div class="course-block">
### ME 3398 / 4400: Internship or Directed Study
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours</span>
</div>
<p class="course-desc-p">Supervised out-of-the-classroom engineering internship in an industrial setting (ME 3398) or individual faculty-guided undergraduate research study (ME 4400). Provides professional project experience combining technical problem-solving with scholarly investigation and formal reporting.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ECON 1000: Contemporary Economic Issues
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-core">Core IMPACTS</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Provides tools necessary to examine social and public policy issues from an economic perspective. Addresses fundamental economic questions regarding individuals, business firms, market dynamics, government regulation, macroeconomic indicators, and global trade economics.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

## Fall 2027
<span class="badge badge-planned">Plan to Take</span> • **14 Credit Hours • 6 Courses**

<div class="course-block">
### ME 4202: Senior Design 2
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">3 Credit Hours (1 Class, 6 Lab)</span>
</div>
<p class="course-desc-p">Part 2 and culmination of the two-course senior capstone project for mechanical engineering. Involves detailed design synthesis, simulation, fabrication, physical prototyping, and experimental validation of an open-ended engineering design project, with formal technical reporting and presentation.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### AAE 4203: Spacecraft Design 1
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-aae">AAE Credits (Astronautics)</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">First phase of the capstone senior design sequence for the Astronautics concentration in Aerospace Engineering. Covers space mission architecture, payload requirements, orbit selection, subsystem budgeting (mass, power, link margin), preliminary mechanical/thermal design, and Preliminary Design Review (PDR).</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ME 4403: Heat Transfer & Thermo Lab
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-me">ME Credits</span>
  <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
</div>
<p class="course-desc-p">Laboratory course complementing thermodynamics and heat transfer lecture courses. Experiments provide practical experience in thermal sciences, including heat conduction, natural and forced convection, thermal radiation, heat exchanger performance, and thermodynamic refrigeration and power cycles.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### MATH 4310: Partial Differential Equations
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-math">Math Minor</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Introduction to partial differential equations (PDEs), their physical applications in science and engineering, and analytical solution methods. Covers classification of PDEs, separation of variables, Fourier series, Fourier transforms, the heat equation, wave equation, Laplace’s equation, and boundary-value problems.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### ME 3133: Composite Mechanics
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-me-elective">ME Tech Elective</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Introduction to the technology and mechanics of advanced composites (polymer, metal, and ceramic matrix) with emphasis on structural design. Covers micromechanics of fiber-matrix systems, effective elastic properties, classical lamination theory, failure criteria (Tsai-Hill, Tsai-Wu), and composite fabrication methods.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

<div class="course-block">
### AAE 4504: Spacecraft Dynamic Systems & Control Lab
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-aae">AAE Credits (Astronautics)</span>
  <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
</div>
<p class="course-desc-p">Laboratory course focused on experimental spaceflight dynamics. Involves orbital maneuver simulations, satellite attitude determination using sensors (sun sensors, gyros), dynamic motions of rockets, reaction wheel stabilization, and demonstrating classical and state-space closed-loop control approaches on spacecraft testbeds.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

## Spring 2028
<span class="badge badge-planned">Plan to Take</span> • **3 Credit Hours • Culminating Capstone**

<div class="course-block">
### AAE 4204: Spacecraft Design 2
<div class="course-badges-line">
  <span class="badge badge-planned">Planned</span>
  <span class="badge badge-track-aae">AAE Credits (Astronautics)</span>
  <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
</div>
<p class="course-desc-p">Final capstone design project in astronautical engineering. Teams complete the detailed design, subsystem simulation, hardware-software integration, and environmental testing (thermal-vacuum, vibration) for a full spacecraft mission, culminating in the Critical Design Review (CDR) and formal defense before faculty and industry evaluators.</p>
<p class="course-link-p"><a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer">View in KSU Academic Catalog ↗</a></p>
</div>

