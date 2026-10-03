---
layout: default
title: Academic Class Schedule & Degree Progress
permalink: /class-schedule.html
---

<style>
  .schedule-hero {
  margin-bottom: 2rem;
  padding-bottom: 1.5rem;
  border-bottom: 1px solid var(--border-color);
  }

  .schedule-title {
  font-size: 2.1rem;
  font-weight: 700;
  letter-spacing: -0.025em;
  color: #ffffff;
  margin-bottom: 0.5rem;
  }

  .schedule-subtitle {
  font-size: 1.05rem;
  color: var(--text-muted);
  line-height: 1.5;
  margin-bottom: 1.25rem;
  }

  .action-nav-bar {
  display: flex;
  gap: 0.75rem;
  flex-wrap: wrap;
  margin: 1.25rem 0;
  }

  .btn-nav {
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

  .btn-nav-primary {
  background: #3b82f6;
  color: #ffffff !important;
  }
  .btn-nav-primary:hover {
  background: #2563eb;
  }

  .btn-nav-secondary {
  background: #1c202c;
  color: var(--text-muted) !important;
  border: 1px solid #2d3345;
  }
  .btn-nav-secondary:hover {
  color: #ffffff !important;
  border-color: #3b82f6;
  }

  /* Stat Summary Cards */
  .stats-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(170px, 1fr));
  gap: 1rem;
  margin: 1.75rem 0;
  }

  .stat-card {
  background: var(--card-bg);
  border: 1px solid var(--border-color);
  border-radius: 10px;
  padding: 1.1rem 1rem;
  position: relative;
  overflow: hidden;
  }

  .stat-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: var(--accent);
  }

  .stat-val {
  font-size: 1.75rem;
  font-weight: 700;
  color: #ffffff;
  line-height: 1.1;
  margin-bottom: 0.35rem;
  font-family: 'JetBrains Mono', monospace;
  }

  .stat-label {
  font-size: 0.8rem;
  color: var(--text-muted);
  text-transform: uppercase;
  letter-spacing: 0.05em;
  font-weight: 600;
  }

  /* Legend Box */
  .legend-box {
  background: rgba(22, 25, 34, 0.6);
  border: 1px solid var(--border-color);
  border-radius: 10px;
  padding: 1.25rem;
  margin-bottom: 2rem;
  }

  .legend-title {
  font-size: 0.88rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.06em;
  color: var(--text-muted);
  margin-bottom: 0.85rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
  gap: 0.5rem;
  }

  .legend-items {
  display: flex;
  flex-wrap: wrap;
  gap: 0.6rem 1.2rem;
  }

  .legend-item {
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

  /* Filter Controls */
  .filter-section {
  background: var(--card-bg);
  border: 1px solid var(--border-color);
  border-radius: 10px;
  padding: 1rem 1.25rem;
  margin-bottom: 2rem;
  display: flex;
  flex-direction: column;
  gap: 0.9rem;
  }

  .search-wrapper {
  position: relative;
  width: 100%;
  }

  .search-input {
  width: 100%;
  background: #0f1117;
  border: 1px solid #2d3345;
  border-radius: 7px;
  padding: 0.65rem 1rem 0.65rem 2.4rem;
  font-size: 0.9rem;
  color: #ffffff;
  font-family: inherit;
  outline: none;
  transition: border-color 0.2s ease;
  }

  .search-input:focus {
  border-color: #3b82f6;
  }

  .search-icon {
  position: absolute;
  left: 0.85rem;
  top: 50%;
  transform: translateY(-50%);
  color: var(--text-muted);
  pointer-events: none;
  }

  .filter-pills {
  display: flex;
  flex-wrap: wrap;
  gap: 0.45rem;
  }

  .filter-btn {
  background: #1c202c;
  border: 1px solid #2d3345;
  color: var(--text-muted);
  border-radius: 20px;
  padding: 0.35rem 0.85rem;
  font-size: 0.82rem;
  font-weight: 500;
  cursor: pointer;
  transition: all 0.15s ease;
  }

  .filter-btn:hover {
  color: #ffffff;
  border-color: #3b82f6;
  }

  .filter-btn.active {
  background: #3b82f6;
  border-color: #3b82f6;
  color: #ffffff;
  font-weight: 600;
  }

  /* Semester Section */
  .semester-card {
  margin-bottom: 2.5rem;
  transition: all 0.2s ease;
  }

  .semester-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
  gap: 0.75rem;
  padding: 0.75rem 0;
  margin-bottom: 1rem;
  border-bottom: 1px solid #232838;
  }

  .semester-title-group {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  flex-wrap: wrap;
  }

  .semester-title {
  font-size: 1.35rem;
  font-weight: 700;
  color: #ffffff;
  margin: 0;
  }

  .semester-status-tag {
  font-size: 0.75rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  padding: 0.25rem 0.65rem;
  border-radius: 20px;
  }

  .status-completed {
  background: rgba(16, 185, 129, 0.15);
  color: #34d399;
  border: 1px solid rgba(16, 185, 129, 0.35);
  }

  .status-planned {
  background: rgba(168, 85, 247, 0.15);
  color: #c084fc;
  border: 1px solid rgba(168, 85, 247, 0.35);
  }

  .semester-stats {
  font-size: 0.85rem;
  color: var(--text-muted);
  font-family: 'JetBrains Mono', monospace;
  }

  /* Course Cards Grid */
  .course-list {
  display: grid;
  grid-template-columns: 1fr;
  gap: 1rem;
  }

  .course-card {
  background: var(--card-bg);
  border: 1px solid var(--border-color);
  border-radius: 10px;
  padding: 1.15rem 1.25rem;
  transition: transform 0.15s ease, border-color 0.15s ease, box-shadow 0.15s ease;
  position: relative;
  }

  .course-card:hover {
  border-color: #3b82f6;
  transform: translateY(-2px);
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.35);
  }

  .course-card-top {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  gap: 1rem;
  margin-bottom: 0.65rem;
  flex-wrap: wrap;
  }

  .course-id-title {
  display: flex;
  flex-direction: column;
  gap: 0.2rem;
  }

  .course-code {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.95rem;
  font-weight: 700;
  color: #60a5fa;
  }

  .course-name {
  font-size: 1.05rem;
  font-weight: 600;
  color: #ffffff;
  margin: 0;
  }

  .course-badges {
  display: flex;
  align-items: center;
  gap: 0.45rem;
  flex-wrap: wrap;
  }

  /* Badges */
  .grade-badge {
  font-size: 0.82rem;
  font-weight: 700;
  padding: 0.25rem 0.65rem;
  border-radius: 6px;
  font-family: 'JetBrains Mono', monospace;
  display: inline-flex;
  align-items: center;
  gap: 0.3rem;
  }

  .grade-a {
  background: rgba(16, 185, 129, 0.18);
  color: #34d399;
  border: 1px solid rgba(16, 185, 129, 0.4);
  }

  .grade-b {
  background: rgba(56, 189, 248, 0.18);
  color: #38bdf8;
  border: 1px solid rgba(56, 189, 248, 0.4);
  }

  .grade-planned {
  background: rgba(168, 85, 247, 0.15);
  color: #d8b4fe;
  border: 1px solid rgba(168, 85, 247, 0.35);
  }

  .track-badge {
  font-size: 0.72rem;
  font-weight: 600;
  padding: 0.25rem 0.55rem;
  border-radius: 6px;
  letter-spacing: 0.03em;
  text-transform: uppercase;
  }

  .track-aae {
  background: rgba(251, 191, 36, 0.12);
  color: #fbbf24;
  border: 1px solid rgba(251, 191, 36, 0.3);
  }

  .track-me {
  background: rgba(56, 189, 248, 0.12);
  color: #38bdf8;
  border: 1px solid rgba(56, 189, 248, 0.3);
  }

  .track-me-elective {
  background: rgba(45, 212, 191, 0.12);
  color: #2dd4bf;
  border: 1px solid rgba(45, 212, 191, 0.3);
  }

  .track-aae-elective {
  background: rgba(251, 146, 60, 0.12);
  color: #fb923c;
  border: 1px solid rgba(251, 146, 60, 0.3);
  }

  .track-math {
  background: rgba(167, 139, 250, 0.12);
  color: #c084fc;
  border: 1px solid rgba(167, 139, 250, 0.3);
  }

  .track-core {
  background: rgba(74, 222, 128, 0.12);
  color: #4ade80;
  border: 1px solid rgba(74, 222, 128, 0.3);
  }

  .course-description {
  font-size: 0.92rem;
  color: #cbd5e1;
  line-height: 1.6;
  margin: 0.5rem 0 0.75rem 0;
  }

  .course-footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-top: 1px solid #1f2432;
  padding-top: 0.6rem;
  margin-top: 0.6rem;
  font-size: 0.8rem;
  color: var(--text-muted);
  flex-wrap: wrap;
  gap: 0.5rem;
  }

  .course-credits {
  font-family: 'JetBrains Mono', monospace;
  }

  .course-catalog-link {
  color: #60a5fa;
  text-decoration: none;
  display: inline-flex;
  align-items: center;
  gap: 0.25rem;
  font-size: 0.8rem;
  transition: color 0.15s ease;
  }

  .course-catalog-link:hover {
  color: #93c5fd;
  text-decoration: underline;
  }

  .no-results-msg {
  display: none;
  text-align: center;
  padding: 3rem 1rem;
  color: var(--text-muted);
  font-size: 1.05rem;
  }
