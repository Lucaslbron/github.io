---
layout: default
title: Home | Engineering Portfolio
---

<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=JetBrains+Mono:wght@400;500;600;700&display=swap');

html, body {
  background-color: #FFFFFF !important;
  color: #09090B !important;
  overflow-x: clip;
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif !important;
  -webkit-font-smoothing: antialiased;
}

main.site-content,
.wrapper,
.main-content,
body > section {
  max-width: 100% !important;
  width: 100% !important;
  margin: 0 !important;
  padding: 0 !important;
  box-sizing: border-box !important;
}

header.site-header {
  position: relative !important;
  top: auto !important;
  z-index: 10 !important;
  background-color: #FFFFFF !important;
  backdrop-filter: none !important;
  border-bottom: 1.5px solid #18181B !important;
}

header.site-header .header-container {
  max-width: 1050px !important;
  margin: 0 auto !important;
  padding: 0.85rem 1.5rem !important;
}

header.site-header .site-brand a {
  color: #09090B !important;
  font-family: 'JetBrains Mono', ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
  font-weight: 700;
  text-decoration: none !important;
}

header.site-header .site-nav a {
  color: #52525B !important;
  font-family: 'JetBrains Mono', ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
  font-size: 0.82rem;
  font-weight: 600;
  padding: 0.3rem 0.6rem;
  border: 1.5px solid transparent;
  border-radius: 2px;
  text-decoration: none !important;
}

header.site-header .site-nav a:hover {
  background-color: #FFCC00 !important;
  color: #09090B !important;
  border-color: #18181B !important;
  text-decoration: none !important;
}

footer.site-footer {
  background-color: #F3F4F6 !important;
  border-top: 1.5px solid #18181B !important;
  color: #52525B !important;
  margin-top: 3.5rem !important;
  padding: 1.75rem 1.5rem !important;
  font-family: 'JetBrains Mono', ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
  font-size: 0.8rem;
}

#blueprint-portfolio {
  --bg-page: #FFFFFF;
  --bg-surface: #F3F4F6;
  --border-ink: #18181B;
  --border-subtle: #D4D4D8;
  --text-main: #09090B;
  --text-muted: #52525B;
  --accent-yellow: #FFCC00;
  --accent-yellow-hover: #E6B800;
  --font-sans: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
  --font-mono: 'JetBrains Mono', ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;

  width: 100%;
  max-width: 1050px;
  margin: 0 auto;
  padding: 2.25rem 1.5rem;
  box-sizing: border-box;
  background-color: var(--bg-page);
  color: var(--text-main);
  font-family: var(--font-sans);
  font-size: 16px;
  line-height: 1.6;
  -webkit-font-smoothing: antialiased;
}

#blueprint-portfolio *,
#blueprint-portfolio *::before,
#blueprint-portfolio *::after {
  box-sizing: border-box;
}

#blueprint-portfolio h1,
#blueprint-portfolio h2,
#blueprint-portfolio h3,
#blueprint-portfolio h4 {
  color: var(--text-main);
  font-family: var(--font-sans);
  border-bottom: none;
  padding-bottom: 0;
  margin-top: 0;
}

#blueprint-portfolio a {
  color: var(--text-main);
  text-decoration: none;
}

#blueprint-portfolio a:focus-visible,
#blueprint-portfolio button:focus-visible {
  outline: 2px solid var(--border-ink);
  outline-offset: 2px;
}

#blueprint-portfolio .bp-header {
  padding-bottom: 2rem;
  margin-bottom: 2rem;
  border-bottom: 2px solid var(--border-ink);
}

#blueprint-portfolio .bp-header-top {
  display: flex;
  justify-content: space-between;
  align-items: flex-end;
  flex-wrap: wrap;
  gap: 1.25rem;
}

#blueprint-portfolio .bp-pill-row {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  gap: 0.5rem;
  margin-bottom: 0.75rem;
}

#blueprint-portfolio .bp-status-pill {
  font-family: var(--font-mono);
  font-size: 0.7rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.04em;
  padding: 0.22rem 0.55rem;
  border-radius: 2px;
  background-color: var(--accent-yellow);
  color: var(--text-main);
  border: 1px solid var(--border-ink);
  display: inline-flex;
  align-items: center;
  gap: 0.35rem;
}

#blueprint-portfolio .bp-outline-badge {
  font-family: var(--font-mono);
  font-size: 0.7rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.04em;
  padding: 0.2rem 0.52rem;
  border-radius: 2px;
  background-color: var(--bg-page);
  color: var(--text-muted);
  border: 1px solid var(--border-ink);
}

#blueprint-portfolio h1.bp-name {
  font-size: 2.35rem;
  font-weight: 800;
  letter-spacing: -0.03em;
  line-height: 1.15;
  margin: 0;
  color: var(--text-main);
}

#blueprint-portfolio .bp-action-links {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

#blueprint-portfolio .bp-action-link {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 0.42rem;
  font-family: var(--font-mono);
  font-size: 0.78rem;
  font-weight: 600;
  padding: 0.48rem 0.85rem;
  border-radius: 2px;
  border: 1.5px solid var(--border-ink);
  background-color: var(--bg-page);
  color: var(--text-main);
  text-decoration: none;
  transition: background-color 0.15s ease, color 0.15s ease, border-color 0.15s ease;
  cursor: pointer;
}

#blueprint-portfolio .bp-action-link:hover {
  background-color: var(--accent-yellow);
  color: var(--text-main);
  border-color: var(--border-ink);
  text-decoration: none;
}

#blueprint-portfolio .bp-action-link--accent {
  background-color: var(--accent-yellow);
  color: var(--text-main);
  font-weight: 700;
}

#blueprint-portfolio .bp-action-link--accent:hover {
  background-color: var(--accent-yellow-hover);
  color: var(--text-main);
}

#blueprint-portfolio .bp-action-link--card {
  width: 100%;
  justify-content: space-between;
}

#blueprint-portfolio .bp-action-icon {
  width: 14px;
  height: 14px;
  flex-shrink: 0;
}

#blueprint-portfolio .bp-about {
  width: 100%;
  margin-top: 1.5rem;
  padding: 1.25rem 1.5rem;
  background-color: var(--bg-surface);
  border: 1.5px solid var(--border-ink);
  border-left: 4px solid var(--accent-yellow);
  border-radius: 3px;
  box-shadow: 4px 4px 0px var(--border-ink);
}

#blueprint-portfolio .bp-about-title {
  font-family: var(--font-mono);
  font-size: 0.75rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  color: var(--text-main);
  margin: 0 0 0.75rem 0;
}

#blueprint-portfolio .bp-about p {
  width: 100%;
  max-width: none;
  margin: 0 0 0.85rem 0;
  font-size: 0.96rem;
  line-height: 1.65;
  color: var(--text-main);
}

#blueprint-portfolio .bp-about p:last-child {
  margin-bottom: 0;
}

