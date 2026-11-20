---
layout: default
title: Academic Class Schedule & Degree Progress
permalink: /class-schedule.html
toc: true
---

<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=JetBrains+Mono:wght@400;500;600;700&display=swap');

html, body {
  background-color: #FFFFFF;
  color: #09090B;
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
  overflow-x: clip;
  -webkit-font-smoothing: antialiased;
}

h1, h2, h3, h4 {
  color: #09090B;
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
  font-weight: 700;
}

.bp-schedule-h1 {
  font-size: 2.2rem;
  font-weight: 800;
  letter-spacing: -0.03em;
  line-height: 1.18;
  color: #09090B;
  margin: 0 0 0.6rem 0;
}

.bp-schedule-h2 {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.82rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  color: #52525B;
  border: none;
  padding: 0;
  margin: 0 0 1rem 0;
}

.bp-schedule-hr {
  border: 0;
  border-top: 1.5px solid #18181B;
  margin: 1.75rem 0;
}

.schedule-intro-meta {
  font-size: 1rem;
  color: #52525B;
  line-height: 1.55;
  margin-bottom: 1.25rem;
}

.schedule-intro-meta strong {
  color: #09090B;
}

.nav-pills-bar {
  display: flex;
  gap: 0.65rem;
  flex-wrap: wrap;
  margin: 1.25rem 0 2rem 0;
}

.nav-pill-btn {
  display: inline-flex;
  align-items: center;
  gap: 0.45rem;
  padding: 0.5rem 0.9rem;
  border-radius: 2px;
  border: 1.5px solid #18181B;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.8rem;
  font-weight: 600;
  text-decoration: none;
  transition: background-color 0.15s ease, color 0.15s ease;
}

.nav-pill-primary {
  background: #FFCC00;
  color: #09090B;
  font-weight: 700;
}

.nav-pill-primary:hover {
  background: #E6B800;
  color: #09090B;
  text-decoration: none;
}

.nav-pill-secondary {
  background: #FFFFFF;
  color: #09090B;
}

.nav-pill-secondary:hover {
  background: #FFCC00;
  color: #09090B;
  text-decoration: none;
}

.stats-summary-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(170px, 1fr));
  gap: 1rem;
  margin: 1.25rem 0 2rem 0;
}

.stat-tile {
  background: #F3F4F6;
  border: 1.5px solid #18181B;
  border-top: 4px solid #18181B;
  border-radius: 3px;
  padding: 1.1rem 1rem;
  box-shadow: 4px 4px 0px #18181B;
}

.stat-tile--accent {
  border-top-color: #FFCC00;
}

.stat-tile-val {
  font-size: 1.8rem;
  font-weight: 700;
  color: #09090B;
  line-height: 1.1;
  margin-bottom: 0.35rem;
  font-family: 'JetBrains Mono', monospace;
}

.stat-tile-label {
  font-size: 0.72rem;
  color: #52525B;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  font-weight: 700;
  font-family: 'JetBrains Mono', monospace;
}

.legend-card {
  background: #F3F4F6;
  border: 1.5px solid #18181B;
  border-left: 4px solid #FFCC00;
  border-radius: 3px;
  padding: 1.25rem;
  margin-bottom: 1.75rem;
  box-shadow: 4px 4px 0px #18181B;
}

.legend-card-header {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.78rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.06em;
  color: #09090B;
  margin-bottom: 0.85rem;
}

.legend-card-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 0.65rem 1.25rem;
}

.legend-pill {
  display: inline-flex;
  align-items: center;
  gap: 0.45rem;
  font-size: 0.82rem;
  color: #09090B;
}

.legend-dot {
  width: 10px;
  height: 10px;
  border-radius: 2px;
  border: 1px solid #18181B;
  flex-shrink: 0;
}

.bp-inst-tabs-shell {
  position: relative;
}

.bp-inst-radio {
  display: none;
}

.institution-tabs-container {
  position: sticky;
  top: 0;
  z-index: 40;
  display: flex;
  gap: 0.45rem;
  background: #F3F4F6;
  border: 1.5px solid #18181B;
  border-radius: 3px;
  padding: 0.35rem;
  margin: 1.75rem 0 2rem 0;
  flex-wrap: nowrap;
  overflow-x: auto;
  white-space: nowrap;
  scrollbar-width: none;
  box-shadow: 4px 4px 0px #18181B;
}

.institution-tabs-container::-webkit-scrollbar {
  display: none;
}

.inst-tab-btn {
  flex: 1 1 auto;
  min-width: max-content;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 0.6rem;
  padding: 0.72rem 1.15rem;
  border-radius: 2px;
  border: 1px solid transparent;
  background: transparent;
  color: #52525B;
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
  font-size: 0.92rem;
  font-weight: 600;
  cursor: pointer;
  white-space: nowrap;
  user-select: none;
  transition: background-color 0.16s ease, color 0.16s ease, border-color 0.16s ease;
}

.inst-tab-btn:hover {
  color: #09090B;
  background: #FFFFFF;
  border-color: #D4D4D8;
}

#bp-inst-ksu:checked ~ .institution-tabs-container label[for="bp-inst-ksu"],
#bp-inst-ung:checked ~ .institution-tabs-container label[for="bp-inst-ung"] {
  background: #FFCC00;
  color: #09090B;
  border-color: #18181B;
  font-weight: 700;
}

#bp-inst-ksu:checked ~ .institution-tabs-container label[for="bp-inst-ksu"]:hover,
#bp-inst-ung:checked ~ .institution-tabs-container label[for="bp-inst-ung"]:hover {
  background: #E6B800;
  color: #09090B;
}

.inst-tab-badge {
  background: rgba(24, 24, 27, 0.08);
  color: #52525B;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.72rem;
  font-weight: 700;
  padding: 0.15rem 0.45rem;
  border-radius: 2px;
  letter-spacing: 0.05em;
}

#bp-inst-ksu:checked ~ .institution-tabs-container label[for="bp-inst-ksu"] .inst-tab-badge,
#bp-inst-ung:checked ~ .institution-tabs-container label[for="bp-inst-ung"] .inst-tab-badge {
  background: #09090B;
  color: #FFCC00;
}

.institution-pane {
  display: none;
}

