---
layout: default
title: 3D CAD Assembly Viewer | Electric Airbike
permalink: /projects/airbike-cad-viewer.html
---

<script type="module" src="https://ajax.googleapis.com/ajax/libs/model-viewer/4.0.0/model-viewer.min.js"></script>

# Electric Airbike 3D CAD Assembly Viewer

**Simulation-Driven Vehicle Engineering & Multiphysics Optimization**  
**Assembly:** Full Personal Electric Airbike Vehicle Assembly (RevP1)

<div style="display: flex; gap: 0.75rem; flex-wrap: wrap; margin: 1.25rem 0;">
  <a href="{{ '/projects/airbike.html' | relative_url }}" style="background: #3b82f6; color: #ffffff; padding: 0.45rem 0.9rem; border-radius: 6px; text-decoration: none; font-weight: 500; font-size: 0.9rem;">
    ← Back to Full Project Report
  </a>
  <a href="{{ '/projects/airbike-quick-overview.html' | relative_url }}" style="background: #232736; color: #93c5fd; border: 1px solid #3b82f6; padding: 0.45rem 0.9rem; border-radius: 6px; text-decoration: none; font-weight: 500; font-size: 0.9rem;">
    Quick Overview Page
  </a>
  <a href="{{ '/' | relative_url }}" style="background: #1c202c; color: #94a3b8; border: 1px solid #2d3345; padding: 0.45rem 0.9rem; border-radius: 6px; text-decoration: none; font-size: 0.9rem;">
    Home
  </a>
</div>

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
    id="airbike-viewer"
    src="{{ '/assets/models/airbike/airbike-assembly.glb' | relative_url }}"
    poster="{{ '/assets/images/airbike/airbike-assembly-hero.png' | relative_url }}"
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
    max-camera-orbit="auto auto 400%"
    style="width: 100%; height: 600px; background: radial-gradient(circle at center, #25283b 0%, #11121a 100%); border-radius: 8px; outline: none;">
    <div slot="progress-bar" style="height: 4px; background: #3b82f6;"></div>
  </model-viewer>

  <div style="margin-top: 1rem; display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 0.75rem; color: #94a3b8; font-size: 0.85rem;">
    <span>
      💡 <strong>Controls:</strong> Left-click + drag to rotate • Scroll wheel to zoom • Right-click / two fingers to pan
    </span>
    <div style="display: flex; gap: 1rem;">
      <a href="{{ '/assets/models/airbike/airbike-assembly.glb' | relative_url }}" download style="color: #60a5fa; text-decoration: none; font-weight: 500;">
        ⬇ Download 3D Model (.GLB)
      </a>
    </div>
  </div>
</div>

<script>
  const viewer = document.getElementById('airbike-viewer');
  const resetBtn = document.getElementById('reset-cam');
  const rotateBtn = document.getElementById('toggle-rotate');
  const fullscreenBtn = document.getElementById('toggle-fullscreen');

  if (resetBtn) {
    resetBtn.addEventListener('click', () => {
      viewer.cameraOrbit = '45deg 60deg 110%';
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

## Assembly Overview

The interactive 3D model above captures the complete vehicle architecture engineered across this project:

- **Tubular Chassis (6061-T6 Aluminum):** High-rigidity tubular spaceframe featuring $2.50"\text{ OD} \times 0.25"\text{ wall}$ main members and dual $2.00"\text{ OD}$ rear truss supports that reduce deflection by 99.4% under dynamic load.
- **Operator Packaging & Ergonomics:** Accommodates a 200 lbf seated human model with unhindered steering clearance, clear lower foot rail placement, and natural control reach.
- **Sheet Metal Seat & Leaf-Spring Suspension (7075-T6 Aluminum):** Ergonomically formed pan with an integrated continuous-arc C-spring bracket (RevP2) engineered to isolate road shock and dynamic shifting loads (FOS 4.10).
- **Powertrain & Thermal Management:** Mid-mounted 200-cell lithium-ion battery pack coupled with an active serpentine multi-pass liquid heat exchanger (R-134a refrigerant and dielectric cooling oil).
- **Lifting Surfaces & Propulsion:** High-aspect-ratio swept wings for cruise lift combined with a high-mounted ducted fan featuring an aerodynamic protective shroud, swept propeller blades, and rear electric drive motor producing 798.5 lbf normal thrust.

---

### Associated Documentation

- **[Full Technical Deep-Dive Report]({{ '/projects/airbike.html' | relative_url }})**
- **[Electric Airbike Quick Overview]({{ '/projects/airbike-quick-overview.html' | relative_url }})**
- **[Electric Airbike Full Technical Presentation (PPTX)]({{ '/assets/docs/airbike/electric-airbike-final-presentation.pptx' | relative_url }})**

---

[← Back to Full Project Report]({{ '/projects/airbike.html' | relative_url }})