#blueprint-portfolio .bp-tab-nav {
  position: sticky;
  top: 0;
  z-index: 50;
  display: flex;
  flex-wrap: nowrap;
  align-items: stretch;
  gap: 0.35rem;
  background-color: var(--bg-surface);
  border: 1.5px solid var(--border-ink);
  border-radius: 3px;
  padding: 0.35rem;
  margin: 0 0 2rem 0;
  overflow-x: auto;
  white-space: nowrap;
  scrollbar-width: none;
  -webkit-overflow-scrolling: touch;
  box-shadow: 4px 4px 0px var(--border-ink);
}

#blueprint-portfolio .bp-tab-nav::-webkit-scrollbar {
  display: none;
}

#blueprint-portfolio .bp-tab-btn {
  flex: 1 1 auto;
  min-width: max-content;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 0.5rem;
  padding: 0.72rem 1.1rem;
  border-radius: 2px;
  border: 1px solid transparent;
  background: transparent;
  color: var(--text-muted);
  font-family: var(--font-sans);
  font-weight: 600;
  font-size: 0.875rem;
  cursor: pointer;
  white-space: nowrap;
  transition: background-color 0.16s ease, color 0.16s ease, border-color 0.16s ease;
}

#blueprint-portfolio .bp-tab-btn:hover:not(.is-active) {
  color: var(--text-main);
  background-color: var(--bg-page);
  border-color: var(--border-subtle);
}

#blueprint-portfolio .bp-tab-btn.is-active,
#blueprint-portfolio .bp-tab-btn[aria-selected="true"] {
  background-color: var(--accent-yellow);
  color: var(--text-main);
  border-color: var(--border-ink);
  font-weight: 700;
}

#blueprint-portfolio .bp-tab-btn.is-active:hover,
#blueprint-portfolio .bp-tab-btn[aria-selected="true"]:hover {
  background-color: var(--accent-yellow-hover);
  color: var(--text-main);
}

#blueprint-portfolio .bp-tab-count {
  font-family: var(--font-mono);
  font-size: 0.7rem;
  font-weight: 700;
  padding: 0.1rem 0.42rem;
  border-radius: 2px;
  background-color: rgba(24, 24, 27, 0.08);
  color: var(--text-muted);
}

#blueprint-portfolio .bp-tab-btn.is-active .bp-tab-count,
#blueprint-portfolio .bp-tab-btn[aria-selected="true"] .bp-tab-count {
  background-color: #09090B;
  color: #FFCC00;
}

#blueprint-portfolio .bp-tab-panel {
  display: none;
}

#blueprint-portfolio .bp-tab-panel.is-active {
  display: block;
  animation: panelFadeIn 0.24s cubic-bezier(0.16, 1, 0.3, 1) forwards;
}

@keyframes panelFadeIn {
  from {
    opacity: 0;
    transform: translateY(6px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

#blueprint-portfolio .bp-panel-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-bottom: 1.25rem;
}

#blueprint-portfolio .bp-panel-title {
  font-family: var(--font-mono);
  font-size: 0.78rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  color: var(--text-muted);
  margin: 0;
}

#blueprint-portfolio .bp-panel-count {
  font-family: var(--font-mono);
  font-size: 0.75rem;
  font-weight: 600;
  color: var(--text-muted);
}

#blueprint-portfolio .bp-cards-stack {
  display: flex;
  flex-direction: column;
  gap: 1.25rem;
}

#blueprint-portfolio .bp-planned-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 1.25rem;
}

#blueprint-portfolio .bp-card {
  background-color: var(--bg-surface);
  border: 1.5px solid var(--border-ink);
  border-radius: 3px;
  padding: 1.5rem;
  box-shadow: 4px 4px 0px var(--border-ink);
  transition: transform 0.16s ease, box-shadow 0.16s ease;
}

#blueprint-portfolio .bp-card:hover {
  transform: translate(-1px, -1px);
  box-shadow: 5px 5px 0px var(--border-ink);
}

#blueprint-portfolio .bp-card--flex {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

#blueprint-portfolio .bp-card-grid {
  display: grid;
  grid-template-columns: minmax(0, 8fr) minmax(0, 4fr);
  gap: 1.5rem;
  align-items: stretch;
}

#blueprint-portfolio .bp-card-left {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  min-width: 0;
}

#blueprint-portfolio .bp-card-meta-top {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  gap: 0.6rem;
  margin-bottom: 0.55rem;
}

#blueprint-portfolio .bp-card-kicker {
  font-family: var(--font-mono);
  font-size: 0.72rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.04em;
  color: var(--text-muted);
}

#blueprint-portfolio h3.bp-card-title {
  font-size: 1.22rem;
  font-weight: 700;
  letter-spacing: -0.015em;
  line-height: 1.3;
  color: var(--text-main);
  margin: 0 0 0.7rem 0;
}

#blueprint-portfolio .bp-field-label {
  font-family: var(--font-mono);
  font-size: 0.71rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.06em;
  color: var(--text-muted);
  margin: 0 0 0.25rem 0;
}

#blueprint-portfolio .bp-readable-prose {
  max-width: 68ch;
  font-size: 0.94rem;
  line-height: 1.62;
  color: var(--text-muted);
  margin: 0 0 0.9rem 0;
}

#blueprint-portfolio .bp-readable-prose strong {
  color: var(--text-main);
}

#blueprint-portfolio .bp-methods-list {
  max-width: 68ch;
  margin: 0.25rem 0 1rem 0;
  padding-left: 1.15rem;
  list-style-type: square;
  font-size: 0.91rem;
  line-height: 1.55;
  color: var(--text-muted);
}

#blueprint-portfolio .bp-methods-list li {
  margin-bottom: 0.28rem;
}

#blueprint-portfolio .bp-methods-list li:last-child {
  margin-bottom: 0;
}

#blueprint-portfolio .bp-tools-block {
  padding-top: 0.5rem;
}

#blueprint-portfolio .bp-tag-list {
  display: flex;
  flex-wrap: wrap;
  gap: 0.42rem;
}

#blueprint-portfolio .bp-tech-badge {
  font-family: var(--font-mono);
  font-size: 0.72rem;
  font-weight: 500;
  padding: 0.24rem 0.55rem;
  border-radius: 2px;
  background-color: var(--bg-page);
  color: var(--text-main);
  border: 1px solid var(--border-ink);
  display: inline-block;
  line-height: 1.35;
}

#blueprint-portfolio .bp-card-right {
  border-left: 1px solid var(--border-subtle);
  padding-left: 1.5rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  gap: 1rem;
  min-width: 0;
}

#blueprint-portfolio .bp-media-frame {
  border: 1.5px solid var(--border-ink);
  border-radius: 2px;
  background-color: var(--bg-page);
}

#blueprint-portfolio .bp-card-img {
  width: 100%;
  height: auto;
  display: block;
  margin: 0;
  border: none;
  border-radius: 0;
}

#blueprint-portfolio .bp-media-caption {
  padding: 0.3rem 0.55rem;
  border-top: 1px solid var(--border-ink);
  background-color: var(--bg-page);
  font-family: var(--font-mono);
  font-size: 0.68rem;
  font-weight: 600;
  color: var(--text-muted);
  text-transform: uppercase;
  letter-spacing: 0.04em;
}

#blueprint-portfolio .bp-spec-list {
  display: flex;
  flex-direction: column;
  gap: 0.6rem;
}

