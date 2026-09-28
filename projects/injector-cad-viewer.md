---
layout: default
title: 3D CAD Assembly Viewer | Impinging Injector
permalink: /projects/injector-cad-viewer.html
---

<script type="module" src="https://ajax.googleapis.com/ajax/libs/model-viewer/4.0.0/model-viewer.min.js"></script>

# Impinging Injector 3D CAD Assembly Viewer

**Kennesaw State University Liquid Propulsion Team — STRIX 250 lbf Rocket Engine**  
**Component:** Two-Plate Impinging Injector Assembly (Top Plate & Bottom Plate)

[← Back to Full Project Report]({{ '/projects/injector/' | relative_url }})

---

<div style="background: #181926; border-radius: 12px; padding: 1.5rem; border: 1px solid #2e3048; box-shadow: 0 10px 30px rgba(0,0,0,0.45); margin: 1.5rem 0;">
  <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1rem; flex-wrap: wrap; gap: 0.75rem;">
    <div>
      <h3 style="margin: 0; color: #f8fafc; font-size: 1.25rem;">Interactive 3D Assembly</h3>
      <p style="margin: 0.25rem 0 0 0; color: #94a3b8; font-size: 0.85rem;">SolidWorks assembly exported to glTF / GLB binary format</p>
    </div>
    <div style="display: flex; gap: 0.5rem; flex-wrap: wrap;">
      <button id="reset-cam" style="background: #2a2d3d; color: #e2e8f0; border: 1px solid #40455e; padding: 0.4rem 0.8rem; border-radius: 6px; cursor: pointer; font-size: 0.85rem;">
        ↺ Reset View
      </button>
      <button id="toggle-rotate" style="background: #2a2d3d; color: #e2e8f0; border: 1px solid #40455e; padding: 0.4rem 0.8rem; border-radius: 6px; cursor: pointer; font-size: 0.85rem;">
        ⏸ Pause Rotation
      </button>
      <button id="toggle-fullscreen" style="background: #3b82f6; color: #ffffff; border: none; padding: 0.4rem 0.9rem; border-radius: 6px; cursor: pointer; font-size: 0.85rem; font-weight: 500;">
        ⛶ Fullscreen
      </button>
    </div>
  </div>

  <model-viewer
    id="injector-viewer"
    src="{{ '/assets/models/injector/injector-assembly.glb' | relative_url }}"
    poster="{{ '/assets/images/injector/injector-viewport.png' | relative_url }}"
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
    max-camera-orbit="auto auto 300%"
    style="width: 100%; height: 580px; background: radial-gradient(circle at center, #25283b 0%, #11121a 100%); border-radius: 8px; outline: none;">
    <div slot="progress-bar" style="height: 4px; background: #3b82f6;"></div>
  </model-viewer>

  <div style="margin-top: 1rem; display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 0.75rem; color: #94a3b8; font-size: 0.85rem;">
    <span>
      💡 <strong>Controls:</strong> Left-click + drag to rotate • Scroll wheel to zoom • Right-click / two fingers to pan
    </span>
    <div style="display: flex; gap: 1rem;">
      <a href="{{ '/assets/models/injector/injector-assembly.glb' | relative_url }}" download style="color: #60a5fa; text-decoration: none; font-weight: 500;">
        ⬇ Download .GLB (300 KB)
      </a>
      <a href="{{ '/assets/models/injector/injector-assembly.sldasm' | relative_url }}" download style="color: #60a5fa; text-decoration: none; font-weight: 500;">
        ⬇ Download SolidWorks .SLDASM (157 KB)
      </a>
    </div>
  </div>
</div>

<script>
  const viewer = document.getElementById('injector-viewer');
  const resetBtn = document.getElementById('reset-cam');
  const rotateBtn = document.getElementById('toggle-rotate');
  const fullscreenBtn = document.getElementById('toggle-fullscreen');

  if (resetBtn) {
    resetBtn.addEventListener('click', () => {
      viewer.cameraOrbit = '45deg 55deg 105%';
      viewer.cameraTarget = 'auto auto auto';
    });
  }

  if (rotateBtn) {
    let rotating = true;
    rotateBtn.addEventListener('click', () => {
      rotating = !rotating;
      viewer.autoRotate = rotating;
      rotateBtn.textContent = rotating ? '⏸ Pause Rotation' : '▶ Auto Rotate';
    });
  }

  if (fullscreenBtn) {
    fullscreenBtn.addEventListener('click', () => {
      if (!document.fullscreenElement) {
        viewer.requestFullscreen().catch(err => alert(`Error: ${err.message}`));
      } else {
        document.exitFullscreen();
      }
    });
  }
</script>

---

## Assembly Details

The 3D model above captures the two-plate impinging injector design:

- **Top Plate:** Houses the main N₂O and Ethanol fluid manifolds, high-pressure sealing grooves, and mechanical interface bolt pattern.
- **Bottom Plate:** Features the precision-machined metering orifices and impinging outlet geometry directed into the STRIX combustion chamber.
- **Bulkhead Fasteners:** 8-bolt circular pattern positioned radially around the internal fluid geometry to ensure structural clamping under 900 psi manifold pressure.

---

### Associated Documentation
- **[Full Impinging Injector Case Study Report]({{ '/projects/injector/' | relative_url }})**
- **[Preliminary Design Review (PDR)]({{ '/assets/docs/injector/liquid-propulsion-preliminary-design-review.pdf' | relative_url }})**
- **[Impinging Injector Manufacturing Drawings (PDF)]({{ '/assets/docs/injector/impinging-injector-drawings.pdf' | relative_url }})**
- **[Original Coaxial Swirl Injector Drawings & Manufacturing Plan (PDF)]({{ '/assets/docs/injector/coaxial-swirl-manufacturing-plan.pdf' | relative_url }})**
