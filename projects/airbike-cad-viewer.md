---
layout: default
title: 3D CAD Assembly Viewer | Electric Airbike
permalink: /projects/airbike-cad-viewer.html
---

<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=JetBrains+Mono:wght@400;500;600;700&display=swap');
html, body { background-color: #FFFFFF; color: #09090B; font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif; overflow-x: clip; -webkit-font-smoothing: antialiased; }
h1, h2, h3, h4 { color: #09090B; font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif; font-weight: 700; }
h1 { font-size: 2.15rem; font-weight: 800; letter-spacing: -0.03em; }
h2, h3 { border-bottom: 1.5px solid #18181B; padding-bottom: 0.4rem; margin-top: 2.2rem; }
a { color: #09090B; text-decoration: underline; text-decoration-color: #FFCC00; text-decoration-thickness: 2px; text-underline-offset: 3px; font-weight: 600; }
a:hover { background-color: #FFCC00; color: #09090B; }
.bp-action-bar { display: flex; gap: 0.65rem; flex-wrap: wrap; margin: 1.35rem 0; }
.bp-btn, a.bp-btn, button.bp-btn { display: inline-flex; align-items: center; gap: 0.45rem; padding: 0.5rem 0.9rem; border-radius: 2px; border: 1.5px solid #18181B; font-family: 'JetBrains Mono', monospace; font-size: 0.8rem; text-decoration: none; cursor: pointer; }
.bp-btn-primary, a.bp-btn-primary, button.bp-btn-primary { background: #FFCC00; color: #09090B; font-weight: 700; }
.bp-btn-primary:hover, a.bp-btn-primary:hover, button.bp-btn-primary:hover { background: #E6B800; color: #09090B; }
.bp-btn-secondary, a.bp-btn-secondary, button.bp-btn-secondary { background: #FFFFFF; color: #09090B; font-weight: 600; }
.bp-btn-secondary:hover, a.bp-btn-secondary:hover, button.bp-btn-secondary:hover { background: #FFCC00; color: #09090B; }
.bp-viewer-card { background: #F3F4F6; border: 1.5px solid #18181B; border-radius: 3px; padding: 1.35rem; box-shadow: 4px 4px 0px #18181B; margin: 1.75rem 0; }
.bp-viewer-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 1rem; flex-wrap: wrap; gap: 0.75rem; }
.bp-viewer-title { margin: 0; border-bottom: none; padding-bottom: 0; color: #09090B; font-size: 1.15rem; font-weight: 700; }
.bp-viewer-sub { margin: 0.2rem 0 0 0; color: #52525B; font-family: 'JetBrains Mono', monospace; font-size: 0.78rem; }
.bp-viewer-controls { display: flex; gap: 0.5rem; flex-wrap: wrap; }
.bp-viewer-viewport { width: 100%; height: 600px; background: radial-gradient(circle at center, #FFFFFF 0%, #E4E4E7 100%); border: 1.5px solid #18181B; border-radius: 2px; outline: none; }
.bp-viewer-footer { margin-top: 0.95rem; display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 0.75rem; color: #52525B; font-family: 'JetBrains Mono', monospace; font-size: 0.78rem; }
</style>

<script type="module" src="https://ajax.googleapis.com/ajax/libs/model-viewer/4.0.0/model-viewer.min.js"></script>

# Electric Airbike 3D CAD Assembly Viewer

**Simulation-Driven Vehicle Engineering & Multiphysics Optimization**  
**Assembly:** Full Personal Electric Airbike Vehicle Assembly (RevP1)

<div class="bp-action-bar">
  <a href="airbike.html" class="bp-btn bp-btn-primary">
  ← Back to Full Project Report
  </a>
  <a href="airbike-quick-overview.html" class="bp-btn bp-btn-secondary">
  Quick Overview Page
  </a>
  <a href="../" class="bp-btn bp-btn-secondary">
  Home
  </a>
</div>

---

<div class="bp-viewer-card">
  <div class="bp-viewer-header">
  <div>
  <h3 class="bp-viewer-title">Interactive 3D Assembly</h3>
  <p class="bp-viewer-sub">SolidWorks assembly exported to glTF / GLB binary format</p>
  </div>
  <div class="bp-viewer-controls">
  <button type="button" id="reset-cam" class="bp-btn bp-btn-secondary">
  ↺ Reset View
  </button>
  <button type="button" id="toggle-rotate" class="bp-btn bp-btn-secondary">
  ⏸ Pause Rotation
  </button>
  <button type="button" id="toggle-fullscreen" class="bp-btn bp-btn-primary">
  ⛶ Fullscreen
  </button>
  </div>
  </div>
  <model-viewer
  id="airbike-viewer"
  class="bp-viewer-viewport"
  src="../assets/models/airbike/airbike-assembly.glb"
  poster="../assets/images/airbike/airbike-assembly-hero.png"
  alt="3D CAD Assembly of Electric Airbike"
  auto-rotate
  rotation-per-second="20deg"
  camera-controls
  touch-action="pan-y"
  shadow-intensity="1.5"
  shadow-softness="0.75"
  exposure="1.15"
  environment-image="neutral"
  camera-orbit="45deg 60deg 110%"
  min-camera-orbit="auto auto 30%"
  max-camera-orbit="auto auto 400%">
  <div slot="progress-bar" style="height: 4px; background: #FFCC00;"></div>
  </model-viewer>
  <div class="bp-viewer-footer">
  <span>
  💡 <strong>Controls:</strong> Left-click + drag to rotate • Scroll wheel to zoom • Right-click / two fingers to pan
  </span>
  <div class="bp-viewer-controls">
  <a href="../assets/models/airbike/airbike-assembly.glb" download class="bp-btn bp-btn-secondary">
  ⬇ Download 3D Model (.GLB)
  </a>
  </div>
  </div>
</div>

<script>
(function () {
  var viewer = document.getElementById('airbike-viewer');
  var resetBtn = document.getElementById('reset-cam');
  var rotateBtn = document.getElementById('toggle-rotate');
  var fullscreenBtn = document.getElementById('toggle-fullscreen');
  if (resetBtn && viewer) {
  resetBtn.addEventListener('click', function () {
  viewer.cameraOrbit = '45deg 60deg 110%';
  viewer.cameraTarget = 'auto auto auto';
  });
  }
  if (rotateBtn && viewer) {
  var rotating = true;
  rotateBtn.addEventListener('click', function () {
  rotating = !rotating;
  viewer.autoRotate = rotating;
  rotateBtn.textContent = rotating ? '⏸ Pause Rotation' : '▶ Auto Rotate';
  });
  }
  if (fullscreenBtn && viewer) {
  fullscreenBtn.addEventListener('click', function () {
  if (!document.fullscreenElement) {
  viewer.requestFullscreen().catch(function (err) { alert('Error: ' + err.message); });
  } else {
  document.exitFullscreen();
  }
  });
  }
})();
</script>

---

## Assembly Overview

The interactive 3D model above captures the complete vehicle architecture engineered across this project:

- **Tubular Chassis (6061-T6 Aluminum):** High-rigidity tubular spaceframe featuring $2.50"\text{ OD} \times 0.25"\text{ wall}$ main members and dual $2.00"\text{ OD}$ rear truss supports that reduce deflection by 99.4% under dynamic load.
- **Operator Packaging & Ergonomics:** Accommodates a 200 lbf seated human model with unhindered steering clearance, clear lower foot rail placement, and natural control reach.
- **Sheet Metal Seat & Leaf-Spring Suspension (7075-T6 Aluminum):** Ergonomically formed pan with an integrated continuous-arc C-spring bracket (RevP2) engineered to isolate road shock and dynamic shifting loads (FOS 4.10).
- **Powertrain & Thermal Management:** Mid-mounted 200-cell lithium-ion battery pack coupled with an active serpentine multi-pass liquid heat exchanger (R-134a refrigerant and dielectric cooling oil).
- **Lifting Surfaces & Propulsion:** High-aspect-ratio swept wings for cruise lift combined with a high-mounted ducted fan featuring an aerodynamic protective shroud, swept propeller blades, and rear electric drive motor producing 798.5 lbf normal thrust.

---

### Associated Documentation

- **[Full Technical Deep-Dive Report](airbike.html)**
- **[Electric Airbike Quick Overview](airbike-quick-overview.html)**
- **[Electric Airbike Full Technical Presentation (PPTX)](../assets/docs/airbike/electric-airbike-final-presentation.pptx)**

---

[← Back to Full Project Report](airbike.html)
