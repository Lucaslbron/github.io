---
layout: default
title: 3D CAD Assembly Viewer | Impinging Injector
permalink: /projects/injector-cad-viewer.html
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
.bp-viewer-viewport { width: 100%; height: 580px; background: radial-gradient(circle at center, #FFFFFF 0%, #E4E4E7 100%); border: 1.5px solid #18181B; border-radius: 2px; outline: none; }
.bp-viewer-footer { margin-top: 0.95rem; display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 0.75rem; color: #52525B; font-family: 'JetBrains Mono', monospace; font-size: 0.78rem; }
</style>

<script type="module" src="https://ajax.googleapis.com/ajax/libs/model-viewer/4.0.0/model-viewer.min.js"></script>

# Impinging Injector 3D CAD Assembly Viewer

**Kennesaw State University Liquid Propulsion Team — STRIX 250 lbf Rocket Engine**  
**Component:** Two-Plate Impinging Injector Assembly (Top Plate & Bottom Plate)

<div class="bp-action-bar">
  <a href="injector/" class="bp-btn bp-btn-primary">← Back to Full Project Report</a>
  <a href="injector-quick-overview.html" class="bp-btn bp-btn-secondary">Quick Overview Page</a>
  <a href="../" class="bp-btn bp-btn-secondary">Portfolio Home</a>
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
  id="injector-viewer"
  class="bp-viewer-viewport"
  src="../assets/models/injector/injector-assembly.glb"
  poster="../assets/images/injector/injector-viewport.png"
  alt="3D CAD Assembly of Impinging Injector"
  auto-rotate
  rotation-per-second="25deg"
  camera-controls
  touch-action="pan-y"
  shadow-intensity="1.5"
  shadow-softness="0.75"
  exposure="1.15"
  environment-image="neutral"
  camera-orbit="45deg 55deg 105%"
  min-camera-orbit="auto auto 30%"
  max-camera-orbit="auto auto 300%">
  <div slot="progress-bar" style="height: 4px; background: #FFCC00;"></div>
  </model-viewer>
  <div class="bp-viewer-footer">
  <span>
  💡 <strong>Controls:</strong> Left-click + drag to rotate • Scroll wheel to zoom • Right-click / two fingers to pan
  </span>
  <div class="bp-viewer-controls">
  <a href="../assets/models/injector/injector-assembly.glb" download class="bp-btn bp-btn-secondary">
  ⬇ Download .GLB (300 KB)
  </a>
  <a href="../assets/models/injector/injector-assembly.sldasm" download class="bp-btn bp-btn-secondary">
  ⬇ Download SolidWorks .SLDASM (157 KB)
  </a>
  </div>
  </div>
</div>

<script>
(function () {
  var viewer = document.getElementById('injector-viewer');
  var resetBtn = document.getElementById('reset-cam');
  var rotateBtn = document.getElementById('toggle-rotate');
  var fullscreenBtn = document.getElementById('toggle-fullscreen');
  if (resetBtn && viewer) {
  resetBtn.addEventListener('click', function () {
  viewer.cameraOrbit = '45deg 55deg 105%';
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

## Assembly Details

The 3D model above captures the two-plate impinging injector design:

- **Top Plate:** Houses the main N₂O and Ethanol fluid manifolds, high-pressure sealing grooves, and mechanical interface bolt pattern.
- **Bottom Plate:** Features the precision-machined metering orifices and impinging outlet geometry directed into the STRIX combustion chamber.
- **Bulkhead Fasteners:** 8-bolt circular pattern positioned radially around the internal fluid geometry to ensure structural clamping under 900 psi manifold pressure.

---

### Associated Documentation
- **[Full Impinging Injector Case Study Report](injector/)**
- **[Preliminary Design Review (PDR)](../assets/docs/injector/liquid-propulsion-preliminary-design-review.pdf)**
- **[Impinging Injector Manufacturing Drawings (PDF)](../assets/docs/injector/impinging-injector-drawings.pdf)**
- **[Original Coaxial Swirl Injector Drawings & Manufacturing Plan (PDF)](../assets/docs/injector/coaxial-swirl-manufacturing-plan.pdf)**