#bp-inst-ksu:checked ~ #pane-ksu,
#bp-inst-ung:checked ~ #pane-ung {
  display: block;
  animation: fadeIn 0.22s ease-out forwards;
}

@keyframes fadeIn {
  from { opacity: 0; transform: translateY(5px); }
  to { opacity: 1; transform: translateY(0); }
}

.badge {
  display: inline-flex;
  align-items: center;
  gap: 0.3rem;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.72rem;
  font-weight: 700;
  padding: 0.18rem 0.52rem;
  border-radius: 2px;
  letter-spacing: 0.02em;
  vertical-align: middle;
  border: 1px solid #18181B;
  background: #FFFFFF;
  color: #09090B;
}

.badge-completed {
  background: #DCFCE7;
  color: #14532D;
  border-color: #15803D;
}

.badge-planned {
  background: #FFCC00;
  color: #09090B;
  border-color: #18181B;
}

.badge-grade-a {
  background: #DCFCE7;
  color: #14532D;
  border-color: #15803D;
}

.badge-grade-b {
  background: #E0F2FE;
  color: #0C4A6E;
  border-color: #0369A1;
}

.badge-grade-c {
  background: #FEF3C7;
  color: #78350F;
  border-color: #B45309;
}

.badge-grade-k {
  background: #F3E8FF;
  color: #581C87;
  border-color: #7E22CE;
}

.badge-track-aae {
  background: #FEF3C7;
  color: #78350F;
  border-color: #B45309;
}

.badge-track-me {
  background: #FFFFFF;
  color: #09090B;
  border-color: #18181B;
}

.badge-track-me-elective {
  background: #CCFBF1;
  color: #134E4A;
  border-color: #0F766E;
}

.badge-track-math {
  background: #F3E8FF;
  color: #581C87;
  border-color: #7E22CE;
}

.badge-track-core {
  background: #DCFCE7;
  color: #14532D;
  border-color: #15803D;
}

.badge-credits {
  background: #FFFFFF;
  color: #52525B;
  border-color: #D4D4D8;
}

.course-badges-line {
  display: flex;
  gap: 0.4rem;
  flex-wrap: wrap;
  margin: 0.3rem 0 0.5rem 0;
}

.semester-header-bar {
  display: flex;
  align-items: center;
  gap: 0.85rem;
  flex-wrap: wrap;
  margin: 2.25rem 0 1rem 0;
  padding-bottom: 0.55rem;
  border-bottom: 1.5px solid #18181B;
}

.semester-heading {
  font-size: 1.45rem;
  font-weight: 800;
  letter-spacing: -0.02em;
  color: #09090B;
  margin: 0;
  padding: 0;
  border: none;
  line-height: 1.2;
}

.semester-meta-inline {
  display: inline-flex;
  align-items: center;
  gap: 0.45rem;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.82rem;
  color: #52525B;
  flex-wrap: wrap;
}

.semester-meta-inline strong {
  color: #09090B;
}

.course-block {
  background: #F3F4F6;
  border: 1.5px solid #18181B;
  border-radius: 3px;
  padding: 1.05rem 1.25rem;
  margin: 0 0 1rem 0;
  box-shadow: 3px 3px 0px #18181B;
}

.course-heading {
  font-size: 1.05rem;
  font-weight: 700;
  color: #09090B;
  margin: 0 0 0.4rem 0;
  padding: 0;
  border: none;
  line-height: 1.3;
}

.course-desc {
  color: #52525B;
  font-size: 0.93rem;
  line-height: 1.58;
  margin: 0.45rem 0 0 0;
}
</style>

<h1 class="bp-schedule-h1">Academic Class Schedule & Degree Progress</h1>

<div class="schedule-intro-meta">
  <strong>Lucas Lebron</strong> • Dual Degree: <strong>B.S. Aerospace Engineering (Astronautics Concentration)</strong> & <strong>B.S. Mechanical Engineering</strong> • Minor in <strong>Mathematics</strong><br>
  Southern Polytechnic College of Engineering and Engineering Technology, <strong>Kennesaw State University</strong>
</div>

<div class="nav-pills-bar">
  <a href="./" class="nav-pill-btn nav-pill-primary">
  ← Back to Portfolio Home
  </a>
  <a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="nav-pill-btn nav-pill-secondary">
  Official KSU Catalog ↗
  </a>
</div>

<hr class="bp-schedule-hr">

<h2 id="degree-progress-overview" class="bp-schedule-h2">// Degree Progress Overview</h2>

<div class="stats-summary-grid">
  <div class="stat-tile stat-tile--accent">
  <div class="stat-tile-val">3.65</div>
  <div class="stat-tile-label">Completed Major GPA</div>
  </div>
  <div class="stat-tile">
  <div class="stat-tile-val">145</div>
  <div class="stat-tile-label">Credits Completed</div>
  </div>
  <div class="stat-tile stat-tile--accent">
  <div class="stat-tile-val">53</div>
  <div class="stat-tile-label">Courses Completed</div>
  </div>
  <div class="stat-tile">
  <div class="stat-tile-val">20</div>
  <div class="stat-tile-label">Planned / In Progress</div>
  </div>
  <div class="stat-tile stat-tile--accent">
  <div class="stat-tile-val">73</div>
  <div class="stat-tile-label">Total Curriculum Courses</div>
  </div>
</div>
<div class="legend-card">
  <div class="legend-card-header">Curriculum Classification & Legend (2025–2026 Flowcharts)</div>
  <div class="legend-card-grid">
    <div class="legend-pill">
      <span class="legend-dot" style="background: #B45309;"></span>
      <span><strong>AAE Credits:</strong> Aerospace Engineering Major Core</span>
    </div>
    <div class="legend-pill">
      <span class="legend-dot" style="background: #18181B;"></span>
      <span><strong>ME Credits:</strong> Mechanical Engineering Major Core</span>
    </div>
    <div class="legend-pill">
      <span class="legend-dot" style="background: #0F766E;"></span>
      <span><strong>ME Technical Elective:</strong> Upper-division ME Specialization</span>
    </div>
    <div class="legend-pill">
      <span class="legend-dot" style="background: #D97706;"></span>
      <span><strong>AAE Technical Elective:</strong> Upper-division AAE Specialization</span>
    </div>
    <div class="legend-pill">
      <span class="legend-dot" style="background: #7E22CE;"></span>
      <span><strong>Math Minor:</strong> Advanced Mathematics Elective</span>
    </div>
    <div class="legend-pill">
      <span class="legend-dot" style="background: #15803D;"></span>
      <span><strong>Core IMPACTS:</strong> Institutional Social & Economic Core</span>
    </div>
  </div>