</style>

<div class="schedule-hero">
<h1 class="schedule-title">Academic Course Schedule & Degree Progress</h1>
<div class="schedule-subtitle">
<strong>Lucas Lebron</strong> • Dual Degree: <strong>B.S. Aerospace Engineering (Astronautics Concentration)</strong> & <strong>B.S. Mechanical Engineering</strong> • Minor in <strong>Mathematics</strong><br>
Southern Polytechnic College of Engineering and Engineering Technology, <strong>Kennesaw State University</strong>
</div>

<div class="action-nav-bar">
<a href="{{ '/' | relative_url }}" class="btn-nav btn-nav-secondary">
← Back to Portfolio Home
</a>
<a href="{{ '/assets/docs/resume-lucas-lebron.pdf' | relative_url }}" class="btn-nav btn-nav-primary">
View Resume (PDF)
</a>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="btn-nav btn-nav-secondary">
Official KSU Catalog ↗
</a>
</div>
</div>

<!-- Key Performance Statistics -->
<div class="stats-grid">
<div class="stat-card" style="--accent: #10b981;">
<div class="stat-val">3.63</div>
<div class="stat-label">Completed Major GPA</div>
</div>
<div class="stat-card" style="--accent: #3b82f6;">
<div class="stat-val">40</div>
<div class="stat-label">Credits Completed</div>
</div>
<div class="stat-card" style="--accent: #10b981;">
<div class="stat-val">16</div>
<div class="stat-label">Courses Completed (10 A's, 6 B's)</div>
</div>
<div class="stat-card" style="--accent: #a855f7;">
<div class="stat-val">20</div>
<div class="stat-label">Planned / In Progress</div>
</div>
<div class="stat-card" style="--accent: #f59e0b;">
<div class="stat-val">36</div>
<div class="stat-label">Total Curriculum Courses</div>
</div>
</div>