#blueprint-portfolio .bp-spec-row {
  display: flex;
  flex-direction: column;
  gap: 0.15rem;
  padding-bottom: 0.5rem;
  border-bottom: 1px dashed var(--border-subtle);
  font-family: var(--font-mono);
  font-size: 0.75rem;
}

#blueprint-portfolio .bp-spec-key {
  color: var(--text-muted);
  text-transform: uppercase;
  font-size: 0.69rem;
  font-weight: 600;
}

#blueprint-portfolio .bp-spec-val {
  color: var(--text-main);
  font-weight: 700;
}

#blueprint-portfolio .bp-callout {
  background-color: var(--bg-page);
  border: 1px solid var(--border-ink);
  border-left: 3px solid var(--accent-yellow);
  border-radius: 2px;
  padding: 0.75rem 0.9rem;
}

#blueprint-portfolio .bp-callout-label {
  font-family: var(--font-mono);
  font-size: 0.7rem;
  font-weight: 700;
  text-transform: uppercase;
  color: var(--text-main);
  margin: 0 0 0.2rem 0;
}

#blueprint-portfolio .bp-callout-text {
  font-size: 0.84rem;
  line-height: 1.5;
  color: var(--text-muted);
  margin: 0;
}

#blueprint-portfolio .bp-card-links {
  display: flex;
  flex-direction: column;
  gap: 0.45rem;
  margin-top: auto;
}

#blueprint-portfolio .bp-planned-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-bottom: 0.75rem;
}

#blueprint-portfolio .bp-planned-footer {
  padding-top: 0.85rem;
  margin-top: 0.5rem;
  border-top: 1px solid var(--border-subtle);
}

#blueprint-portfolio .bp-skills-wrap {
  margin-top: 2.75rem;
}

#blueprint-portfolio .bp-skills-card {
  background-color: var(--bg-surface);
  border: 1.5px solid var(--border-ink);
  border-radius: 3px;
  box-shadow: 4px 4px 0px var(--border-ink);
}

#blueprint-portfolio .bp-skill-row {
  display: grid;
  grid-template-columns: 250px minmax(0, 1fr);
  gap: 1rem;
  padding: 1rem 1.5rem;
  border-bottom: 1px dashed var(--border-subtle);
  align-items: start;
}

#blueprint-portfolio .bp-skill-row:last-child {
  border-bottom: none;
}

#blueprint-portfolio .bp-skill-cat {
  font-family: var(--font-mono);
  font-size: 0.78rem;
  font-weight: 700;
  color: var(--text-main);
  padding-top: 0.2rem;
}

@media (max-width: 820px) {
  header.site-header .header-container {
    padding: 0.75rem 1rem !important;
  }

  #blueprint-portfolio {
    padding: 1.5rem 1rem;
  }

  #blueprint-portfolio h1.bp-name {
    font-size: 1.9rem;
  }

  #blueprint-portfolio .bp-about {
    padding: 1.1rem 1.1rem;
  }

  #blueprint-portfolio .bp-card {
    padding: 1.15rem;
  }

  #blueprint-portfolio .bp-card-grid,
  #blueprint-portfolio .bp-planned-grid {
    grid-template-columns: 1fr;
  }

  #blueprint-portfolio .bp-card-right {
    border-left: none;
    border-top: 1px solid var(--border-subtle);
    padding-left: 0;
    padding-top: 1rem;
  }

  #blueprint-portfolio .bp-skill-row {
    grid-template-columns: 1fr;
    gap: 0.5rem;
    padding: 0.95rem 1.1rem;
  }
}
</style>

<div id="blueprint-portfolio" class="tex2jax_ignore">

<header class="bp-header">
  <div class="bp-header-top">
  <div>
  <div class="bp-pill-row">
  <span class="bp-status-pill">Aerospace &amp; Mechanical Engineering</span>
  <span class="bp-outline-badge">Dual Degree • Math Minor</span>
  </div>
  <h1 class="bp-name">Lucas Lebron</h1>
  </div>

  <div class="bp-action-links">
  <a class="bp-action-link" href="https://www.linkedin.com/in/lucaslebron/" target="_blank" rel="noopener noreferrer">
  <svg class="bp-action-icon" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true"><path stroke-linecap="square" d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-4 0v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"/><circle cx="4" cy="4" r="2"/></svg>
  <span>LinkedIn</span>
  </a>
  <a class="bp-action-link" href="https://github.com/Lucaslbron" target="_blank" rel="noopener noreferrer">
  <svg class="bp-action-icon" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true"><path stroke-linecap="square" d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 00-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0020 4.77 5.07 5.07 0 0019.91 1S18.73.65 16 2.48a13.38 13.38 0 00-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 005 4.77a5.44 5.44 0 00-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 009 18.13V22"/></svg>
  <span>GitHub</span>
  </a>
  <a class="bp-action-link" href="mailto:lucaslbron@proton.me">
  <svg class="bp-action-icon" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true"><path stroke-linecap="square" d="M3 8l9 6 9-6M4 6h16v12H4z"/></svg>
  <span>Email Me</span>
  </a>
  <a class="bp-action-link bp-action-link--accent" href="assets/docs/resume-lucas-lebron.pdf">
  <svg class="bp-action-icon" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true"><path stroke-linecap="square" d="M12 3v12m0 0l-4-4m4 4l4-4M4 17v2h16v-2"/></svg>
  <span>Resume (PDF)</span>
  </a>
  <a class="bp-action-link" href="class-schedule.html">
  <svg class="bp-action-icon" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" aria-hidden="true"><rect x="3" y="4" width="18" height="18"/><path stroke-linecap="square" d="M16 2v4M8 2v4M3 10h18"/></svg>
  <span>Class Schedule</span>
  </a>
  </div>
  </div>

  <div class="bp-about">
  <h2 class="bp-about-title">// About Me</h2>
  <p>I am an undergraduate senior pursuing a dual degree in Aerospace Engineering and Mechanical Engineering, with a minor in Mathematics. I have always been drawn to engineering problems where theory, computation, and physical hardware are pushed to the limit of human knowledge, which ultimately led me toward aerospace engineering.</p>
  <p>My current interests are focused around various aerospace fields such as structures, aerodynamics, propulsion, and materials. Through coursework and personal projects, I have developed experience with CAD, structural and thermal analysis, CFD, and engineering simulation, while also gaining experience turning those analyses into improved practical designs.</p>
  <p>I built this portfolio to document that progression; Not only the projects I have completed, but also the problems I am currently solving, and the ones I am interested in tackling next.</p>
  </div>
</header>

<nav class="bp-tab-nav" role="tablist" aria-label="Engineering Portfolio Sections">
  <button type="button" class="bp-tab-btn is-active" id="tab-completed" role="tab" aria-selected="true" aria-controls="panel-completed" data-tab="completed" tabindex="0">
  <span>Completed Projects</span>
  <span class="bp-tab-count">03</span>
  </button>
  <button type="button" class="bp-tab-btn" id="tab-in-progress" role="tab" aria-selected="false" aria-controls="panel-in-progress" data-tab="in-progress" tabindex="-1">
  <span>In Progress</span>
  <span class="bp-tab-count">04</span>
  </button>
  <button type="button" class="bp-tab-btn" id="tab-planned" role="tab" aria-selected="false" aria-controls="panel-planned" data-tab="planned" tabindex="-1">
  <span>Planned Projects</span>
  <span class="bp-tab-count">02</span>
  </button>
  <button type="button" class="bp-tab-btn" id="tab-research" role="tab" aria-selected="false" aria-controls="panel-research" data-tab="research" tabindex="-1">
  <span>Research Experience</span>
  <span class="bp-tab-count">03</span>
  </button>