</div>

<div class="bp-inst-tabs-shell">
  <input type="radio" class="bp-inst-radio" name="bp-inst-tab" id="bp-inst-ksu" value="ksu" checked>
  <input type="radio" class="bp-inst-radio" name="bp-inst-tab" id="bp-inst-ung" value="ung">

  <div class="institution-tabs-container" role="tablist" aria-label="Academic Institution">
  <label class="inst-tab-btn" id="btn-tab-ksu" for="bp-inst-ksu" role="tab" aria-selected="true" aria-controls="pane-ksu" data-inst="ksu" tabindex="0">
  <span class="inst-tab-badge">KSU</span>
  <span>Kennesaw State University (2025–2027)</span>
  </label>
  <label class="inst-tab-btn" id="btn-tab-ung" for="bp-inst-ung" role="tab" aria-selected="false" aria-controls="pane-ung" data-inst="ung" tabindex="-1">
  <span class="inst-tab-badge">UNG</span>
  <span>University of North Georgia & AP Transfer (2022–2025)</span>
  </label>
  </div>
<div id="pane-ksu" class="institution-pane">

<div class="semester-header-bar">
  <h2 id="ksu-summer-2025" class="semester-heading">Summer 2025</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">Completed</span> • <strong>3 Credit Hours • Term GPA: 4.00</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ksu-stat-2332" class="course-heading">STAT 2332: Probability and Data Analysis</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-core">ME Credits / General Core</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">An introduction to probability, statistical methods, and data analysis techniques. Topics include descriptive statistics, probability theory, discrete and continuous random variables, sampling distributions, confidence intervals, hypothesis testing, linear regression, and ANOVA.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ksu-fall-2025" class="semester-heading">Fall 2025</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">Completed</span> • <strong>14 Credit Hours • Term GPA: 3.57 • Dean's List</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ksu-aae-1001l" class="course-heading">AAE 1001L: Intro to Aerospace Engineering Laboratory</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-aae">AAE Credits</span>
    <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
  </div>
  <p class="course-desc">Introductory laboratory experience in aerospace engineering covering foundational concepts of aeronautical and astronautical engineering, flight principles, laboratory instrumentation, aerodynamic force measurement, and engineering design teamwork.</p>
</div>

<div class="course-block">
  <h3 id="ksu-me-3101" class="course-heading">ME 3101: Materials Science and Engineering</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">A study of metals, ceramics, polymers, and composite materials in the context of material selection for engineering design and manufacturing. Topics include atomic bonding, crystal structures and defects, mechanical properties, deformation mechanisms, diffusion, phase diagrams, and heat treatment transformations.</p>
</div>

<div class="course-block">
  <h3 id="ksu-engr-3122" class="course-heading">ENGR 3122: Engineering Mechanics - Dynamics</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">A study of the mechanics of particles and rigid bodies. Topics covered include kinematics and kinetics of particles, work and kinetic energy principles, linear and angular impulse and momentum, planar rigid body kinetics, equations of motion, relative motion, and moving coordinate reference systems.</p>
</div>

<div class="course-block">
  <h3 id="ksu-engr-3131" class="course-heading">ENGR 3131: Strength of Materials</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Study and mathematical modeling of the mechanical behavior of deformable bodies under load. Emphasis is placed on elastic conditions of equilibrium, compatibility, and material behavior. Includes normal and shear stress/strain, axial loading, torsion of shafts, beam bending, shear flow, beam deflections, combined loading, and column buckling.</p>
</div>

<div class="course-block">
  <h3 id="ksu-engr-3132" class="course-heading">ENGR 3132: Strength of Materials Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
  </div>
  <p class="course-desc">Study and performance of laboratory testing and analysis techniques used in determining the mechanical behavior of materials under load. Includes standardized tensile, compressive, torsional, impact, and beam deflection testing, strain measurement with strain gages, and formal technical documentation.</p>
</div>

<div class="course-block">
  <h3 id="ksu-me-3410" class="course-heading">ME 3410: Thermodynamics</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Fundamentals of classical thermodynamics including the concept of energy and the laws governing the transfer and transformation of energy. Emphasis on thermodynamic properties of pure substances, equations of state, first and second law analysis of control volumes, entropy generation, and basic power and refrigeration cycles.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ksu-spring-2026" class="semester-heading">Spring 2026</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">Completed</span> • <strong>16 Credit Hours • Term GPA: 3.43</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ksu-aae-3000" class="course-heading">AAE 3000: Introduction to Flight</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-aae">AAE Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Covers the technological and historical perspectives of aeronautical and astronautical engineering. Topics include atmospheric properties, basic aerodynamics, airfoil and wing geometry, aircraft performance (climb, range, endurance), static stability and control, propulsion systems, and introduction to orbital space flight.</p>
</div>

<div class="course-block">
  <h3 id="ksu-engr-3801" class="course-heading">ENGR 3801: Aerodynamics</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-me-elective">ME Tech Elective</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Fundamentals of aerodynamics and fluid flow around aerodynamic bodies. Topics include potential flow theory, stream functions, circulation, thin airfoil theory, finite wing vortex theory (Prandtl lifting line), induced drag, boundary layer development, skin friction, and introduction to compressible flow and shock waves.</p>
</div>

<div class="course-block">
  <h3 id="ksu-me-3343" class="course-heading">ME 3343: Fluid Dynamics (Fluid Mechanics)</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">A study of the fundamentals of fluid statics and dynamics, including hydrostatic forces on submerged plates, buoyancy, continuity of fluid flow, linear momentum, and energy conservation. Applications of laminar and turbulent conduit flows, Moody charts, piping systems, pumps, and turbines.</p>
</div>