<!-- Curriculum Flowchart Legend -->
<div class="legend-box">
<div class="legend-title">
<span>Curriculum Classification & Legend (2025–2026 Flowcharts)</span>
<span style="font-size: 0.78rem; text-transform: none; color: var(--text-muted); font-weight: normal;">Source: <a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" style="color: #60a5fa;">KSU Academic Catalog</a></span>
</div>
<div class="legend-items">
<div class="legend-item">
<span class="legend-dot" style="background: #fbbf24;"></span>
<span><strong>AAE Credits:</strong> Aerospace Engineering Major Core</span>
</div>
<div class="legend-item">
<span class="legend-dot" style="background: #38bdf8;"></span>
<span><strong>ME Credits:</strong> Mechanical Engineering Major Core</span>
</div>
<div class="legend-item">
<span class="legend-dot" style="background: #2dd4bf;"></span>
<span><strong>ME Technical Elective:</strong> Upper-division ME Specialization</span>
</div>
<div class="legend-item">
<span class="legend-dot" style="background: #fb923c;"></span>
<span><strong>AAE Technical Elective:</strong> Upper-division AAE Specialization</span>
</div>
<div class="legend-item">
<span class="legend-dot" style="background: #c084fc;"></span>
<span><strong>Math Minor:</strong> Advanced Mathematics Elective</span>
</div>
<div class="legend-item">
<span class="legend-dot" style="background: #4ade80;"></span>
<span><strong>Core IMPACTS:</strong> Institutional Social & Economic Core</span>
</div>
</div>
</div>

<!-- Interactive Search and Filters -->
<div class="filter-section">
<div class="search-wrapper">
<svg class="search-icon" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
<circle cx="11" cy="11" r="8"></circle>
<line x1="21" y1="21" x2="16.65" y2="16.65"></line>
</svg>
<input type="text" id="courseSearch" class="search-input" placeholder="Search by course code, title, or keywords (e.g. propulsion, fluid, dynamics, CAD, orbital)...">
</div>
<div class="filter-pills">
<button class="filter-btn active" data-filter="all">All Courses (36)</button>
<button class="filter-btn" data-filter="completed">Completed (16)</button>
<button class="filter-btn" data-filter="planned">Planned / In Progress (20)</button>
<button class="filter-btn" data-filter="aae">Aerospace (AAE)</button>
<button class="filter-btn" data-filter="me">Mechanical (ME)</button>
<button class="filter-btn" data-filter="math">Math Minor</button>
</div>
</div>

<div id="noResults" class="no-results-msg">
No courses found matching your search. Please try a different query or filter.
</div>

