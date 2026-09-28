---
layout: default
title: Home | Engineering Portfolio
---

# Lucas Lebron
**Aerospace & Mechanical Engineering**

[LinkedIn](https://www.linkedin.com/in/lucaslebron/) • [GitHub](https://github.com/Lucaslbron) • [Email Me](mailto:lucaslbron@proton.me) • [Resume (PDF)]({{ '/assets/docs/resume-lucas-lebron.pdf' | relative_url }})

---

## About Me
I am an undergraduate senior pursuing a dual degree in Aerospace Engineering and Mechanical Engineering, with a minor in Mathematics. I have always been drawn to engineering problems where theory, computation, and physical hardware are pushed to the limit of human knowledge, which ultimately led me toward aerospace engineering.

My current interests are focused around various aerospace fields such as structures, aerodynamics, propulsion, and materials. Through coursework and personal projects, I have developed experience with CAD, structural and thermal analysis, CFD, and engineering simulation, while also gaining experience turning those analyses into improved practical designs.

I built this portfolio to document that progression; Not only the projects I have completed, but also the problems I am currently solving, and the ones I am interested in tackling next.

---

## Completed Engineering Projects

### 1. **Impinging Injector for Liquid Rocket Booster**
- **Focus:** Propulsion, Fluids, 3D CAD Modeling
- **Overview:** Designed and evaluated a bi-propellant Impinging injector assembly, with emphasis on atomization efficiency, spray cone angle, and pressure drop.
- **Methods:** Developed the injector geometry and evaluated its fluid-flow and atomization characteristics through engineering analysis and simulation.
- **Tools:** SolidWorks, ANSYS
- [Read Quick Overview →]({{ '/projects/injector-quick-overview.html' | relative_url }})
- [Read Full Project Report →]({{ '/projects/injector/' | relative_url }})

---

### 2. **Electric Airbike Structural, Aerodynamic, & Thermal Simulations**
- **Focus:** Structural Analysis, Computational Fluid Dynamics, Thermal Analysis
- **Overview:** A Comprehensive, simulation-driven design of an electric airbike, using SolidWorks to transition from initial CAD geometries to optimized, data-backed engineering solutions.
- **Methods:** Performed structural FEA, CFD, and thermal simulations to evaluate and refine major vehicle components, including the chassis, seat, airfoils, propeller, heat exchanger, and battery system.
- **Tools:** SolidWorks, SolidWorks Flow Simulation, FEA Stress Analysis, Thermal Analysis
- [Read Quick Overview →]({{ '/projects/airbike-quick-overview.html' | relative_url }})
- [Read Full Project Report →]({{ '/projects/airbike.html' | relative_url }})

---

### 3. **Floating Arm Trebuchet | Team Captain**
- **Focus:** Engineering Design, Drafting, Product Realization, Team Leadership
- **Overview:** School-wide competition between engineering dynamics classes in which student teams designed and constructed a trebuchet under a $500 budget constraint to launch a 10 lb pumpkin as far as possible.
- **Methods:** Led the team through the design, drafting, fabrication, assembly, and testing process while working within competition time and budget constraints
- **Tools:** Engineering Drawings, Fabrication, Team Leadership
- [Read Quick Overview →]({{ '/projects/trebuchet-quick-overview.html' | relative_url }})
- [Read Full Project Report →]({{ '/projects/trebuchet.html' | relative_url }})

---

## In Progress Engineering Projects

### 1. **2D Airfoil Aerodynamic Panel Method Solver**
- **Focus:** Aerodynamics, Computational Methods, C++, Linear Algebra
- **Overview:** Developing an object-oriented potential-flow aerodynamic solver to compute velocity distributions, pressure coefficients Cp, and lift across arbitrary 2D shapes using linear-strength vortex panels and LU matrix decomposition.
- Planned Methods:
  - Implement a linear-strength vortex panel method for arbitrary 2D geometries
  - Develop the influence-coefficient matrix and boundary-condition formulation
  - Use LU matrix decomposition to solve the resulting linear system
  - Calculate surface velocity distributions and pressure coefficients
  - Determine aerodynamic forces and lift from the resulting pressure distribution
  - Validate results against analytical solutions and established aerodynamic cases where applicable
- **Tools:** C++, Linear Algebra, Git
- **Expected Completion Timeline:** Late October - Early November 2026

---

### 2. **Airfoil Structural Design Optimization**
- **Focus:** Structural Analysis, Applied Hand Calculations, Linear Optimization
- **Overview:** Redesign the internal structure of the solid-aluminum airbike wing developed in my previous airbike CAD project by replacing unnecessary solid volume with a lightweight configuration of spars, ribs, and stringers. A linear optimization model will be developed to determine structural dimensions and material distribution that minimize wing mass while satisfying defined structural requirements, including allowable stress, deflection, and factor-of-safety constraints.
- **Planned Methods:**
  - Establish loading conditions and structural requirements for the original wing
  - Define design variables for spar, rib, and stringer dimensions and spacing
  - Develop a linear optimization model to minimize structural mass
  - Apply stress, deflection, geometric, and factor-of-safety constraints
  - Use analytical beam/structural calculations to estimate performance during the optimization process
  - Translate the optimized solution into a detailed SolidWorks model
  - Use subsequent FEA to validate the optimized design against the analytical model
- **Tools:** Solidworks, Linear optimization
- **Expected Completion Timeline:** Mid-October

---

### 3. **Improved Airfoil FEA & CFD Analysis**
- **Focus:** Structural Analysis, Aerodynamics, Computational Fluid Dynamics, Design Optimization
- **Overview:** Extend my previous airbike design project by analyzing the original solid-aluminum wing as a baseline and developing a lightweight internal structure using spars, ribs, and other structural elements. FEA and CFD simulations will be used to evaluate the structural and aerodynamic performance of both configurations, with results compared against hand calculations and across multiple simulation platforms.
- **Planned Methods:**
  - Establish the original solid-aluminum wing as a structural and aerodynamic baseline
  - Develop a lightweight internal wing structure while maintaining required structural performance
  - Perform FEA to compare stress, deformation, factor of safety, and structural mass
  - Perform CFD to evaluate lift, drag, and aerodynamic coefficients
  - Compare simulation results between SolidWorks, ANSYS, and NASTRAN where applicable
  - Validate simulation results against analytical and hand calculations
  - Quantify the effects of structural optimization on mass, structural performance, and aerodynamic performance
- **Tools:** SolidWorks Simulation, SolidWorks Flow Simulation, ANSYS CFD, NASTRAN FEA, Hand Calculations
- **Expected Completion Timeline:** Late November - Early December

---

## Planned Engineering Projects

### 1. **Satellite Tracker**
- **Focus:** Orbital Mechanics, Mathematical Modeling, Differential Equations, Numerical Methods
- **Overview:** Develop a MATLAB-based satellite tracking and orbital propagation program as part of a semester-long orbital mechanics project. The model will use differential equations and numerical integration to calculate and track the position and velocity of a theoretical satellite throughout its orbit. The project will investigate how different orbital parameters influence satellite trajectories and how numerical methods can be used to model spacecraft motion over time.
- **Planned Methods:**
  - Formulate the equations of motion governing two-body orbital dynamics
  - Use numerical integration to propagate satellite position and velocity over time
  - Calculate and visualize the satellite's orbital trajectory and key orbital parameters
  - Investigate the effects of initial conditions and orbital parameters on the resulting trajectory
  - Compare numerical results with analytical orbital mechanics relationships where applicable
  - Implement the orbital propagation and visualization tools in MATLAB
- **Expected Start Timeline:** Mid-Late October

---

### 2. **Arknights Endfield Factory Optimization**
- **Focus:** Linear Optimization, Mathematical Modeling, Coding Practice
- **Overview:** Develop an optimization model for in-game factory production under resource, machine, and integer-production constraints. The project will investigate how linear/integer optimization can determine production configurations that maximize production efficiency and trade-offs under specified resource, power, and space constraints.
- **Planned Methods:**
  - Formulate production relationships as an optimization problem
  - Apply linear/integer optimization techniques
  - Model resource and production constraints with regards to mineral, fluid, and gas assets and their respective waste byproducts.
  - Compare optimized solutions against manually selected configurations from the community
  - Implement the model in Python and C++
- **Expected Start Timeline:** January 2027

---

## University Research Projects

### **Rocket Injector Atomization Characterization**
- **Focus:** Experimental Methods, Fluid Dynamics, Atomization, Data Analysis, Propulsion
- **Overview:** Experimental and analytical investigation of the atomization performance of a previously developed impinging injector. The project will characterize injector spray behavior using water and a professor-supervised, home-built pressurization system, with experimental results used to investigate and model atomization characteristics. Results will be compiled into a technical paper for submission to the Region 2 Student Conference hosted by Mississippi State University.
- **Planned Methods:**
  - Develop an experimental procedure for characterizing injector spray performance using water
  - Operate and document a professor-supervised pressurization and test setup
  - Measure and analyze relevant injector and spray characteristics across test conditions
  - Develop an analytical model relating operating conditions to atomization performance
  - Compare experimental measurements with theoretical predictions
  - Analyze sources of experimental uncertainty and repeatability
  - Compile experimental and analytical results into a journal-style technical paper
- **Tools:** Solidworks, ANSYS
- **Expected Completion Timeline:** Early-February
- **Deliverable:** Technical paper submitted to the Region 2 Student Conference

---

### **Plasma Electrolyte Oxidation of Mg-ZK60 Alloys**
- **Focus:** Materials Science, Corrosion, Surface Engineering, Experimental Characterization
- **Overview:** Investigate plasma-electrolytic-oxidation (PEO) coatings for biodegradable Mg-ZK60 alloys, with emphasis on how hydroxyapatite (HA) and graphene oxide (GO) nanoparticles and coating current density influence corrosion resistance and mechanical and surface properties. The study will evaluate uncoated Mg-ZK60 alongside PEO, HA, GO, and hybrid HA+GO coatings produced at multiple current densities.
- **Research Methods:**
  - Machine and prepare consistent Mg-ZK60 alloy specimens for coating and testing
  - Produce PEO coatings using controlled electrolyte compositions and current densities
  - Evaluate electrochemical behavior using electrochemical impedance spectroscopy (EIS) and potentiodynamic polarization (PDP)
  - Characterize corrosion behavior through immersion testing, hydrogen evolution, mass loss, and pH monitoring
  - Analyze coating morphology, roughness, microhardness, adhesion strength, thickness, and crystalline phases
  - Use microscopy and XRD to relate coating characteristics to observed corrosion and mechanical behavior
  - Collaborate with UARK on cytotoxicity and surface-wettability testing
- **Tools:** Plasma Electrolytic Oxidation, Gamry Potentiostat, EIS/PDP, Optical Microscopy/SEM, XRD, Microhardness Testing
- **Status:** Undergraduate Research — In Progress

---

### **ZK60-BN Nanocomposite Processing & Characterization**
- **Focus:** Materials Science, Nanocomposites, Materials Processing, Additive Manufacturing
- **Overview:** Investigate processing methods for bioresorbable ZK60 magnesium-based nanocomposites reinforced with boron nitride (BN) nanoparticles. The project compares rapid hot compaction with conventional argon sintering while investigating how BN concentration and acoustic powder mixing affect material densification, mechanical properties, corrosion behavior, and powder characteristics relevant to future additive manufacturing.
- **Research Methods:**
  - Produce ZK60-BN nanocomposites using acoustic powder mixing and rapid hot compaction
  - Investigate the effects of BN concentration on material properties and nanoparticle dispersion
  - Compare rapid hot compaction against conventional hot compaction followed by argon sintering
  - Characterize powder apparent density, tap density, skeletal density, particle size, and flowability
  - Evaluate density, porosity, microhardness, and compressive mechanical properties of fabricated samples
  - Use SEM/EDS and XRD to investigate microstructure, elemental distribution, and material phases
  - Evaluate in-vitro corrosion behavior using immersion testing, hydrogen evolution, PDP, and EIS
  - Collaborate with UARK on cytotoxicity, cell adhesion, wettability, and ion-release characterization
- **Tools:** Resodyn Acoustic Mixer, Hot Compaction, Argon Sintering, SEM/EDS, XRD, Microhardness Testing, Electrochemical Characterization
- **Status:** Undergraduate Research — In Progress

---

## Technical Skills
- **CAD & Modeling:** SolidWorks, AutoCAD, Autodesk Inventor
- **Simulation & FEA/CFD:** SolidWorks FEA, CFD, and Thermal Simulation, ANSYS, NASTRAN
- **Programming & Analysis:** C++, MATLAB, Python, Proxmox
- **Fabrication & Testing:** Plasma Electrolytic Oxidation (PEO), Electrochemical Corrosion Testing, Scanning electron microscopy (SEM)/Energy-Dispersive X-Ray Spectroscopy (EDS), X-Ray Diffraction Analysis (XRD), Potentiodynamic Polarization (PDP), Electrochemical Impedance Spectroscopy (EIS), Hall Flowmeter, Vickers Microhardness,
- **Planned skills to learn in 2027:** SysML / IBM Rhapsody, Fortran, GIT, numerical methods, thermal modeling/analysis