</nav>

<section id="panel-completed" class="bp-tab-panel is-active" role="tabpanel" aria-labelledby="tab-completed" aria-hidden="false" style="display: block;">
  <div class="bp-panel-header">
  <h2 class="bp-panel-title">// Section 01: Completed Engineering Projects</h2>
  <span class="bp-panel-count">3 ARCHIVED ENTRIES</span>
  </div>
  <div class="bp-cards-stack">
  <article class="bp-card">
  <div class="bp-card-grid">
  <div class="bp-card-left">
  <div>
  <div class="bp-card-meta-top">
  <span class="bp-status-pill">Completed</span>
  <span class="bp-card-kicker">Propulsion • Fluids • 3D CAD Modeling</span>
  </div>
  <h3 class="bp-card-title">1. Impinging Injector for Liquid Rocket Booster</h3>
  <p class="bp-field-label">Overview</p>
  <p class="bp-readable-prose">Designed and evaluated a bi-propellant Impinging injector assembly, with emphasis on atomization efficiency, spray cone angle, and pressure drop.</p>
  <p class="bp-field-label">Methods</p>
  <p class="bp-readable-prose">Developed the injector geometry and evaluated its fluid-flow and atomization characteristics through engineering analysis and simulation.</p>
  </div>
  <div class="bp-tools-block">
  <p class="bp-field-label">Tools</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">SolidWorks</span>
  <span class="bp-tech-badge">ANSYS</span>
  </div>
  </div>
  </div>
  <aside class="bp-card-right">
  <div class="bp-media-frame">
  <img class="bp-card-img" src="assets/images/injector/injector-viewport.png" alt="Impinging injector two-plate assembly CAD cutaway">
  <div class="bp-media-caption">FIG 01 // Injector CAD Assembly</div>
  </div>
  <div>
  <p class="bp-field-label">Focus</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Propulsion</span>
  <span class="bp-tech-badge">Fluids</span>
  <span class="bp-tech-badge">3D CAD Modeling</span>
  </div>
  </div>
  <div class="bp-card-links">
  <a class="bp-action-link bp-action-link--accent bp-action-link--card" href="projects/injector-quick-overview.html"><span>Read Quick Overview</span><span>→</span></a>
  <a class="bp-action-link bp-action-link--card" href="projects/injector/"><span>Read Full Project Report</span><span>→</span></a>
  <a class="bp-action-link bp-action-link--card" href="projects/injector-cad-viewer.html"><span>Interactive 3D CAD Viewer</span><span>⛶</span></a>
  </div>
  </aside>
  </div>
  </article>

  <article class="bp-card">
  <div class="bp-card-grid">
  <div class="bp-card-left">
  <div>
  <div class="bp-card-meta-top">
  <span class="bp-status-pill">Completed</span>
  <span class="bp-card-kicker">Structural Analysis • CFD • Thermal Analysis</span>
  </div>
  <h3 class="bp-card-title">2. Electric Airbike Structural, Aerodynamic, &amp; Thermal Simulations</h3>
  <p class="bp-field-label">Overview</p>
  <p class="bp-readable-prose">A Comprehensive, simulation-driven design of an electric airbike, using SolidWorks to transition from initial CAD geometries to optimized, data-backed engineering solutions.</p>
  <p class="bp-field-label">Methods</p>
  <p class="bp-readable-prose">Performed structural FEA, CFD, and thermal simulations to evaluate and refine major vehicle components, including the chassis, seat, airfoils, propeller, heat exchanger, and battery system.</p>
  </div>
  <div class="bp-tools-block">
  <p class="bp-field-label">Tools</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">SolidWorks</span>
  <span class="bp-tech-badge">SolidWorks Flow Simulation</span>
  <span class="bp-tech-badge">FEA Stress Analysis</span>
  <span class="bp-tech-badge">Thermal Analysis</span>
  </div>
  </div>
  </div>
  <aside class="bp-card-right">
  <div class="bp-media-frame">
  <img class="bp-card-img" src="assets/images/airbike/airbike-assembly-hero.png" alt="Electric airbike full vehicle SolidWorks CAD assembly">
  <div class="bp-media-caption">FIG 02 // Full Vehicle CAD Assembly</div>
  </div>
  <div>
  <p class="bp-field-label">Focus</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Structural Analysis</span>
  <span class="bp-tech-badge">Computational Fluid Dynamics</span>
  <span class="bp-tech-badge">Thermal Analysis</span>
  </div>
  </div>
  <div class="bp-card-links">
  <a class="bp-action-link bp-action-link--accent bp-action-link--card" href="projects/airbike-quick-overview.html"><span>Read Quick Overview</span><span>→</span></a>
  <a class="bp-action-link bp-action-link--card" href="projects/airbike.html"><span>Read Full Project Report</span><span>→</span></a>
  <a class="bp-action-link bp-action-link--card" href="projects/airbike-cad-viewer.html"><span>Interactive 3D CAD Viewer</span><span>⛶</span></a>
  </div>
  </aside>
  </div>
  </article>

  <article class="bp-card">
  <div class="bp-card-grid">
  <div class="bp-card-left">
  <div>
  <div class="bp-card-meta-top">
  <span class="bp-status-pill">Completed</span>
  <span class="bp-card-kicker">Engineering Design • Drafting • Team Leadership</span>
  </div>
  <h3 class="bp-card-title">3. Floating Arm Trebuchet | Team Captain</h3>
  <p class="bp-field-label">Overview</p>
  <p class="bp-readable-prose">School-wide competition between engineering dynamics classes in which student teams designed and constructed a trebuchet under a $500 budget constraint to launch a 10 lb pumpkin as far as possible.</p>
  <p class="bp-field-label">Methods</p>
  <p class="bp-readable-prose">Led the team through the design, drafting, fabrication, assembly, and testing process while working within competition time and budget constraints</p>
  </div>
  <div class="bp-tools-block">
  <p class="bp-field-label">Tools</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Engineering Drawings</span>
  <span class="bp-tech-badge">Fabrication</span>
  <span class="bp-tech-badge">Team Leadership</span>
  </div>
  </div>
  </div>
  <aside class="bp-card-right">
  <div class="bp-media-frame">
  <img class="bp-card-img" src="assets/images/trebuchet/trebuchet-competition-hero.png" alt="Full-scale floating-arm trebuchet at engineering dynamics competition">
  <div class="bp-media-caption">FIG 03 // Competition Hardware</div>
  </div>
  <div>
  <p class="bp-field-label">Focus</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Engineering Design</span>
  <span class="bp-tech-badge">Drafting</span>
  <span class="bp-tech-badge">Product Realization</span>
  <span class="bp-tech-badge">Team Leadership</span>
  </div>
  </div>
  <div class="bp-card-links">
  <a class="bp-action-link bp-action-link--accent bp-action-link--card" href="projects/trebuchet-quick-overview.html"><span>Read Quick Overview</span><span>→</span></a>
  <a class="bp-action-link bp-action-link--card" href="projects/trebuchet.html"><span>Read Full Project Report</span><span>→</span></a>
  </div>
  </aside>
  </div>
  </article>
  </div>