<div class="course-block">
  <h3 id="ksu-engr-3345" class="course-heading">ENGR 3345: Fluid Mechanics Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
  </div>
  <p class="course-desc">Laboratory reinforcing the principles of fluid mechanics studied in ME 3343, as they apply to hydraulic and pneumatic systems, flow rate metering, orifice discharge, friction head loss in pipes and fittings, and aerodynamic drag measurement. Emphasizes experimental reporting and error analysis.</p>
</div>

<div class="course-block">
  <h3 id="ksu-engr-3125" class="course-heading">ENGR 3125: Machine Dynamics & Vibrations</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Analysis of motion, velocity, acceleration, and forces in mechanisms and machines. Emphasis on analytical methods suitable for computerized simulation and graphical visualization. Provides an introduction to vibration theory, including oscillatory modeling and analysis of discrete and continuous mechanical systems.</p>
</div>

<div class="course-block">
  <h3 id="ksu-me-4141" class="course-heading">ME 4141: Machine Design 1</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Fundamentals of mechanical engineering design and component sizing under static and fatigue loading conditions. Covers stress concentrations, fatigue failure theories (Goodman, Gerber, ASME elliptic), and the design and selection of shafts, rolling contact bearings, spur and helical gears, springs, and fasteners.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ksu-summer-2026" class="semester-heading">Summer 2026</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">Completed</span> • <strong>10 Credit Hours • Term GPA: 4.00 • President's List</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ksu-engr-4402" class="course-heading">ENGR 4402: Engineering Ethics</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">1 Credit Hour (1 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Explores the practice of engineering in the context of ethics and moral philosophy. Covers safety, liability, professional responsibility, environmental impact, and legal obligations through engineering case studies. Emphasis on the NSPE Code of Ethics for Engineers and resolving ethical dilemmas.</p>
</div>

<div class="course-block">
  <h3 id="ksu-me-3440" class="course-heading">ME 3440: Heat Transfer</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Fundamentals and applications of conduction, convection, and thermal radiation. Topics include 1D and multi-dimensional steady and transient conduction, forced and free convection with boundary layer theory, radiation exchange between surfaces, and design and rating of heat exchangers (LMTD and ε-NTU methods).</p>
</div>

<div class="course-block">
  <h3 id="ksu-me-4250" class="course-heading">ME 4250: Computer Aided Engineering</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Introduces engineering software tools and computational techniques for the modeling and simulation of mechanical components and systems. Covers meshing strategies, finite element analysis (FEA) for structural and thermal problems, and computational fluid dynamics (CFD / finite volume methods) for fluid and thermal analysis.</p>
</div>

<div class="course-block">
  <h3 id="ksu-me-3701" class="course-heading">ME 3701: Manufacturing Engineering</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Introduces the fundamentals and applications of major manufacturing processes and engineering principles. Establishes technical knowledge in metal casting, bulk and sheet metal deformation, machining and material removal, additive manufacturing, polymer processing, and manufacturing economics.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ksu-fall-2026" class="semester-heading">Fall 2026</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-planned">Plan to Take / In Progress</span> • <strong>15 Credit Hours • 5 Courses</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ksu-engr-3804" class="course-heading">ENGR 3804: Intro to Aerospace Structural Analysis</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">In Progress</span>
    <span class="badge badge-track-aae">AAE Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">An introductory course for analyzing aircraft and aerospace structures that bridges basic solid mechanics with lightweight aerospace applications. Covers aircraft design and certification criteria, material allowables, stress analysis of thin-walled sections, shear flow, multicell torsion, and panel buckling.</p>
</div>

<div class="course-block">
  <h3 id="ksu-aae-4802" class="course-heading">AAE 4802: Spacecraft Propulsion</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">In Progress</span>
    <span class="badge badge-track-aae">AAE Credits (Astronautics)</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Principles and engineering of propulsion systems used in spacecraft. Covers rocket propulsion fundamentals, the ideal rocket equation, converging-diverging nozzle aerodynamics, chemical rocket engines (liquid and solid propellants), electric propulsion systems (ion thrusters, Hall thrusters), and orbital velocity increment requirements.</p>
</div>

<div class="course-block">
  <h3 id="ksu-aae-3125" class="course-heading">AAE 3125: Orbital Mechanics</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">In Progress</span>
    <span class="badge badge-track-aae">AAE Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Study of the science of space travel and orbital motion. Covers the two-body orbital problem, Kepler's laws, classical orbital elements, orbital coordinate transformations, orbital maneuvers (Hohmann and bi-elliptic transfers), inclination and plane changes, satellite ground tracks, and interplanetary trajectories.</p>
</div>

<div class="course-block">
  <h3 id="ksu-aae-3801l" class="course-heading">AAE 3801L: Aerodynamics & UAS Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">In Progress</span>
    <span class="badge badge-track-aae">AAE Credits</span>
    <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
  </div>
  <p class="course-desc">Comprehensive hands-on laboratory in aerodynamics and unmanned aerial systems (UAS). Students utilize wind tunnels to evaluate surface pressure distributions across airfoils, determine lift and drag polars, observe boundary layer stall, calibrate aerodynamic balances, and design and flight-test unmanned aerial vehicles.</p>
</div>