<!-- ======================================================== -->
<!-- FALL 2025 (COMPLETED)                                     -->
<!-- ======================================================== -->
<div class="semester-card" data-semester="fall-2025" data-status="completed">
<div class="semester-header">
<div class="semester-title-group">
<h2 class="semester-title">Fall 2025</h2>
<span class="semester-status-tag status-completed">Completed</span>
</div>
<div class="semester-stats">14 Credit Hours • Term GPA: 3.57</div>
</div>

<div class="course-list">

<div class="course-card" data-track="aae" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">AAE 1001L</span>
<h3 class="course-name">Intro to Aerospace Engineering Laboratory</h3>
</div>
<div class="course-badges">
<span class="track-badge track-aae">AAE Credits</span>
<span class="grade-badge grade-a">Grade: A</span>
</div>
</div>
<p class="course-description">
Introductory laboratory experience in aerospace engineering covering foundational concepts of aeronautical and astronautical engineering, flight principles, laboratory instrumentation, aerodynamic force measurement, and engineering design teamwork.
</p>
<div class="course-footer">
<span class="course-credits">1 Credit Hour (0 Class, 3 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 3101</span>
<h3 class="course-name">Materials Science and Engineering</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-b">Grade: B</span>
</div>
</div>
<p class="course-description">
A study of metals, ceramics, polymers, and composite materials in the context of material selection for engineering design and manufacturing. Topics include atomic bonding, crystal structures and defects, mechanical properties, deformation mechanisms, diffusion, phase diagrams, and heat treatment transformations.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ENGR 3122</span>
<h3 class="course-name">Engineering Mechanics - Dynamics</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-a">Grade: A</span>
</div>
</div>
<p class="course-description">
A study of the mechanics of particles and rigid bodies. Topics covered include kinematics and kinetics of particles, work and kinetic energy principles, linear and angular impulse and momentum, planar rigid body kinetics, equations of motion, relative motion, and moving coordinate reference systems.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ENGR 3131</span>
<h3 class="course-name">Strength of Materials</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-b">Grade: B</span>
</div>
</div>
<p class="course-description">
Study and mathematical modeling of the mechanical behavior of deformable bodies under load. Emphasis is placed on elastic conditions of equilibrium, compatibility, and material behavior. Includes normal and shear stress/strain, axial loading, torsion of shafts, beam bending, shear flow, beam deflections, combined loading, and column buckling.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ENGR 3132</span>
<h3 class="course-name">Strength of Materials Lab</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-a">Grade: A</span>
</div>
</div>
<p class="course-description">
Study and performance of laboratory testing and analysis techniques used in determining the mechanical behavior of materials under load. Includes standardized tensile, compressive, torsional, impact, and beam deflection testing, strain measurement with strain gages, and formal technical documentation.
</p>
<div class="course-footer">
<span class="course-credits">1 Credit Hour (0 Class, 3 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 3410</span>
<h3 class="course-name">Thermodynamics</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-a">Grade: A</span>
</div>
</div>
<p class="course-description">
Fundamentals of classical thermodynamics including the concept of energy and the laws governing the transfer and transformation of energy. Emphasis on thermodynamic properties of pure substances, equations of state, first and second law analysis of control volumes, entropy generation, and basic power and refrigeration cycles.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

</div>
</div>

<!-- ======================================================== -->
<!-- SPRING 2026 (COMPLETED)                                   -->
<!-- ======================================================== -->
<div class="semester-card" data-semester="spring-2026" data-status="completed">
<div class="semester-header">
<div class="semester-title-group">
<h2 class="semester-title">Spring 2026</h2>
<span class="semester-status-tag status-completed">Completed</span>
</div>
<div class="semester-stats">16 Credit Hours • Term GPA: 3.44</div>
</div>

<div class="course-list">

<div class="course-card" data-track="aae" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">AAE 3000</span>
<h3 class="course-name">Introduction to Flight</h3>
</div>
<div class="course-badges">
<span class="track-badge track-aae">AAE Credits</span>
<span class="grade-badge grade-b">Grade: B</span>
</div>
</div>
<p class="course-description">
Covers the technological and historical perspectives of aeronautical and astronautical engineering. Topics include atmospheric properties, basic aerodynamics, airfoil and wing geometry, aircraft performance (climb, range, endurance), static stability and control, propulsion systems, and introduction to orbital space flight.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me-elective" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ENGR 3801</span>
<h3 class="course-name">Aerodynamics</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me-elective">ME Tech Elective</span>
<span class="grade-badge grade-b">Grade: B</span>
</div>
</div>
<p class="course-description">
Fundamentals of aerodynamics and fluid flow around aerodynamic bodies. Topics include potential flow theory, stream functions, circulation, thin airfoil theory, finite wing vortex theory (Prandtl lifting line), induced drag, boundary layer development, skin friction, and introduction to compressible flow and shock waves.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ENGR 3343</span>
<h3 class="course-name">Fluid Dynamics (Fluid Mechanics)</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-a">Grade: A</span>
</div>
</div>
<p class="course-description">
A study of the fundamentals of fluid statics and dynamics, including hydrostatic forces on submerged plates, buoyancy, continuity of fluid flow, linear momentum, and energy conservation. Applications of laminar and turbulent conduit flows, Moody charts, piping systems, pumps, and turbines.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ENGR 3345</span>
<h3 class="course-name">Fluid Mechanics Lab</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-a">Grade: A</span>
</div>
</div>
<p class="course-description">
Laboratory reinforcing the principles of fluid mechanics studied in ENGR 3343, as they apply to hydraulic and pneumatic systems, flow rate metering, orifice discharge, friction head loss in pipes and fittings, and aerodynamic drag measurement. Emphasizes experimental reporting and error analysis.
</p>
<div class="course-footer">
<span class="course-credits">1 Credit Hour (0 Class, 3 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ENGR 3125</span>
<h3 class="course-name">Machine Dynamics & Vibrations</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-a">Grade: A</span>
</div>
</div>
<p class="course-description">
Analysis of motion, velocity, acceleration, and forces in mechanisms and machines. Emphasis on analytical methods suitable for computerized simulation and graphical visualization. Provides an introduction to vibration theory, including oscillatory modeling and analysis of discrete and continuous mechanical systems.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 4141</span>
<h3 class="course-name">Machine Design 1</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-b">Grade: B</span>
</div>
</div>
<p class="course-description">
Fundamentals of mechanical engineering design and component sizing under static and fatigue loading conditions. Covers stress concentrations, fatigue failure theories (Goodman, Gerber, ASME elliptic), and the design and selection of shafts, rolling contact bearings, spur and helical gears, springs, and fasteners.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

</div>
</div>

<!-- ======================================================== -->
<!-- SUMMER 2026 (COMPLETED)                                   -->
<!-- ======================================================== -->
<div class="semester-card" data-semester="summer-2026" data-status="completed">
<div class="semester-header">
<div class="semester-title-group">
<h2 class="semester-title">Summer 2026</h2>
<span class="semester-status-tag status-completed">Completed</span>
</div>
<div class="semester-stats">10 Credit Hours • Term GPA: 4.00</div>
</div>

<div class="course-list">

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ENGR 4402</span>
<h3 class="course-name">Engineering Ethics</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-a">Grade: A</span>
</div>
</div>
<p class="course-description">
Explores the practice of engineering in the context of ethics and moral philosophy. Covers safety, liability, professional responsibility, environmental impact, and legal obligations through engineering case studies. Emphasis on the NSPE Code of Ethics for Engineers and resolving ethical dilemmas.
</p>
<div class="course-footer">
<span class="course-credits">1 Credit Hour (1 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 3440</span>
<h3 class="course-name">Heat Transfer</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-a">Grade: A</span>
</div>
</div>
<p class="course-description">
Fundamentals and applications of conduction, convection, and thermal radiation. Topics include 1D and multi-dimensional steady and transient conduction, forced and free convection with boundary layer theory, radiation exchange between surfaces, and design and rating of heat exchangers (LMTD and ε-NTU methods).
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 4250</span>
<h3 class="course-name">Computer Aided Engineering</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-a">Grade: A</span>
</div>
</div>
<p class="course-description">
Introduces engineering software tools and computational techniques for the modeling and simulation of mechanical components and systems. Covers meshing strategies, finite element analysis (FEA) for structural and thermal problems, and computational fluid dynamics (CFD / finite volume methods) for fluid and thermal analysis.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="completed">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 3701</span>
<h3 class="course-name">Manufacturing Engineering</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-a">Grade: A</span>
</div>
</div>
<p class="course-description">
Introduces the fundamentals and applications of major manufacturing processes and engineering principles. Establishes technical knowledge in metal casting, bulk and sheet metal deformation, machining and material removal, additive manufacturing, polymer processing, and manufacturing economics.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

</div>
</div>

<!-- ======================================================== -->
<!-- FALL 2026 (PLAN TO TAKE / IN PROGRESS)                    -->
<!-- ======================================================== -->
<div class="semester-card" data-semester="fall-2026" data-status="planned">
<div class="semester-header">
<div class="semester-title-group">
<h2 class="semester-title">Fall 2026</h2>
<span class="semester-status-tag status-planned">Plan to Take / In Progress</span>
</div>
<div class="semester-stats">15 Credit Hours • 5 Courses</div>
</div>

<div class="course-list">

<div class="course-card" data-track="aae" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ENGR 3804</span>
<h3 class="course-name">Intro to Aerospace Structural Analysis</h3>
</div>
<div class="course-badges">
<span class="track-badge track-aae">AAE Credits</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
An introductory course for analyzing aircraft and aerospace structures that bridges basic solid mechanics with lightweight aerospace applications. Covers aircraft design and certification criteria, material allowables, stress analysis of thin-walled sections, shear flow, multicell torsion, and panel buckling.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="aae" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">AAE 4802</span>
<h3 class="course-name">Spacecraft Propulsion</h3>
</div>
<div class="course-badges">
<span class="track-badge track-aae">AAE Credits (Astronautics)</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Principles and engineering of propulsion systems used in spacecraft. Covers rocket propulsion fundamentals, the ideal rocket equation, converging-diverging nozzle aerodynamics, chemical rocket engines (liquid and solid propellants), electric propulsion systems (ion thrusters, Hall thrusters), and orbital velocity increment requirements.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="aae" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">AAE 3125</span>
<h3 class="course-name">Orbital Mechanics</h3>
</div>
<div class="course-badges">
<span class="track-badge track-aae">AAE Credits</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Study of the science of space travel and orbital motion. Covers the two-body orbital problem, Kepler's laws, classical orbital elements, orbital coordinate transformations, orbital maneuvers (Hohmann and bi-elliptic transfers), inclination and plane changes, satellite ground tracks, and interplanetary trajectories.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="aae" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">AAE 3801L</span>
<h3 class="course-name">Aerodynamics & UAS Lab</h3>
</div>
<div class="course-badges">
<span class="track-badge track-aae">AAE Credits</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Comprehensive hands-on laboratory in aerodynamics and unmanned aerial systems (UAS). Students utilize wind tunnels to evaluate surface pressure distributions across airfoils, determine lift and drag polars, observe boundary layer stall, calibrate aerodynamic balances, and design and flight-test unmanned aerial vehicles.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (0 Class, 3 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="math" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">MATH 3262</span>
<h3 class="course-name">Mathematical Modeling</h3>
</div>
<div class="course-badges">
<span class="track-badge track-math">Math Minor</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Project-oriented introduction to fundamental concepts and methods of mathematical modeling. Students formulate real-world problems in engineering and physical sciences into continuous and discrete mathematical models, applying analytical and numerical methods, sensitivity analysis, and simulation techniques.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

</div>
</div>

<!-- ======================================================== -->
<!-- SPRING 2027 (PLAN TO TAKE)                                -->
<!-- ======================================================== -->
<div class="semester-card" data-semester="spring-2027" data-status="planned">
<div class="semester-header">
<div class="semester-title-group">
<h2 class="semester-title">Spring 2027</h2>
<span class="semester-status-tag status-planned">Plan to Take</span>
</div>
<div class="semester-stats">17 Credit Hours • 6 Courses</div>
</div>

<div class="course-list">

<div class="course-card" data-track="me" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 4201</span>
<h3 class="course-name">Senior Design 1</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Part 1 of the two-course mechanical engineering senior design capstone project. Students form teams, identify open-ended engineering design problems, formulate engineering requirements and design constraints, generate conceptual designs, perform feasibility studies, and prepare for the FE Exam.
</p>
<div class="course-footer">
<span class="course-credits">1 Credit Hour (1 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="aae" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">AAE 4250</span>
<h3 class="course-name">Aero Computer-Aided Design</h3>
</div>
<div class="course-badges">
<span class="track-badge track-aae">AAE Credits</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Computer-aided design applications specifically tailored for aerospace structures and flight vehicles. Covers 3D parametric geometric modeling of aerodynamic surfaces and fuselages, aerospace structural meshing, shell and composite modeling, and CAD-to-FEA digital engineering integration.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 3501</span>
<h3 class="course-name">Dynamic Systems & Control Theory</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
A unified approach for lumped-element modeling and dynamic analysis of mechanical, electrical, fluid, and multi-energy domain systems. Covers transfer functions, state-space equations, time and frequency domain responses, Laplace transforms, root locus, stability criteria, and PID feedback control design.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="aae" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">AAE 4503</span>
<h3 class="course-name">Spacecraft Dynamic Systems & Control</h3>
</div>
<div class="course-badges">
<span class="track-badge track-aae">AAE Credits (Astronautics)</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Solves engineering problems related to the dynamics of spaceflight, orbital maneuvers, and satellite attitude stability and control. Students analyze 3D spacecraft rotational kinematics and kinetics, disturbance torques, and apply classical and state-space control methods using reaction wheels and thrusters.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 4501</span>
<h3 class="course-name">Vibrations & Control Lab</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Laboratory course complementing dynamic systems and controls. Involves experimental study of single and multi-degree-of-freedom vibrations, damping characterization, free and forced response, resonance isolation, and hardware-in-the-loop implementation of closed-loop PID control algorithms.
</p>
<div class="course-footer">
<span class="course-credits">1 Credit Hour (0 Class, 3 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">EE 2305</span>
<h3 class="course-name">Electronic Circuits & Machines</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Fundamentals of DC and AC circuits and electromechanical machinery for non-electrical engineering majors. Covers circuit theorems, phasors, AC power, transformers, operational amplifiers, and the characteristics, control, and applications of DC motors, induction motors, and generators.
</p>
<div class="course-footer">
<span class="course-credits">4 Credit Hours (3 Class, 3 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

</div>
</div>

<!-- ======================================================== -->
<!-- SUMMER 2027 (PLAN TO TAKE)                                -->
<!-- ======================================================== -->
<div class="semester-card" data-semester="summer-2027" data-status="planned">
<div class="semester-header">
<div class="semester-title-group">
<h2 class="semester-title">Summer 2027</h2>
<span class="semester-status-tag status-planned">Plan to Take</span>
</div>
<div class="semester-stats">6 Credit Hours • 2 Courses</div>
</div>

<div class="course-list">

<div class="course-card" data-track="me" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 3398 / 4400</span>
<h3 class="course-name">Internship or Directed Study</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Supervised out-of-the-classroom engineering internship in an industrial setting (ME 3398) or individual faculty-guided undergraduate research study (ME 4400). Provides professional project experience combining technical problem-solving with scholarly investigation and formal reporting.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="core" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ECON 1000</span>
<h3 class="course-name">Contemporary Economic Issues</h3>
</div>
<div class="course-badges">
<span class="track-badge track-core">Core IMPACTS</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Provides tools necessary to examine social and public policy issues from an economic perspective. Addresses fundamental economic questions regarding individuals, business firms, market dynamics, government regulation, macroeconomic indicators, and global trade economics.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

</div>
</div>

<!-- ======================================================== -->
<!-- FALL 2027 (PLAN TO TAKE)                                  -->
<!-- ======================================================== -->
<div class="semester-card" data-semester="fall-2027" data-status="planned">
<div class="semester-header">
<div class="semester-title-group">
<h2 class="semester-title">Fall 2027</h2>
<span class="semester-status-tag status-planned">Plan to Take</span>
</div>
<div class="semester-stats">14 Credit Hours • 6 Courses</div>
</div>

<div class="course-list">

<div class="course-card" data-track="me" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 4202</span>
<h3 class="course-name">Senior Design 2</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Part 2 and culmination of the two-course senior capstone project for mechanical engineering. Involves detailed design synthesis, simulation, fabrication, physical prototyping, and experimental validation of an open-ended engineering design project, with formal technical reporting and presentation.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (1 Class, 6 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="aae" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">AAE 4203</span>
<h3 class="course-name">Spacecraft Design 1</h3>
</div>
<div class="course-badges">
<span class="track-badge track-aae">AAE Credits (Astronautics)</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
First phase of the capstone senior design sequence for the Astronautics concentration in Aerospace Engineering. Covers space mission architecture, payload requirements, orbit selection, subsystem budgeting (mass, power, link margin), preliminary mechanical/thermal design, and Preliminary Design Review (PDR).
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 4403</span>
<h3 class="course-name">Heat Transfer & Thermo Lab</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me">ME Credits</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Laboratory course complementing thermodynamics and heat transfer lecture courses. Experiments provide practical experience in thermal sciences, including heat conduction, natural and forced convection, thermal radiation, heat exchanger performance, and thermodynamic refrigeration and power cycles.
</p>
<div class="course-footer">
<span class="course-credits">1 Credit Hour (0 Class, 3 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="math" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">MATH 4310</span>
<h3 class="course-name">Partial Differential Equations</h3>
</div>
<div class="course-badges">
<span class="track-badge track-math">Math Minor</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Introduction to partial differential equations (PDEs), their physical applications in science and engineering, and analytical solution methods. Covers classification of PDEs, separation of variables, Fourier series, Fourier transforms, the heat equation, wave equation, Laplace’s equation, and boundary-value problems.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="me-elective" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">ME 3133</span>
<h3 class="course-name">Composite Mechanics</h3>
</div>
<div class="course-badges">
<span class="track-badge track-me-elective">ME Tech Elective</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Introduction to the technology and mechanics of advanced composites (polymer, metal, and ceramic matrix) with emphasis on structural design. Covers micromechanics of fiber-matrix systems, effective elastic properties, classical lamination theory, failure criteria (Tsai-Hill, Tsai-Wu), and composite fabrication methods.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

<div class="course-card" data-track="aae" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">AAE 4504</span>
<h3 class="course-name">Spacecraft Dynamic Systems & Control Lab</h3>
</div>
<div class="course-badges">
<span class="track-badge track-aae">AAE Credits (Astronautics)</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Laboratory course focused on experimental spaceflight dynamics. Involves orbital maneuver simulations, satellite attitude determination using sensors (sun sensors, gyros), dynamic motions of rockets, reaction wheel stabilization, and demonstrating classical and state-space closed-loop control approaches on spacecraft testbeds.
</p>
<div class="course-footer">
<span class="course-credits">1 Credit Hour (0 Class, 3 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

</div>
</div>

<!-- ======================================================== -->
<!-- SPRING 2028 (PLAN TO TAKE)                                -->
<!-- ======================================================== -->
<div class="semester-card" data-semester="spring-2028" data-status="planned">
<div class="semester-header">
<div class="semester-title-group">
<h2 class="semester-title">Spring 2028</h2>
<span class="semester-status-tag status-planned">Plan to Take</span>
</div>
<div class="semester-stats">3 Credit Hours • Culminating Capstone</div>
</div>

<div class="course-list">

<div class="course-card" data-track="aae" data-status="planned">
<div class="course-card-top">
<div class="course-id-title">
<span class="course-code">AAE 4204</span>
<h3 class="course-name">Spacecraft Design 2</h3>
</div>
<div class="course-badges">
<span class="track-badge track-aae">AAE Credits (Astronautics)</span>
<span class="grade-badge grade-planned">Planned</span>
</div>
</div>
<p class="course-description">
Final capstone design project in astronautical engineering. Teams complete the detailed design, subsystem simulation, hardware-software integration, and environmental testing (thermal-vacuum, vibration) for a full spacecraft mission, culminating in the Critical Design Review (CDR) and formal defense before faculty and industry evaluators.
</p>
<div class="course-footer">
<span class="course-credits">3 Credit Hours (3 Class, 0 Lab)</span>
<a href="https://catalog.kennesaw.edu/index.php" target="_blank" rel="noopener noreferrer" class="course-catalog-link">
KSU Catalog Entry ↗
</a>
</div>
</div>

</div>
</div>

<script>
  (function() {
  const searchInput = document.getElementById('courseSearch');
  const filterButtons = document.querySelectorAll('.filter-btn');
  const courseCards = document.querySelectorAll('.course-card');
  const semesterCards = document.querySelectorAll('.semester-card');
  const noResults = document.getElementById('noResults');

  let currentFilter = 'all';
  let searchQuery = '';

  function filterCourses() {
  let visibleTotal = 0;

  semesterCards.forEach(semester => {
  let visibleInSemester = 0;
  const cards = semester.querySelectorAll('.course-card');

  cards.forEach(card => {
  const track = card.getAttribute('data-track');
  const status = card.getAttribute('data-status');
  const cardText = card.textContent.toLowerCase();

  // Check filter condition
  let matchesFilter = false;
  if (currentFilter === 'all') {
  matchesFilter = true;
  } else if (currentFilter === 'completed') {
  matchesFilter = (status === 'completed');
  } else if (currentFilter === 'planned') {
  matchesFilter = (status === 'planned');
  } else if (currentFilter === 'aae') {
  matchesFilter = (track === 'aae' || track === 'aae-elective');
  } else if (currentFilter === 'me') {
  matchesFilter = (track === 'me' || track === 'me-elective');
  } else if (currentFilter === 'math') {
  matchesFilter = (track === 'math');
  }

  // Check search query
  const matchesSearch = searchQuery === '' || cardText.includes(searchQuery);

  if (matchesFilter && matchesSearch) {
  card.style.display = 'block';
  visibleInSemester++;
  visibleTotal++;
  } else {
  card.style.display = 'none';
  }
  });

  // Hide semester if no matching courses
  if (visibleInSemester === 0) {
  semester.style.display = 'none';
  } else {
  semester.style.display = 'block';
  }
  });

  if (visibleTotal === 0) {
  noResults.style.display = 'block';
  } else {
  noResults.style.display = 'none';
  }
  }

  searchInput.addEventListener('input', function(e) {
  searchQuery = e.target.value.trim().toLowerCase();
  filterCourses();
  });

  filterButtons.forEach(btn => {
  btn.addEventListener('click', function() {
  filterButtons.forEach(b => b.classList.remove('active'));
  this.classList.add('active');
  currentFilter = this.getAttribute('data-filter');
  filterCourses();
  });
  });
  })();
</script>