</section>

<section id="panel-in-progress" class="bp-tab-panel" role="tabpanel" aria-labelledby="tab-in-progress" aria-hidden="true" style="display: none;">
  <div class="bp-panel-header">
  <h2 class="bp-panel-title">// Section 02: In Progress Engineering Projects</h2>
  <span class="bp-panel-count">4 ACTIVE BUILDS</span>
  </div>
  <div class="bp-cards-stack">
  <article class="bp-card">
  <div class="bp-card-grid">
  <div class="bp-card-left">
  <div>
  <div class="bp-card-meta-top">
  <span class="bp-status-pill">In Progress</span>
  <span class="bp-card-kicker">Aerodynamics • Computational Methods</span>
  </div>
  <h3 class="bp-card-title">1. 2D Airfoil Aerodynamic Panel Method Solver</h3>
  <p class="bp-field-label">Overview</p>
  <p class="bp-readable-prose">Developing an object-oriented potential-flow aerodynamic solver to compute velocity distributions, pressure coefficients Cp, and lift across arbitrary 2D shapes using linear-strength vortex panels and LU matrix decomposition.</p>
  <p class="bp-field-label">Planned Methods</p>
  <ul class="bp-methods-list">
  <li>Implement a linear-strength vortex panel method for arbitrary 2D geometries</li>
  <li>Develop the influence-coefficient matrix and boundary-condition formulation</li>
  <li>Use LU matrix decomposition to solve the resulting linear system</li>
  <li>Calculate surface velocity distributions and pressure coefficients</li>
  <li>Determine aerodynamic forces and lift from the resulting pressure distribution</li>
  <li>Validate results against analytical solutions and established aerodynamic cases where applicable</li>
  </ul>
  </div>
  <div class="bp-tools-block">
  <p class="bp-field-label">Tools</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">C++</span>
  <span class="bp-tech-badge">Linear Algebra</span>
  <span class="bp-tech-badge">Git</span>
  </div>
  </div>
  </div>
  <aside class="bp-card-right">
  <div class="bp-spec-list">
  <div class="bp-spec-row">
  <span class="bp-spec-key">Expected Completion Timeline</span>
  <span class="bp-spec-val">December 2026</span>
  </div>
  </div>
  <div>
  <p class="bp-field-label">Focus</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Aerodynamics</span>
  <span class="bp-tech-badge">Computational Methods</span>
  <span class="bp-tech-badge">C++</span>
  <span class="bp-tech-badge">Linear Algebra</span>
  </div>
  </div>
  </aside>
  </div>
  </article>

  <article class="bp-card">
  <div class="bp-card-grid">
  <div class="bp-card-left">
  <div>
  <div class="bp-card-meta-top">
  <span class="bp-status-pill">In Progress</span>
  <span class="bp-card-kicker">Structural Analysis • Linear Optimization</span>
  </div>
  <h3 class="bp-card-title">2. Airfoil Structural Design Optimization</h3>
  <p class="bp-field-label">Overview</p>
  <p class="bp-readable-prose">Redesign the internal structure of the solid-aluminum airbike wing developed in my previous airbike CAD project by replacing unnecessary solid volume with a lightweight configuration of spars, ribs, and stringers. A linear optimization model will be developed to determine structural dimensions and material distribution that minimize wing mass while satisfying defined structural requirements, including allowable stress, deflection, and factor-of-safety constraints.</p>
  <p class="bp-field-label">Planned Methods</p>
  <ul class="bp-methods-list">
  <li>Establish loading conditions and structural requirements for the original wing</li>
  <li>Define design variables for spar, rib, and stringer dimensions and spacing</li>
  <li>Develop a linear optimization model to minimize structural mass</li>
  <li>Apply stress, deflection, geometric, and factor-of-safety constraints</li>
  <li>Use analytical beam/structural calculations to estimate performance during the optimization process</li>
  <li>Translate the optimized solution into a detailed SolidWorks model</li>
  <li>Use subsequent FEA to validate the optimized design against the analytical model</li>
  </ul>
  </div>
  <div class="bp-tools-block">
  <p class="bp-field-label">Tools</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Solidworks</span>
  <span class="bp-tech-badge">Linear optimization</span>
  </div>
  </div>
  </div>
  <aside class="bp-card-right">
  <div class="bp-spec-list">
  <div class="bp-spec-row">
  <span class="bp-spec-key">Expected Completion Timeline</span>
  <span class="bp-spec-val">December 2026</span>
  </div>
  </div>
  <div>
  <p class="bp-field-label">Focus</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Structural Analysis</span>
  <span class="bp-tech-badge">Applied Hand Calculations</span>
  <span class="bp-tech-badge">Linear Optimization</span>
  </div>
  </div>
  </aside>
  </div>
  </article>

  <article class="bp-card">
  <div class="bp-card-grid">
  <div class="bp-card-left">
  <div>
  <div class="bp-card-meta-top">
  <span class="bp-status-pill">In Progress</span>
  <span class="bp-card-kicker">Structures • Aerodynamics • Multiphysics</span>
  </div>
  <h3 class="bp-card-title">3. Improved Airfoil FEA &amp; CFD Analysis</h3>
  <p class="bp-field-label">Overview</p>
  <p class="bp-readable-prose">Extend my previous airbike design project by analyzing the original solid-aluminum wing as a baseline and developing a lightweight internal structure using spars, ribs, and other structural elements. FEA and CFD simulations will be used to evaluate the structural and aerodynamic performance of both configurations, with results compared against hand calculations and across multiple simulation platforms.</p>
  <p class="bp-field-label">Planned Methods</p>
  <ul class="bp-methods-list">
  <li>Establish the original solid-aluminum wing as a structural and aerodynamic baseline</li>
  <li>Develop a lightweight internal wing structure while maintaining required structural performance</li>
  <li>Perform FEA to compare stress, deformation, factor of safety, and structural mass</li>
  <li>Perform CFD to evaluate lift, drag, and aerodynamic coefficients</li>
  <li>Compare simulation results between SolidWorks, ANSYS, and NASTRAN where applicable</li>
  <li>Validate simulation results against analytical and hand calculations</li>
  <li>Quantify the effects of structural optimization on mass, structural performance, and aerodynamic performance</li>
  </ul>
  </div>
  <div class="bp-tools-block">
  <p class="bp-field-label">Tools</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">SolidWorks Simulation</span>
  <span class="bp-tech-badge">SolidWorks Flow Simulation</span>
  <span class="bp-tech-badge">ANSYS CFD</span>
  <span class="bp-tech-badge">NASTRAN FEA</span>
  <span class="bp-tech-badge">Hand Calculations</span>
  </div>
  </div>
  </div>
  <aside class="bp-card-right">
  <div class="bp-spec-list">
  <div class="bp-spec-row">
  <span class="bp-spec-key">Expected Completion Timeline</span>
  <span class="bp-spec-val">December 2026</span>
  </div>
  </div>
  <div>
  <p class="bp-field-label">Focus</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Structural Analysis</span>
  <span class="bp-tech-badge">Aerodynamics</span>
  <span class="bp-tech-badge">Computational Fluid Dynamics</span>
  <span class="bp-tech-badge">Design Optimization</span>
  </div>
  </div>
  </aside>
  </div>
  </article>

  <article class="bp-card">
  <div class="bp-card-grid">
  <div class="bp-card-left">
  <div>
  <div class="bp-card-meta-top">
  <span class="bp-status-pill">In Progress</span>
  <span class="bp-card-kicker">Orbital Mechanics • Numerical Methods</span>
  </div>
  <h3 class="bp-card-title">4. Satellite Tracker</h3>
  <p class="bp-field-label">Overview</p>
  <p class="bp-readable-prose">Developing a MATLAB-based satellite tracking and orbital propagation program as part of a semester-long orbital mechanics project. The model will use differential equations and numerical integration to calculate and track the position and velocity of a theoretical satellite throughout its orbit. The project will investigate how different orbital parameters influence satellite trajectories and how numerical methods can be used to model spacecraft motion over time.</p>
  <p class="bp-field-label">Planned Methods</p>
  <ul class="bp-methods-list">
  <li>Formulate the equations of motion governing two-body orbital dynamics</li>
  <li>Use numerical integration to propagate satellite position and velocity over time</li>
  <li>Calculate and visualize the satellite's orbital trajectory and key orbital parameters</li>
  <li>Investigate the effects of initial conditions and orbital parameters on the resulting trajectory</li>
  <li>Compare numerical results with analytical orbital mechanics relationships where applicable</li>
  <li>Implement the orbital propagation and visualization tools in MATLAB</li>
  </ul>
  </div>
  <div class="bp-tools-block">
  <p class="bp-field-label">Tools</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">MATLAB</span>
  <span class="bp-tech-badge">Numerical Methods</span>
  <span class="bp-tech-badge">Differential Equations</span>
  </div>
  </div>
  </div>
  <aside class="bp-card-right">
  <div class="bp-spec-list">
  <div class="bp-spec-row">
  <span class="bp-spec-key">Expected Completion Timeline</span>
  <span class="bp-spec-val">January 2027</span>
  </div>
  </div>
  <div>
  <p class="bp-field-label">Focus</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Orbital Mechanics</span>
  <span class="bp-tech-badge">Mathematical Modeling</span>
  <span class="bp-tech-badge">Differential Equations</span>
  <span class="bp-tech-badge">Numerical Methods</span>
  </div>
  </div>
  </aside>
  </div>
  </article>
  </div>