<div class="course-block">
  <h3 id="ksu-math-3262" class="course-heading">MATH 3262: Mathematical Modeling</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">In Progress</span>
    <span class="badge badge-track-math">Math Minor</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Project-oriented introduction to fundamental concepts and methods of mathematical modeling. Students formulate real-world problems in engineering and physical sciences into continuous and discrete mathematical models, applying analytical and numerical methods, sensitivity analysis, and simulation techniques.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ksu-spring-2027" class="semester-heading">Spring 2027</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-planned">Plan to Take</span> • <strong>17 Credit Hours • 6 Courses</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ksu-me-4201" class="course-heading">ME 4201: Senior Design 1</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">1 Credit Hour (1 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Part 1 of the two-course mechanical engineering senior design capstone project. Students form teams, identify open-ended engineering design problems, formulate engineering requirements and design constraints, generate conceptual designs, perform feasibility studies, and prepare for the FE Exam.</p>
</div>

<div class="course-block">
  <h3 id="ksu-aae-4250" class="course-heading">AAE 4250: Aero Computer-Aided Design</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-aae">AAE Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Computer-aided design applications specifically tailored for aerospace structures and flight vehicles. Covers 3D parametric geometric modeling of aerodynamic surfaces and fuselages, aerospace structural meshing, shell and composite modeling, and CAD-to-FEA digital engineering integration.</p>
</div>

<div class="course-block">
  <h3 id="ksu-me-3501" class="course-heading">ME 3501: Dynamic Systems & Control Theory</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">A unified approach for lumped-element modeling and dynamic analysis of mechanical, electrical, fluid, and multi-energy domain systems. Covers transfer functions, state-space equations, time and frequency domain responses, Laplace transforms, root locus, stability criteria, and PID feedback control design.</p>
</div>

<div class="course-block">
  <h3 id="ksu-aae-4503" class="course-heading">AAE 4503: Spacecraft Dynamic Systems & Control</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-aae">AAE Credits (Astronautics)</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Solves engineering problems related to the dynamics of spaceflight, orbital maneuvers, and satellite attitude stability and control. Students analyze 3D spacecraft rotational kinematics and kinetics, disturbance torques, and apply classical and state-space control methods using reaction wheels and thrusters.</p>
</div>

<div class="course-block">
  <h3 id="ksu-me-4501" class="course-heading">ME 4501: Vibrations & Control Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
  </div>
  <p class="course-desc">Laboratory course complementing dynamic systems and controls. Involves experimental study of single and multi-degree-of-freedom vibrations, damping characterization, free and forced response, resonance isolation, and hardware-in-the-loop implementation of closed-loop PID control algorithms.</p>
</div>

<div class="course-block">
  <h3 id="ksu-ee-2305" class="course-heading">EE 2305: Electronic Circuits & Machines</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">4 Credit Hours (3 Class, 3 Lab)</span>
  </div>
  <p class="course-desc">Fundamentals of DC and AC circuits and electromechanical machinery for non-electrical engineering majors. Covers circuit theorems, phasors, AC power, transformers, operational amplifiers, and the characteristics, control, and applications of DC motors, induction motors, and generators.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ksu-summer-2027" class="semester-heading">Summer 2027</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-planned">Plan to Take</span> • <strong>9 Credit Hours • 3 Courses</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ksu-aae-4203" class="course-heading">AAE 4203: Spacecraft Design 1</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-aae">AAE Credits (Astronautics)</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">First phase of the capstone senior design sequence for the Astronautics concentration in Aerospace Engineering. Covers space mission architecture, payload requirements, orbit selection, subsystem budgeting (mass, power, link margin), preliminary mechanical/thermal design, and Preliminary Design Review (PDR).</p>
</div>

<div class="course-block">
  <h3 id="ksu-me-3398---4400" class="course-heading">ME 3398 / 4400: Internship or Directed Study</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours</span>
  </div>
  <p class="course-desc">Supervised out-of-the-classroom engineering internship in an industrial setting (ME 3398) or individual faculty-guided undergraduate research study (ME 4400). Provides professional project experience combining technical problem-solving with scholarly investigation and formal reporting.</p>
</div>

<div class="course-block">
  <h3 id="ksu-econ-1000" class="course-heading">ECON 1000: Contemporary Economic Issues</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-core">Core IMPACTS</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Provides tools necessary to examine social and public policy issues from an economic perspective. Addresses fundamental economic questions regarding individuals, business firms, market dynamics, government regulation, macroeconomic indicators, and global trade economics.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ksu-fall-2027" class="semester-heading">Fall 2027</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-planned">Plan to Take</span> • <strong>17 Credit Hours • Culminating Dual Degree Capstones</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ksu-me-4202" class="course-heading">ME 4202: Senior Design 2</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">3 Credit Hours (1 Class, 6 Lab)</span>
  </div>
  <p class="course-desc">Part 2 and culmination of the two-course senior capstone project for mechanical engineering. Involves detailed design synthesis, simulation, fabrication, physical prototyping, and experimental validation of an open-ended engineering design project, with formal technical reporting and presentation.</p>
</div>

<div class="course-block">
  <h3 id="ksu-aae-4204" class="course-heading">AAE 4204: Spacecraft Design 2</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-aae">AAE Credits (Astronautics)</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Final capstone design project in astronautical engineering. Teams complete the detailed design, subsystem simulation, hardware-software integration, and environmental testing (thermal-vacuum, vibration) for a full spacecraft mission, culminating in the Critical Design Review (CDR) and formal defense before faculty and industry evaluators.</p>
</div>

<div class="course-block">
  <h3 id="ksu-me-4403" class="course-heading">ME 4403: Heat Transfer & Thermo Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-me">ME Credits</span>
    <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
  </div>
  <p class="course-desc">Laboratory course complementing thermodynamics and heat transfer lecture courses. Experiments provide practical experience in thermal sciences, including heat conduction, natural and forced convection, thermal radiation, heat exchanger performance, and thermodynamic refrigeration and power cycles.</p>
</div>

<div class="course-block">
  <h3 id="ksu-math-4310" class="course-heading">MATH 4310: Partial Differential Equations</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-math">Math Minor</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Introduction to partial differential equations (PDEs), their physical applications in science and engineering, and analytical solution methods. Covers classification of PDEs, separation of variables, Fourier series, Fourier transforms, the heat equation, wave equation, Laplace’s equation, and boundary-value problems.</p>
</div>

<div class="course-block">
  <h3 id="ksu-me-3133" class="course-heading">ME 3133: Composite Mechanics</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-me-elective">ME Tech Elective</span>
    <span class="badge badge-credits">3 Credit Hours (3 Class, 0 Lab)</span>
  </div>
  <p class="course-desc">Introduction to the technology and mechanics of advanced composites (polymer, metal, and ceramic matrix) with emphasis on structural design. Covers micromechanics of fiber-matrix systems, effective elastic properties, classical lamination theory, failure criteria (Tsai-Hill, Tsai-Wu), and composite fabrication methods.</p>
</div>

<div class="course-block">
  <h3 id="ksu-aae-4504" class="course-heading">AAE 4504: Spacecraft Dynamic Systems & Control Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-planned">Planned</span>
    <span class="badge badge-track-aae">AAE Credits (Astronautics)</span>
    <span class="badge badge-credits">1 Credit Hour (0 Class, 3 Lab)</span>
  </div>
  <p class="course-desc">Laboratory course focused on experimental spaceflight dynamics. Involves orbital maneuver simulations, satellite attitude determination using sensors (sun sensors, gyros), dynamic motions of rockets, reaction wheel stabilization, and demonstrating classical and state-space closed-loop control approaches on spacecraft testbeds.</p>
</div>

</div>

<div id="pane-ung" class="institution-pane">

<div class="semester-header-bar">
  <h2 id="ung-fall-2022" class="semester-heading">Fall 2022</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">Transfer Credit Accepted</span> • <strong>20 Credit Hours • Term GPA: 3.20</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ung-econ-2105" class="course-heading">ECON 2105: Principles of Economics - Macro</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-c">Grade: C</span>
    <span class="badge badge-track-core">Social Sciences Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Fundamental principles of macroeconomics. Analysis of national income determination, economic growth, unemployment, inflation, fiscal policy, monetary policy, the banking system, and international trade.</p>
</div>

<div class="course-block">
  <h3 id="ung-engl-1102" class="course-heading">ENGL 1102: Composition II</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-core">Communication Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">A composition course developing writing skills emphasizing interpretation, evaluation, analytical essays, critical thinking, research methods, and literature-based writing.</p>
</div>

<div class="course-block">
  <h3 id="ung-math-1111" class="course-heading">MATH 1111: College Algebra</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-math">Mathematics Foundation</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Topics include functions and their graphs, linear and quadratic equations and inequalities, polynomials, rational functions, exponential and logarithmic functions, and systems of equations.</p>
</div>

<div class="course-block">
  <h3 id="ung-me-1311" class="course-heading">ME 1311: MATLAB for Engineers with Applications</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-me">Engineering Core</span>
    <span class="badge badge-credits">4.0 Credit Hours</span>
  </div>
  <p class="course-desc">Introduction to programming and mathematical computing using MATLAB for engineering applications. Covers array operations, data visualization, conditional logic, loops, functions, linear algebra solvers, numerical methods, and technical modeling.</p>
</div>

<div class="course-block">
  <h3 id="ung-musi-1107" class="course-heading">MUSI 1107: Arts in Society: Music</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-core">Humanities Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">An introduction to music in cultural and historical contexts, covering elements of musical structure, major eras and styles, and aesthetic listening appreciation.</p>
</div>

<div class="course-block">
  <h3 id="ung-musi-1t00" class="course-heading">MUSI 1T00: Music Transfer Elective</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-core">Transfer Elective</span>
    <span class="badge badge-credits">1.0 Credit Hour</span>
  </div>
  <p class="course-desc">Undergraduate music transfer elective credit accepted toward degree requirements.</p>
</div>

<div class="course-block">
  <h3 id="ung-pols-1101" class="course-heading">POLS 1101: American Government</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-core">Institutional Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">An introductory study of the government and politics of the United States and the state of Georgia, covering the constitutional foundation, institutions, civil liberties, and political processes.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ung-spring-2023" class="semester-heading">Spring 2023</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">Transfer Credit Accepted</span> • <strong>19 Credit Hours • Term GPA: 3.21</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ung-chem-1211" class="course-heading">CHEM 1211: General Chemistry I</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-core">STEM Science Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">First course in a two-semester general chemistry sequence. Topics include atomic structure, chemical bonding, stoichiometry, periodic trends, gases, thermochemistry, and molecular geometry.</p>
</div>

<div class="course-block">
  <h3 id="ung-chem-1211l" class="course-heading">CHEM 1211L: General Chemistry I Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-core">STEM Science Lab</span>
    <span class="badge badge-credits">1.0 Credit Hour</span>
  </div>
  <p class="course-desc">Laboratory course accompanying CHEM 1211 emphasizing experimental techniques, chemical synthesis, stoichiometric analysis, calorimetry, and safety.</p>
</div>

<div class="course-block">
  <h3 id="ung-hist-1111" class="course-heading">HIST 1111: Pre-Modern World History</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-core">World History Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Survey of world history from early human civilizations through the pre-modern era, examining cultural, political, economic, and technological interactions across global societies.</p>
</div>

<div class="course-block">
  <h3 id="ung-japn-1001" class="course-heading">JAPN 1001: Elementary Japanese I</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-core">Foreign Language Elective</span>
    <span class="badge badge-credits">4.0 Credit Hours</span>
  </div>
  <p class="course-desc">Introduction to Japanese language and culture. Focuses on speaking, listening, reading, and writing Japanese using Hiragana, Katakana, and basic Kanji.</p>
</div>

<div class="course-block">
  <h3 id="ung-math-1113" class="course-heading">MATH 1113: Precalculus</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-math">Mathematics Foundation</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">In-depth study of algebraic, trigonometric, exponential, and logarithmic functions, analytic trigonometry, vectors, and preparatory concepts for calculus.</p>
</div>

<div class="course-block">
  <h3 id="ung-math-1501" class="course-heading">MATH 1501: Calculus I (eCore)</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-c">Grade: C</span>
    <span class="badge badge-track-math">Mathematics Core</span>
    <span class="badge badge-credits">4.0 Credit Hours</span>
  </div>
  <p class="course-desc">First course in calculus. Topics include limits, continuity, differentiation of algebraic and transcendental functions, applications of derivatives (optimization, related rates), and introductory definite and indefinite integrals.</p>
</div>

<div class="course-block">
  <h3 id="ung-musi-1t01" class="course-heading">MUSI 1T01: Music Transfer Elective</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-core">Transfer Elective</span>
    <span class="badge badge-credits">1.0 Credit Hour</span>
  </div>
  <p class="course-desc">Undergraduate transfer elective credit in music.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ung-summer-2023" class="semester-heading">Summer 2023</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">Transfer Credit Accepted</span> • <strong>4 Credit Hours • Term GPA: 3.00</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ung-math-2202" class="course-heading">MATH 2202: Calculus II</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-math">Mathematics Core</span>
    <span class="badge badge-credits">4.0 Credit Hours</span>
  </div>
  <p class="course-desc">Techniques of integration, applications of definite integrals, improper integrals, sequences, infinite series, power series, Taylor series, and parametric and polar curves.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ung-fall-2023" class="semester-heading">Fall 2023</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">Transfer Credit Accepted</span> • <strong>6 Credit Hours • Term GPA: 2.50</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ung-japn-2001" class="course-heading">JAPN 2001: Intermediate Japanese I</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-core">Foreign Language Elective</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Intermediate Japanese focusing on expanding communicative proficiency, complex grammatical patterns, reading comprehension, and additional Kanji characters.</p>
</div>

<div class="course-block">
  <h3 id="ung-math-2306" class="course-heading">MATH 2306: Ordinary Differential Equations</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-c">Grade: C</span>
    <span class="badge badge-track-math">Mathematics Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Study of ordinary differential equations. Covers first-order ODEs, linear higher-order differential equations, Laplace transforms, series solutions, systems of linear differential equations, and applications to engineering and physical systems.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ung-spring-2024" class="semester-heading">Spring 2024</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">Transfer Credit Accepted</span> • <strong>14 Credit Hours • Term GPA: 3.50</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ung-edg-1211" class="course-heading">EDG 1211: Engineering Graphics I</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-me">Engineering Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Fundamentals of engineering graphics and computer-aided design (CAD). Orthographic projection, isometric views, sectioning, dimensioning, tolerances, and 3D parametric solid modeling.</p>
</div>

<div class="course-block">
  <h3 id="ung-japn-1002" class="course-heading">JAPN 1002: Elementary Japanese II</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-core">Foreign Language Elective</span>
    <span class="badge badge-credits">4.0 Credit Hours</span>
  </div>
  <p class="course-desc">Continuation of Elementary Japanese I. Expands conversational skills, listening comprehension, grammatical structures, and Kanji literacy.</p>
</div>

<div class="course-block">
  <h3 id="ung-japn-2002" class="course-heading">JAPN 2002: Intermediate Japanese II</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-core">Foreign Language Elective</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Second course in intermediate Japanese. Refines conversational fluency, formal expressions, contextual discourse, and cultural understanding.</p>
</div>

<div class="course-block">
  <h3 id="ung-math-2203" class="course-heading">MATH 2203: Calculus III</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-math">Mathematics Core</span>
    <span class="badge badge-credits">4.0 Credit Hours</span>
  </div>
  <p class="course-desc">Multivariable calculus. Vectors in three dimensions, vector-valued functions, functions of several variables, partial derivatives, directional derivatives, multiple integrals (Cartesian, cylindrical, spherical), vector calculus, Green's Theorem, Divergence Theorem, and Stokes' Theorem.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ung-summer-2024" class="semester-heading">Summer 2024</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">Transfer Credit Accepted</span> • <strong>4 Credit Hours • Term GPA: 3.25</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ung-phys-2211" class="course-heading">PHYS 2211: Principles of Physics I</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-core">STEM Physics Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Calculus-based physics covering classical mechanics, kinematics, Newton's laws of motion, work and energy, linear momentum, rotational dynamics, gravitation, and oscillations.</p>
</div>

<div class="course-block">
  <h3 id="ung-phys-2211l" class="course-heading">PHYS 2211L: Principles of Physics Lab I</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-core">STEM Physics Lab</span>
    <span class="badge badge-credits">1.0 Credit Hour</span>
  </div>
  <p class="course-desc">Laboratory course reinforcing concepts of classical mechanics through experimental measurements, motion tracking, conservation laws verification, and data analysis.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ung-fall-2024" class="semester-heading">Fall 2024</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">Transfer Credit Accepted</span> • <strong>14 Credit Hours • Term GPA: 2.71</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ung-chem-1212" class="course-heading">CHEM 1212: General Chemistry II</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-core">STEM Science Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Second semester of general chemistry. Topics include intermolecular forces, solutions, chemical kinetics, chemical equilibrium, acid-base chemistry, thermodynamics (entropy and free energy), and electrochemistry.</p>
</div>

<div class="course-block">
  <h3 id="ung-chem-1212l" class="course-heading">CHEM 1212L: General Chemistry II Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-core">STEM Science Lab</span>
    <span class="badge badge-credits">1.0 Credit Hour</span>
  </div>
  <p class="course-desc">Laboratory accompanying CHEM 1212 covering quantitative chemical kinetics, equilibrium constants, acid-base titrations, electrochemistry, and spectrophotometry.</p>
</div>

<div class="course-block">
  <h3 id="ung-engr-2214" class="course-heading">ENGR 2214: Engineering Mechanics - Statics</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-c">Grade: C</span>
    <span class="badge badge-track-me">Engineering Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Study of force systems in equilibrium. Topics include vector representation of forces, moments, couples, equilibrium of particles and rigid bodies, analysis of trusses, frames, and machines, centroids, moments of inertia, and friction.</p>
</div>

<div class="course-block">
  <h3 id="ung-math-3260" class="course-heading">MATH 3260: Linear Algebra</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-b">Grade: B</span>
    <span class="badge badge-track-math">Mathematics Core / Minor</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Systems of linear equations, matrices, determinants, vector spaces, subspaces, linear transformations, eigenvalues and eigenvectors, diagonalization, and inner product spaces.</p>
</div>

<div class="course-block">
  <h3 id="ung-phys-2212" class="course-heading">PHYS 2212: Calculus-based Physics II w/Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-c">Grade: C</span>
    <span class="badge badge-track-core">STEM Physics Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Calculus-based physics covering electricity and magnetism. Electric charge, Coulomb's Law, electric fields, Gauss's Law, electric potential, capacitance, DC circuits, magnetic fields, Ampere's Law, and electromagnetic induction.</p>
</div>

<div class="course-block">
  <h3 id="ung-phys-2212l" class="course-heading">PHYS 2212L: Calculus-based Physics II Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-c">Grade: C</span>
    <span class="badge badge-track-core">STEM Physics Lab</span>
    <span class="badge badge-credits">1.0 Credit Hour</span>
  </div>
  <p class="course-desc">Laboratory experiments in electricity, magnetism, DC circuits, oscilloscope usage, and electromagnetic induction.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ung-spring-2025" class="semester-heading">Spring 2025</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">Transfer Credit Accepted</span> • <strong>3 Credit Hours • Term GPA: 4.00</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ung-engr-1000" class="course-heading">ENGR 1000: Introduction to Engineering</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-me">Engineering Core</span>
    <span class="badge badge-credits">2.0 Credit Hours</span>
  </div>
  <p class="course-desc">Introduction to engineering disciplines, the engineering design process, professional ethics, problem-solving methodologies, and engineering team projects.</p>
</div>

<div class="course-block">
  <h3 id="ung-me-1001l" class="course-heading">ME 1001L: Intro to Mechanical Engr Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-a">Grade: A</span>
    <span class="badge badge-track-me">Engineering Core</span>
    <span class="badge badge-credits">1.0 Credit Hour</span>
  </div>
  <p class="course-desc">Introductory laboratory in mechanical engineering covering basic manufacturing tools, mechanical prototyping, measurements, and engineering design challenges.</p>
</div>

<div class="semester-header-bar">
  <h2 id="ung-spring-2022-advanced-placement-credit" class="semester-heading">Spring 2022: Advanced Placement Credit</h2>
  <div class="semester-meta-inline">
    <span class="badge badge-completed">AP Transfer Credit</span> • <strong>18.0 Earned Credit Hours</strong>
  </div>
</div>

<div class="course-block">
  <h3 id="ung-chem-1151---1151l" class="course-heading">CHEM 1151 / 1151L: Survey of Chemistry I & Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-k">Grade: K (AP Credit)</span>
    <span class="badge badge-track-core">STEM Core</span>
    <span class="badge badge-credits">4.0 Credit Hours</span>
  </div>
  <p class="course-desc">Advanced Placement examination credit accepted for Survey of Chemistry I lecture and laboratory.</p>
</div>

<div class="course-block">
  <h3 id="ung-chem-1152---1152l" class="course-heading">CHEM 1152 / 1152L: Survey of Chemistry II & Lab</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-k">Grade: K (AP Credit)</span>
    <span class="badge badge-track-core">STEM Core</span>
    <span class="badge badge-credits">4.0 Credit Hours</span>
  </div>
  <p class="course-desc">Advanced Placement examination credit accepted for Survey of Chemistry II lecture and laboratory.</p>
</div>

<div class="course-block">
  <h3 id="ung-engl-1101" class="course-heading">ENGL 1101: Composition I</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-k">Grade: K (AP Credit)</span>
    <span class="badge badge-track-core">Communication Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Advanced Placement examination credit accepted for English Composition I.</p>
</div>

<div class="course-block">
  <h3 id="ung-hist-2111" class="course-heading">HIST 2111: United States History to 1877</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-k">Grade: K (AP Credit)</span>
    <span class="badge badge-track-core">US History Core</span>
    <span class="badge badge-credits">3.0 Credit Hours</span>
  </div>
  <p class="course-desc">Advanced Placement examination credit accepted for United States History to 1877.</p>
</div>

<div class="course-block">
  <h3 id="ung-sci-1101" class="course-heading">SCI 1101: Science, Society & Environment I</h3>
  <div class="course-badges-line">
    <span class="badge badge-grade-k">Grade: K (AP Credit)</span>
    <span class="badge badge-track-core">Science Core</span>
    <span class="badge badge-credits">4.0 Credit Hours</span>
  </div>
  <p class="course-desc">Advanced Placement examination credit accepted for Science, Society & Environment I.</p>
</div>

</div>

</div>

<script>
(function () {
  function syncScheduleTOC(target) {
  var ksuPane = document.getElementById('pane-ksu');
  var ungPane = document.getElementById('pane-ung');
  var ksuLbl = document.getElementById('btn-tab-ksu');
  var ungLbl = document.getElementById('btn-tab-ung');
  var ksuRadio = document.getElementById('bp-inst-ksu');
  var ungRadio = document.getElementById('bp-inst-ung');
  if (!ksuPane || !ungPane || !ksuLbl || !ungLbl) return;
  if (ksuRadio && ungRadio) {
  ksuRadio.checked = (target === 'ksu');
  ungRadio.checked = (target === 'ung');
  }
  ksuLbl.setAttribute('aria-selected', target === 'ksu' ? 'true' : 'false');
  ksuLbl.setAttribute('tabindex', target === 'ksu' ? '0' : '-1');
  ungLbl.setAttribute('aria-selected', target === 'ung' ? 'true' : 'false');
  ungLbl.setAttribute('tabindex', target === 'ung' ? '0' : '-1');
  var tocNav = document.getElementById('toc-nav');
  if (tocNav) {
  var activePane = (target === 'ksu') ? ksuPane : ungPane;
  var links = tocNav.querySelectorAll('.toc-link');
  links.forEach(function (link) {
  var id = link.getAttribute('data-target');
  if (id) {
  var el = document.getElementById(id);
  if (el) {
  if (id === 'degree-progress-overview' || activePane.contains(el)) {
  link.style.display = '';
  } else {
  link.style.display = 'none';
  }
  }
  }
  });
  }
  }
  function initScheduleTabs() {
  var radios = Array.prototype.slice.call(document.querySelectorAll('.bp-inst-radio'));
  var labels = Array.prototype.slice.call(document.querySelectorAll('.inst-tab-btn[data-inst]'));
  radios.forEach(function (radio) {
  radio.addEventListener('change', function () {
  if (radio.checked) {
  syncScheduleTOC(radio.value);
  }
  });
  });
  labels.forEach(function (lbl, index) {
  lbl.addEventListener('keydown', function (event) {
  if (event.key === 'ArrowRight' || event.key === 'ArrowLeft') {
  event.preventDefault();
  var nextLbl = labels[(index + 1) % labels.length];
  nextLbl.focus();
  syncScheduleTOC(nextLbl.getAttribute('data-inst'));
  } else if (event.key === 'Enter' || event.key === ' ') {
  event.preventDefault();
  syncScheduleTOC(lbl.getAttribute('data-inst'));
  }
  });
  });
  setTimeout(function () {
  var activeRadio = document.querySelector('.bp-inst-radio:checked');
  syncScheduleTOC(activeRadio ? activeRadio.value : 'ksu');
  }, 120);
  }
  if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', initScheduleTabs);
  } else {
  initScheduleTabs();
  }
})();
</script>