</section>

<section id="panel-planned" class="bp-tab-panel" role="tabpanel" aria-labelledby="tab-planned" aria-hidden="true" style="display: none;">
  <div class="bp-panel-header">
  <h2 class="bp-panel-title">// Section 03: Planned Engineering Projects</h2>
  <span class="bp-panel-count">2 SCOPED CONCEPTS</span>
  </div>
  <div class="bp-planned-grid">
  <article class="bp-card bp-card--flex">
  <div>
  <div class="bp-planned-header">
  <span class="bp-status-pill">Planned</span>
  <span class="bp-card-kicker">Expected Start Timeline: January 2027</span>
  </div>
  <h3 class="bp-card-title">1. Rocket Nozzle Design &amp; Analysis</h3>
  <p class="bp-field-label">Overview</p>
  <p class="bp-readable-prose">Develop a first-principles rocket nozzle analysis and sizing tool using compressible-flow and thermodynamic theory. The project will build upon my previous liquid rocket injector work and apply concepts and equations from Rocket Propulsion to a complete nozzle design and performance analysis.</p>
  <p class="bp-field-label">Planned Methods</p>
  <ul class="bp-methods-list">
  <li>1-D compressible-flow analysis</li>
  <li>Converging-diverging nozzle sizing</li>
  <li>Throat sizing and expansion-ratio parametric analysis</li>
  <li>Thrust and specific impulse prediction</li>
  <li>Numerical implementation and validation</li>
  <li>CAD/CFD comparison</li>
  </ul>
  </div>
  <div class="bp-planned-footer">
  <p class="bp-field-label">Focus</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Nozzle Theory</span>
  <span class="bp-tech-badge">Thermodynamics</span>
  <span class="bp-tech-badge">Analytical Modeling</span>
  </div>
  </div>
  </article>

  <article class="bp-card bp-card--flex">
  <div>
  <div class="bp-planned-header">
  <span class="bp-status-pill">Planned</span>
  <span class="bp-card-kicker">Expected Start Timeline: January 2027</span>
  </div>
  <h3 class="bp-card-title">2. Arknights Endfield Factory Optimization</h3>
  <p class="bp-field-label">Overview</p>
  <p class="bp-readable-prose">Develop an optimization model for in-game factory production under resource, machine, space, and integer-production constraints. The project will investigate how linear/integer optimization can determine production configurations that maximize production efficiency and trade-offs under specified resource, power, and space constraints.</p>
  <p class="bp-field-label">Planned Methods</p>
  <ul class="bp-methods-list">
  <li>Formulate production relationships as an optimization problem</li>
  <li>Apply linear/integer optimization techniques</li>
  <li>Model resource and production constraints with regards to mineral, fluid, and gas assets and their respective waste byproducts.</li>
  <li>Compare optimized solutions against manually selected configurations from the community</li>
  <li>Implement the model in Python and C++</li>
  </ul>
  </div>
  <div class="bp-planned-footer">
  <p class="bp-field-label">Focus</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Linear Optimization</span>
  <span class="bp-tech-badge">Mathematical Modeling</span>
  <span class="bp-tech-badge">Coding Practice</span>
  </div>
  </div>
  </article>
  </div>
</section>

<section id="panel-research" class="bp-tab-panel" role="tabpanel" aria-labelledby="tab-research" aria-hidden="true" style="display: none;">
  <div class="bp-panel-header">
  <h2 class="bp-panel-title">// Section 04: University Research Projects</h2>
  <span class="bp-panel-count">3 RESEARCH INVESTIGATIONS</span>
  </div>
  <div class="bp-cards-stack">
  <article class="bp-card">
  <div class="bp-card-grid">
  <div class="bp-card-left">
  <div>
  <div class="bp-card-meta-top">
  <span class="bp-status-pill">Research</span>
  <span class="bp-card-kicker">Propulsion • Experimental Fluids • Atomization</span>
  </div>
  <h3 class="bp-card-title">Rocket Injector Atomization Characterization</h3>
  <p class="bp-field-label">Overview</p>
  <p class="bp-readable-prose">Experimental and analytical investigation of the atomization performance of a previously developed impinging injector. The project will characterize injector spray behavior using water and a professor-supervised, home-built pressurization system, with experimental results used to investigate and model atomization characteristics. Results will be compiled into a technical paper for submission to the Region 2 Student Conference hosted by Mississippi State University.</p>
  <p class="bp-field-label">Planned Methods</p>
  <ul class="bp-methods-list">
  <li>Develop an experimental procedure for characterizing injector spray performance using water</li>
  <li>Operate and document a professor-supervised pressurization and test setup</li>
  <li>Measure and analyze relevant injector and spray characteristics across test conditions</li>
  <li>Develop an analytical model relating operating conditions to atomization performance</li>
  <li>Compare experimental measurements with theoretical predictions</li>
  <li>Analyze sources of experimental uncertainty and repeatability</li>
  <li>Compile experimental and analytical results into a journal-style technical paper</li>
  </ul>
  </div>
  <div class="bp-tools-block">
  <p class="bp-field-label">Tools</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Solidworks</span>
  <span class="bp-tech-badge">ANSYS</span>
  </div>
  </div>
  </div>
  <aside class="bp-card-right">
  <div class="bp-spec-list">
  <div class="bp-spec-row">
  <span class="bp-spec-key">Expected Completion Timeline</span>
  <span class="bp-spec-val">Early-February</span>
  </div>
  </div>
  <div class="bp-callout">
  <p class="bp-callout-label">Deliverable</p>
  <p class="bp-callout-text">Technical paper submitted to the Region 2 Student Conference</p>
  </div>
  <div>
  <p class="bp-field-label">Focus</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Experimental Methods</span>
  <span class="bp-tech-badge">Fluid Dynamics</span>
  <span class="bp-tech-badge">Atomization</span>
  <span class="bp-tech-badge">Data Analysis</span>
  <span class="bp-tech-badge">Propulsion</span>
  </div>
  </div>
  </aside>
  </div>
  </article>

  <article class="bp-card">
  <div class="bp-card-grid">
  <div class="bp-card-left">
  <div>
  <div class="bp-card-meta-top">
  <span class="bp-status-pill">Undergraduate Research — In Progress</span>
  <span class="bp-card-kicker">Materials Science • Surface Engineering</span>
  </div>
  <h3 class="bp-card-title">Plasma Electrolyte Oxidation of Mg-ZK60 Alloys</h3>
  <p class="bp-field-label">Overview</p>
  <p class="bp-readable-prose">Investigate plasma-electrolytic-oxidation (PEO) coatings for biodegradable Mg-ZK60 alloys, with emphasis on how hydroxyapatite (HA) and graphene oxide (GO) nanoparticles and coating current density influence corrosion resistance and mechanical and surface properties. The study will evaluate uncoated Mg-ZK60 alongside PEO, HA, GO, and hybrid HA+GO coatings produced at multiple current densities.</p>
  <p class="bp-field-label">Research Methods</p>
  <ul class="bp-methods-list">
  <li>Machine and prepare consistent Mg-ZK60 alloy specimens for coating and testing</li>
  <li>Produce PEO coatings using controlled electrolyte compositions and current densities</li>
  <li>Evaluate electrochemical behavior using electrochemical impedance spectroscopy (EIS) and potentiodynamic polarization (PDP)</li>
  <li>Characterize corrosion behavior through immersion testing, hydrogen evolution, mass loss, and pH monitoring</li>
  <li>Analyze coating morphology, roughness, microhardness, adhesion strength, thickness, and crystalline phases</li>
  <li>Use microscopy and XRD to relate coating characteristics to observed corrosion and mechanical behavior</li>
  <li>Collaborate with UARK on cytotoxicity and surface-wettability testing</li>
  </ul>
  </div>
  <div class="bp-tools-block">
  <p class="bp-field-label">Tools</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Plasma Electrolytic Oxidation</span>
  <span class="bp-tech-badge">Gamry Potentiostat</span>
  <span class="bp-tech-badge">EIS/PDP</span>
  <span class="bp-tech-badge">Optical Microscopy/SEM</span>
  <span class="bp-tech-badge">XRD</span>
  <span class="bp-tech-badge">Microhardness Testing</span>
  </div>
  </div>
  </div>
  <aside class="bp-card-right">
  <div class="bp-spec-list">
  <div class="bp-spec-row">
  <span class="bp-spec-key">Status</span>
  <span class="bp-spec-val">Undergraduate Research — In Progress</span>
  </div>
  </div>
  <div>
  <p class="bp-field-label">Focus</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Materials Science</span>
  <span class="bp-tech-badge">Corrosion</span>
  <span class="bp-tech-badge">Surface Engineering</span>
  <span class="bp-tech-badge">Experimental Characterization</span>
  </div>
  </div>
  </aside>
  </div>
  </article>

  <article class="bp-card">
  <div class="bp-card-grid">
  <div class="bp-card-left">
  <div>
  <div class="bp-card-meta-top">
  <span class="bp-status-pill">Undergraduate Research — In Progress</span>
  <span class="bp-card-kicker">Nanocomposites • Additive Manufacturing</span>
  </div>
  <h3 class="bp-card-title">ZK60-BN Nanocomposite Processing &amp; Characterization</h3>
  <p class="bp-field-label">Overview</p>
  <p class="bp-readable-prose">Investigate processing methods for bioresorbable ZK60 magnesium-based nanocomposites reinforced with boron nitride (BN) nanoparticles. The project compares rapid hot compaction with conventional argon sintering while investigating how BN concentration and acoustic powder mixing affect material densification, mechanical properties, corrosion behavior, and powder characteristics relevant to future additive manufacturing.</p>
  <p class="bp-field-label">Research Methods</p>
  <ul class="bp-methods-list">
  <li>Produce ZK60-BN nanocomposites using acoustic powder mixing and rapid hot compaction</li>
  <li>Investigate the effects of BN concentration on material properties and nanoparticle dispersion</li>
  <li>Compare rapid hot compaction against conventional hot compaction followed by argon sintering</li>
  <li>Characterize powder apparent density, tap density, skeletal density, particle size, and flowability</li>
  <li>Evaluate density, porosity, microhardness, and compressive mechanical properties of fabricated samples</li>
  <li>Use SEM/EDS and XRD to investigate microstructure, elemental distribution, and material phases</li>
  <li>Evaluate in-vitro corrosion behavior using immersion testing, hydrogen evolution, PDP, and EIS</li>
  <li>Collaborate with UARK on cytotoxicity, cell adhesion, wettability, and ion-release characterization</li>
  </ul>
  </div>
  <div class="bp-tools-block">
  <p class="bp-field-label">Tools</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Resodyn Acoustic Mixer</span>
  <span class="bp-tech-badge">Hot Compaction</span>
  <span class="bp-tech-badge">Argon Sintering</span>
  <span class="bp-tech-badge">SEM/EDS</span>
  <span class="bp-tech-badge">XRD</span>
  <span class="bp-tech-badge">Microhardness Testing</span>
  <span class="bp-tech-badge">Electrochemical Characterization</span>
  </div>
  </div>
  </div>
  <aside class="bp-card-right">
  <div class="bp-spec-list">
  <div class="bp-spec-row">
  <span class="bp-spec-key">Status</span>
  <span class="bp-spec-val">Undergraduate Research — In Progress</span>
  </div>
  </div>
  <div>
  <p class="bp-field-label">Focus</p>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Materials Science</span>
  <span class="bp-tech-badge">Nanocomposites</span>
  <span class="bp-tech-badge">Materials Processing</span>
  <span class="bp-tech-badge">Additive Manufacturing</span>
  </div>
  </div>
  </aside>
  </div>
  </article>
  </div>
</section>

<section class="bp-skills-wrap" aria-label="Technical Skills">
  <div class="bp-panel-header">
  <h2 class="bp-panel-title">// Section 05: Technical Skills</h2>
  <span class="bp-panel-count">SOFTWARE • LAB • ROADMAP</span>
  </div>
  <div class="bp-skills-card">
  <div class="bp-skill-row">
  <div class="bp-skill-cat">CAD &amp; Modeling</div>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">SolidWorks</span>
  <span class="bp-tech-badge">AutoCAD</span>
  <span class="bp-tech-badge">Autodesk Inventor</span>
  </div>
  </div>
  <div class="bp-skill-row">
  <div class="bp-skill-cat">Simulation &amp; FEA/CFD</div>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">SolidWorks FEA, CFD, and Thermal Simulation</span>
  <span class="bp-tech-badge">ANSYS</span>
  <span class="bp-tech-badge">NASTRAN</span>
  </div>
  </div>
  <div class="bp-skill-row">
  <div class="bp-skill-cat">Programming &amp; Analysis</div>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">C++</span>
  <span class="bp-tech-badge">MATLAB</span>
  <span class="bp-tech-badge">Python</span>
  <span class="bp-tech-badge">Proxmox</span>
  </div>
  </div>
  <div class="bp-skill-row">
  <div class="bp-skill-cat">Fabrication &amp; Testing</div>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">Plasma Electrolytic Oxidation (PEO)</span>
  <span class="bp-tech-badge">Electrochemical Corrosion Testing</span>
  <span class="bp-tech-badge">Scanning electron microscopy (SEM)/Energy-Dispersive X-Ray Spectroscopy (EDS)</span>
  <span class="bp-tech-badge">X-Ray Diffraction Analysis (XRD)</span>
  <span class="bp-tech-badge">Potentiodynamic Polarization (PDP)</span>
  <span class="bp-tech-badge">Electrochemical Impedance Spectroscopy (EIS)</span>
  <span class="bp-tech-badge">Hall Flowmeter</span>
  <span class="bp-tech-badge">Vickers Microhardness</span>
  </div>
  </div>
  <div class="bp-skill-row">
  <div class="bp-skill-cat">Planned skills to learn in 2027</div>
  <div class="bp-tag-list">
  <span class="bp-tech-badge">SysML / IBM Rhapsody</span>
  <span class="bp-tech-badge">Fortran</span>
  <span class="bp-tech-badge">GIT</span>
  <span class="bp-tech-badge">numerical methods</span>
  <span class="bp-tech-badge">thermal modeling/analysis</span>
  <span class="bp-tech-badge">SiemensNX</span>
  </div>
  </div>
  </div>
</section>

</div>

<script>
(function () {
  var VALID_TABS = ['completed', 'in-progress', 'planned', 'research'];
  var DEFAULT_TAB = 'completed';
  function initBlueprintTabs() {
  var root = document.getElementById('blueprint-portfolio');
  if (!root) return;
  var tabNav = root.querySelector('.bp-tab-nav');
  var buttons = Array.prototype.slice.call(root.querySelectorAll('.bp-tab-btn[data-tab]'));
  var panels = Array.prototype.slice.call(root.querySelectorAll('.bp-tab-panel'));
  if (!buttons.length || !panels.length) return;
  function normalizeTab(tabKey) {
  if (!tabKey) return DEFAULT_TAB;
  var cleaned = String(tabKey).replace(/^#/, '').toLowerCase();
  return VALID_TABS.indexOf(cleaned) !== -1 ? cleaned : DEFAULT_TAB;
  }
  function activateTab(tabKey, options) {
  var opts = options || {};
  var target = normalizeTab(tabKey);
  var targetPanel = null;
  buttons.forEach(function (btn) {
  var isMatch = btn.getAttribute('data-tab') === target;
  btn.classList.toggle('is-active', isMatch);
  btn.setAttribute('aria-selected', isMatch ? 'true' : 'false');
  btn.setAttribute('tabindex', isMatch ? '0' : '-1');
  if (isMatch && opts.fromUser && typeof btn.scrollIntoView === 'function') {
  btn.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'nearest' });
  }
  });
  panels.forEach(function (panel) {
  var isMatch = panel.id === 'panel-' + target;
  if (isMatch) {
  targetPanel = panel;
  panel.style.display = 'block';
  panel.setAttribute('aria-hidden', 'false');
  panel.classList.remove('is-active');
  void panel.offsetWidth;
  panel.classList.add('is-active');
  } else {
  panel.style.display = 'none';
  panel.setAttribute('aria-hidden', 'true');
  panel.classList.remove('is-active');
  }
  });
  if (opts.updateHash) {
  var nextHash = '#' + target;
  if (window.location.hash !== nextHash) {
  if (window.history && typeof window.history.pushState === 'function') {
  window.history.pushState({ tab: target }, '', nextHash);
  } else {
  window.location.hash = nextHash;
  }
  }
  }
  if (opts.fromClick && tabNav && targetPanel) {
  var navRect = tabNav.getBoundingClientRect();
  if (navRect.top <= 4) {
  var panelRect = targetPanel.getBoundingClientRect();
  var desiredTop = navRect.height + 24;
  if (panelRect.top < desiredTop) {
  window.scrollTo({
  top: window.scrollY + panelRect.top - desiredTop,
  behavior: 'smooth'
  });
  }
  }
  }
  }
  function syncFromHash() {
  var hashKey = window.location.hash ? window.location.hash.replace(/^#/, '').toLowerCase() : '';
  activateTab(hashKey || DEFAULT_TAB, { updateHash: false, fromUser: false });
  }
  buttons.forEach(function (btn, index) {
  btn.addEventListener('click', function () {
  var key = btn.getAttribute('data-tab');
  activateTab(key, { updateHash: true, fromUser: true, fromClick: true });
  });
  btn.addEventListener('keydown', function (event) {
  var nextIndex = -1;
  if (event.key === 'ArrowRight') {
  nextIndex = (index + 1) % buttons.length;
  } else if (event.key === 'ArrowLeft') {
  nextIndex = (index - 1 + buttons.length) % buttons.length;
  } else if (event.key === 'Home') {
  nextIndex = 0;
  } else if (event.key === 'End') {
  nextIndex = buttons.length - 1;
  }
  if (nextIndex !== -1) {
  event.preventDefault();
  var nextBtn = buttons[nextIndex];
  nextBtn.focus();
  activateTab(nextBtn.getAttribute('data-tab'), { updateHash: true, fromUser: true });
  }
  });
  });
  window.addEventListener('hashchange', syncFromHash);
  window.addEventListener('popstate', syncFromHash);
  syncFromHash();
  }
  if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', initBlueprintTabs);
  } else {
  initBlueprintTabs();
  }
})();
</script>
