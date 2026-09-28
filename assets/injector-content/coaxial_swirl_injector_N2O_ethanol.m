%% =========================================================================
%  COAXIAL SWIRL INJECTOR SIZING TOOL
%  Propellants : Nitrous Oxide (N2O) oxidiser | Ethanol fuel
%  Method      : Bazarov / Rizk-Lefebvre classical swirl atomiser theory
%  Purpose     : University / college rocketry team preliminary design
%
%  WHAT THIS CODE DOES
%  -------------------
%  1. Accepts a list of THRUST LEVELS (e.g. 100 N, 500 N, 1000 N)
%  2. For EACH thrust level it sizes:
%       - Propellant mass flow rates
%       - Orifice (exit throat) diameters
%       - Swirl chamber dimensions (radius, length, slot size)
%       - Spray cone half-angle
%       - Sauter Mean Diameter (SMD) -- droplet size estimate
%       - Weber & Reynolds numbers (atomisation regime check)
%  3. Prints a clean summary table for each thrust level
%  4. Plots nine parametric trade curves useful for design reviews
%
%  HOW TO USE
%  ----------
%  Edit ONLY the values inside Section 1 (USER INPUTS).
%  Run the script -- all outputs appear in the Command Window and Figure.
%
%  REFERENCES
%  ----------
%  [1] Lefebvre, A.H. (1989). Atomization and Sprays. Hemisphere.
%  [2] Rizk & Lefebvre (1985). J. Propulsion, 1(3), pp. 193-199.
%  [3] Bazarov, V.G. (1995). Liquid-Propellant Rocket Engine Injectors.
%  [4] Huzel & Huang (1992). Modern Engineering for Design of
%      Liquid-Propellant Rocket Engines. AIAA.
% =========================================================================

clearvars; clc; close all;

% =========================================================================
%  SECTION 1 -- USER INPUTS  (edit these values)
% =========================================================================

%  --- Thrust levels to analyse [Newtons] ---
%  Add or remove values to cover your engine family.
%  e.g.: [100, 250, 500, 1000] covers lab thruster to flight engine.
THRUST_LEVELS_N = [1, 250, 500, 1000];   % [N]

%  --- Engine performance targets ---
Isp_s       = 230;     % [s]  Expected specific impulse (vacuum)
                        %      N2O/ethanol typically 220-250 s depending on MR
MR          = 4.5;     % [-]  Oxidiser-to-fuel mass ratio (O/F)
                        %      Stoichiometric N2O/EtOH ~ 3.5; run fuel-rich
Pc_Pa       = 20e5;    % [Pa] Chamber pressure (20 bar is typical for small engines)

%  --- Injection pressure drops ---
%  Rule of thumb: 20-30% of chamber pressure.
%  Higher dP  better atomisation but more pressurant mass.
dP_ox_frac  = 0.25;    % Delta_P_oxidiser / Pc  (25%)
dP_f_frac   = 0.20;    % Delta_P_fuel / Pc      (20%)

%  --- Propellant physical properties at ~20 deg C, liquid phase ---
rho_ox      = 780;     % [kg/m3] N2O liquid density
rho_f       = 789;     % [kg/m3] Ethanol density
mu_ox       = 9.5e-5;  % [Pa.s]  Dynamic viscosity, N2O liquid
mu_f        = 1.2e-3;  % [Pa.s]  Dynamic viscosity, ethanol
sigma_ox    = 0.0015;  % [N/m]   Surface tension, N2O liquid (~1.5 mN/m)
sigma_f     = 0.0223;  % [N/m]   Surface tension, ethanol

%  --- Injector element layout ---
N_elements  = 6;       % Number of coaxial element pairs on the injector face
                        % Scale up for higher thrust or better uniformity

%  --- Discharge coefficients ---
%  Cd for pressure-swirl atomisers is typically 0.25 to 0.45.
%  Lower Cd  stronger swirl, wider spray angle, better atomisation.
Cd_ox       = 0.35;    % oxidiser element
Cd_f        = 0.38;    % fuel element

%  --- Geometric swirl numbers ---
%  Controls swirl strength and spray half-angle.
%  Typical range: 1.5 to 4.0  (higher value  wider cone)
A_geo_ox    = 2.5;     % oxidiser (outer annular element)
A_geo_f     = 2.0;     % fuel     (inner post element)

%  --- Swirl chamber geometry ratios ---
n_slots_ox  = 3;       % number of tangential inlet slots, oxidiser
n_slots_f   = 3;       % number of tangential inlet slots, fuel
Rs_ratio_ox = 3.0;     % R_swirl_chamber / r_orifice, oxidiser (2.5-4 typical)
Rs_ratio_f  = 2.8;     % R_swirl_chamber / r_orifice, fuel
Ls_ratio    = 2.0;     % L_swirl_chamber / D_swirl_chamber (length-to-diameter)
Lrec_ratio  = 0.8;     % L_recess / D_swirl_ox  (recess zone depth)
t_wall_m    = 2e-3;    % [m] minimum wall thickness (2 mm for CNC machining)

% =========================================================================
%  SECTION 2 -- DERIVED CONSTANTS  (do not edit below this line)
% =========================================================================

g0          = 9.80665;                   % [m/s2] standard gravity
dP_ox       = dP_ox_frac * Pc_Pa;        % [Pa] oxidiser injection dP
dP_f        = dP_f_frac  * Pc_Pa;        % [Pa] fuel injection dP

%  Spray half-angle from Lefebvre relation:
%    Cd_theory = 1 / sqrt(1 + A_geo^2)
%    alpha     = atan( sqrt(1 - Cd^2) / Cd )
Cd_th_ox    = 1 / sqrt(1 + A_geo_ox^2);
Cd_th_f     = 1 / sqrt(1 + A_geo_f^2);
alpha_ox_deg = rad2deg(atan(sqrt(1 - Cd_th_ox^2) / Cd_th_ox));
alpha_f_deg  = rad2deg(atan(sqrt(1 - Cd_th_f^2)  / Cd_th_f));

% =========================================================================
%  SECTION 3 -- LOOP OVER THRUST LEVELS
% =========================================================================

nT = length(THRUST_LEVELS_N);

% Pre-allocate result arrays for plotting
res_mdot_ox = zeros(1,nT);
res_mdot_f  = zeros(1,nT);
res_d_or_ox = zeros(1,nT);
res_d_or_f  = zeros(1,nT);
res_Ds_ox   = zeros(1,nT);
res_Ds_f    = zeros(1,nT);
res_SMD_ox  = zeros(1,nT);
res_SMD_f   = zeros(1,nT);
res_v_ox    = zeros(1,nT);
res_v_f     = zeros(1,nT);
res_We_ox   = zeros(1,nT);
res_We_f    = zeros(1,nT);

fprintf('=================================================================\n');
fprintf('  COAXIAL SWIRL INJECTOR -- N2O / ETHANOL\n');
fprintf('  University Rocketry Team -- Multi-Thrust Sizing\n');
fprintf('=================================================================\n');
fprintf('  Chamber pressure   : %.1f bar\n', Pc_Pa/1e5);
fprintf('  O/F mixture ratio  : %.2f\n', MR);
fprintf('  Isp (vacuum)       : %.0f s\n', Isp_s);
fprintf('  Elements per face  : %d\n', N_elements);
fprintf('  dP_ox / Pc         : %.0f%%\n', dP_ox_frac*100);
fprintf('  dP_f  / Pc         : %.0f%%\n', dP_f_frac*100);
fprintf('  Swirl no. A_geo    : ox=%.1f  fuel=%.1f\n', A_geo_ox, A_geo_f);
fprintf('  Spray half-angle   : ox=%.1f deg  fuel=%.1f deg\n', alpha_ox_deg, alpha_f_deg);
fprintf('  Full cone angle    : ox=%.1f deg  fuel=%.1f deg\n', 2*alpha_ox_deg, 2*alpha_f_deg);
fprintf('=================================================================\n\n');

for i = 1:nT

    F = THRUST_LEVELS_N(i);

    % 3a. Mass flow rates
    mdot_tot   = F / (Isp_s * g0);           % total propellant [kg/s]
    mdot_f_tot = mdot_tot / (1 + MR);         % total fuel       [kg/s]
    mdot_ox_tot= MR * mdot_f_tot;             % total oxidiser   [kg/s]
    mdot_ox_el = mdot_ox_tot / N_elements;    % per element
    mdot_f_el  = mdot_f_tot  / N_elements;

    % 3b. Orifice areas and diameters
    %  mdot = Cd * A_or * sqrt(2 * rho * dP)
    A_or_ox = mdot_ox_el / (Cd_ox * sqrt(2 * rho_ox * dP_ox));  % [m2]
    A_or_f  = mdot_f_el  / (Cd_f  * sqrt(2 * rho_f  * dP_f));
    d_or_ox = sqrt(4 * A_or_ox / pi);   % [m]
    d_or_f  = sqrt(4 * A_or_f  / pi);
    r_or_ox = d_or_ox / 2;
    r_or_f  = d_or_f  / 2;

    % 3c. Swirl chamber geometry
    R_s_ox  = Rs_ratio_ox * r_or_ox;    % swirl chamber radius [m]
    R_s_f   = Rs_ratio_f  * r_or_f;
    D_s_ox  = 2 * R_s_ox;               % swirl chamber diameter [m]
    D_s_f   = 2 * R_s_f;
    L_s_ox  = Ls_ratio * D_s_ox;        % swirl chamber length [m]
    L_s_f   = Ls_ratio * D_s_f;

    %  Tangential slot area:
    %  A_geo = (R_s * A_or) / (n * A_in)  =>  A_in = (R_s * A_or) / (n * A_geo)
    A_in_ox = (R_s_ox * A_or_ox) / (n_slots_ox * A_geo_ox);  % [m2] per slot
    A_in_f  = (R_s_f  * A_or_f ) / (n_slots_f  * A_geo_f );

    % Slot shape: assume width = sqrt(2*A), height = A/width
    w_sl_ox = sqrt(2 * A_in_ox);   h_sl_ox = A_in_ox / w_sl_ox;
    w_sl_f  = sqrt(2 * A_in_f);    h_sl_f  = A_in_f  / w_sl_f;

    % 3d. Recess zone depth and outer body diameter
    L_rec   = Lrec_ratio * D_s_ox;
    D_outer = D_s_ox + 2 * t_wall_m;

    % 3e. Injection velocities
    v_ox = mdot_ox_el / (rho_ox * A_or_ox);
    v_f  = mdot_f_el  / (rho_f  * A_or_f);

    % 3f. Sauter Mean Diameter (Rizk-Lefebvre 1985, simplified)
    %  SMD = 2.25 * sigma^0.25 * mu^0.25 * mdot^0.25 * dP^(-0.5) * rho^(-0.25)
    K_smd  = 2.25;
    SMD_ox = K_smd * sigma_ox^0.25 * mu_ox^0.25 * mdot_ox_el^0.25 ...
             * dP_ox^(-0.5) * rho_ox^(-0.25);
    SMD_f  = K_smd * sigma_f^0.25  * mu_f^0.25  * mdot_f_el^0.25 ...
             * dP_f^(-0.5)  * rho_f^(-0.25);

    % 3g. Dimensionless numbers (atomisation regime check)
    We_ox  = rho_ox * v_ox^2 * d_or_ox / sigma_ox;
    We_f   = rho_f  * v_f^2  * d_or_f  / sigma_f;
    Re_ox  = rho_ox * v_ox * d_or_ox / mu_ox;
    Re_f   = rho_f  * v_f  * d_or_f  / mu_f;

    % Store results for plotting
    res_mdot_ox(i) = mdot_ox_tot * 1e3;
    res_mdot_f(i)  = mdot_f_tot  * 1e3;
    res_d_or_ox(i) = d_or_ox * 1e3;
    res_d_or_f(i)  = d_or_f  * 1e3;
    res_Ds_ox(i)   = D_s_ox  * 1e3;
    res_Ds_f(i)    = D_s_f   * 1e3;
    res_SMD_ox(i)  = SMD_ox  * 1e6;
    res_SMD_f(i)   = SMD_f   * 1e6;
    res_v_ox(i)    = v_ox;
    res_v_f(i)     = v_f;
    res_We_ox(i)   = We_ox;
    res_We_f(i)    = We_f;

    % 3h. Print summary table
    fprintf('+---------------------------------------------------------+\n');
    fprintf('|  THRUST = %4.0f N                                        |\n', F);
    fprintf('+----------------------------+------------+---------------+\n');
    fprintf('|  Parameter                 |  N2O (ox)  |  Ethanol (f)  |\n');
    fprintf('+----------------------------+------------+---------------+\n');
    fprintf('|  Mass flow total   [g/s]   | %8.3f   | %8.3f      |\n', mdot_ox_tot*1e3, mdot_f_tot*1e3);
    fprintf('|  Mass flow/element [g/s]   | %8.3f   | %8.3f      |\n', mdot_ox_el*1e3,  mdot_f_el*1e3);
    fprintf('|  Injection dP      [bar]   | %8.3f   | %8.3f      |\n', dP_ox/1e5,       dP_f/1e5);
    fprintf('|  Orifice diameter  [mm]    | %8.3f   | %8.3f      |\n', d_or_ox*1e3,     d_or_f*1e3);
    fprintf('|  Swirl chamber D   [mm]    | %8.3f   | %8.3f      |\n', D_s_ox*1e3,      D_s_f*1e3);
    fprintf('|  Swirl chamber L   [mm]    | %8.3f   | %8.3f      |\n', L_s_ox*1e3,      L_s_f*1e3);
    fprintf('|  Slots n x w x h  [mm]    | %dx%.2fx%.2f | %dx%.2fx%.2f   |\n', ...
            n_slots_ox, w_sl_ox*1e3, h_sl_ox*1e3, ...
            n_slots_f,  w_sl_f*1e3,  h_sl_f*1e3);
    fprintf('|  Spray half-angle  [deg]   | %8.1f   | %8.1f      |\n', alpha_ox_deg, alpha_f_deg);
    fprintf('|  Injection vel.    [m/s]   | %8.2f   | %8.2f      |\n', v_ox, v_f);
    fprintf('|  SMD (preliminary) [um]    | %8.1f   | %8.1f      |\n', SMD_ox*1e6, SMD_f*1e6);
    fprintf('|  Weber number      [-]     | %8.0f   | %8.0f      |\n', We_ox, We_f);
    fprintf('|  Reynolds number   [-]     | %8.0f   | %8.0f      |\n', Re_ox, Re_f);
    fprintf('+----------------------------+------------+---------------+\n');
    fprintf('|  Recess length    [mm] : %-8.3f                        |\n', L_rec*1e3);
    fprintf('|  Outer body diam. [mm] : %-8.3f                        |\n', D_outer*1e3);
    if We_ox > 100
        fprintf('|  OK  We_ox > 100 -- secondary atomisation active       |\n');
    else
        fprintf('|  !!  We_ox < 100 -- increase dP or check design        |\n');
    end
    if min([d_or_ox, d_or_f])*1e3 < 0.5
        fprintf('|  !!  Orifice < 0.5 mm -- may need EDM to manufacture   |\n');
    else
        fprintf('|  OK  Orifices > 0.5 mm -- standard CNC drill feasible  |\n');
    end
    fprintf('+---------------------------------------------------------+\n\n');

end  % end thrust loop

% =========================================================================
%  SECTION 4 -- PARAMETRIC PLOTS
% =========================================================================

figure('Name','Coaxial Swirl Injector -- Parametric Study', ...
       'Color','w','Position',[60 40 1300 820]);

T_vec = THRUST_LEVELS_N;

% Plot 1: Mass flows vs thrust
subplot(3,3,1);
bar(T_vec, [res_mdot_ox; res_mdot_f]', 'grouped');
xlabel('Thrust [N]'); ylabel('Mass flow [g/s]');
title('Propellant mass flows vs thrust');
legend('N_2O (ox)','Ethanol (f)','Location','NW');
grid on; set(gca,'XTick',T_vec);

% Plot 2: Orifice diameters vs thrust
subplot(3,3,2);
plot(T_vec, res_d_or_ox, 'b-o', 'LineWidth',2,'MarkerSize',7); hold on;
plot(T_vec, res_d_or_f,  'g-s', 'LineWidth',2,'MarkerSize',7);
yline(0.5,'r--','0.5 mm CNC limit','LabelHorizontalAlignment','right');
xlabel('Thrust [N]'); ylabel('Orifice diameter [mm]');
title('Orifice diameters vs thrust');
legend('N_2O','Ethanol','Location','NW');
grid on; set(gca,'XTick',T_vec);

% Plot 3: Swirl chamber diameters vs thrust
subplot(3,3,3);
plot(T_vec, res_Ds_ox, 'b-o', 'LineWidth',2,'MarkerSize',7); hold on;
plot(T_vec, res_Ds_f,  'g-s', 'LineWidth',2,'MarkerSize',7);
xlabel('Thrust [N]'); ylabel('D_s [mm]');
title('Swirl chamber diameters vs thrust');
legend('N_2O swirl D','Ethanol swirl D','Location','NW');
grid on; set(gca,'XTick',T_vec);

% Plot 4: SMD vs thrust
subplot(3,3,4);
plot(T_vec, res_SMD_ox, 'b-o', 'LineWidth',2,'MarkerSize',7); hold on;
plot(T_vec, res_SMD_f,  'g-s', 'LineWidth',2,'MarkerSize',7);
yline(100,'r--','100 um target','LabelHorizontalAlignment','left');
xlabel('Thrust [N]'); ylabel('SMD [um]');
title('Sauter Mean Diameter (droplet size)');
legend('N_2O','Ethanol','Location','NE');
grid on; set(gca,'XTick',T_vec);

% Plot 5: Injection velocities vs thrust
subplot(3,3,5);
plot(T_vec, res_v_ox, 'b-o', 'LineWidth',2,'MarkerSize',7); hold on;
plot(T_vec, res_v_f,  'g-s', 'LineWidth',2,'MarkerSize',7);
xlabel('Thrust [N]'); ylabel('Injection velocity [m/s]');
title('Injection velocities vs thrust');
legend('N_2O','Ethanol','Location','NW');
grid on; set(gca,'XTick',T_vec);

% Plot 6: Weber numbers vs thrust (log scale)
subplot(3,3,6);
semilogy(T_vec, res_We_ox, 'b-o', 'LineWidth',2,'MarkerSize',7); hold on;
semilogy(T_vec, res_We_f,  'g-s', 'LineWidth',2,'MarkerSize',7);
yline(100,'r--','We=100 onset','LabelHorizontalAlignment','left');
xlabel('Thrust [N]'); ylabel('Weber number (log)');
title('Weber numbers (atomisation regime)');
legend('N_2O','Ethanol','Location','NW');
grid on; set(gca,'XTick',T_vec);

% Plot 7: Spray angle vs geometric swirl number (design space)
subplot(3,3,7);
A_sweep     = linspace(0.5, 5.5, 300);
Cd_sweep    = 1 ./ sqrt(1 + A_sweep.^2);
alpha_sweep = rad2deg(atan(sqrt(1 - Cd_sweep.^2) ./ Cd_sweep));
plot(A_sweep, alpha_sweep*2, 'k-', 'LineWidth',1.5); hold on;
xline(A_geo_ox,'b--',sprintf('ox %.1f->%.1f deg', A_geo_ox, 2*alpha_ox_deg), ...
      'LabelOrientation','horizontal','Color','b');
xline(A_geo_f, 'g--',sprintf('f  %.1f->%.1f deg', A_geo_f,  2*alpha_f_deg), ...
      'LabelOrientation','horizontal','Color','g');
xlabel('Geometric swirl number A_{geo}');
ylabel('Full cone spray angle [deg]');
title('Spray angle vs swirl number');
grid on; xlim([0.5 5.5]);

% Plot 8: SMD vs dP (sensitivity, at lowest thrust level)
subplot(3,3,8);
dP_sweep     = linspace(0.5e5, 15e5, 300);
F_ref        = THRUST_LEVELS_N(1);
mdot_ox_ref  = F_ref / (Isp_s*g0) * MR/(1+MR) / N_elements;
mdot_f_ref   = F_ref / (Isp_s*g0) * 1 /(1+MR) / N_elements;
SMD_ox_sw    = 2.25 * sigma_ox^0.25 * mu_ox^0.25 * mdot_ox_ref^0.25 ...
               * dP_sweep.^(-0.5) * rho_ox^(-0.25) * 1e6;
SMD_f_sw     = 2.25 * sigma_f^0.25  * mu_f^0.25  * mdot_f_ref^0.25  ...
               * dP_sweep.^(-0.5) * rho_f^(-0.25)  * 1e6;
plot(dP_sweep/1e5, SMD_ox_sw, 'b-', 'LineWidth',2); hold on;
plot(dP_sweep/1e5, SMD_f_sw,  'g-', 'LineWidth',2);
xline(dP_ox/1e5,'b--',sprintf('dP_ox=%.0f bar',dP_ox/1e5),'LabelOrientation','horizontal');
xline(dP_f/1e5, 'g--',sprintf('dP_f =%.0f bar',dP_f/1e5), 'LabelOrientation','horizontal');
yline(100,'r--','100 um','LabelHorizontalAlignment','right');
xlabel('dP [bar]'); ylabel('SMD [um]');
title(sprintf('SMD vs dP  (F = %d N)', F_ref));
legend('N_2O','Ethanol','Location','NE'); grid on;

% Plot 9: Orifice size vs dP (manufacturability)
subplot(3,3,9);
A_or_ox_sw = mdot_ox_ref ./ (Cd_ox * sqrt(2 * rho_ox * dP_sweep));
A_or_f_sw  = mdot_f_ref  ./ (Cd_f  * sqrt(2 * rho_f  * dP_sweep));
d_ox_sw    = sqrt(4 * A_or_ox_sw / pi) * 1e3;
d_f_sw     = sqrt(4 * A_or_f_sw  / pi) * 1e3;
plot(dP_sweep/1e5, d_ox_sw, 'b-', 'LineWidth',2); hold on;
plot(dP_sweep/1e5, d_f_sw,  'g-', 'LineWidth',2);
xline(dP_ox/1e5,'b--'); xline(dP_f/1e5,'g--');
yline(0.5,'r--','0.5 mm min drill','LabelHorizontalAlignment','right');
xlabel('dP [bar]'); ylabel('Orifice diameter [mm]');
title(sprintf('Orifice size vs dP  (F = %d N)', F_ref));
legend('N_2O','Ethanol','Location','NE'); grid on;

sgtitle({'Coaxial Swirl Injector -- N_2O / Ethanol', ...
         'University Rocketry Team -- Parametric Study'}, ...
        'FontSize',13,'FontWeight','bold');

% =========================================================================
%  SECTION 5 -- DESIGN NOTES FOR THE TEAM
% =========================================================================

fprintf('=================================================================\n');
fprintf('  DESIGN GUIDANCE FOR YOUR TEAM\n');
fprintf('=================================================================\n');
fprintf('\n  SPRAY ANGLES\n');
fprintf('    Outer (N2O) full cone : %.1f deg\n', 2*alpha_ox_deg);
fprintf('    Inner (EtOH) full cone: %.1f deg\n', 2*alpha_f_deg);
fprintf('    For good mixing the outer cone should be wider than the inner\n');
fprintf('    so N2O wraps around the ethanol jet. Adjust A_geo_ox and\n');
fprintf('    A_geo_f in Section 1 to change both angles independently.\n');
fprintf('\n  MANUFACTURING LIMITS\n');
fprintf('    Minimum drill dia. for hobby CNC : ~0.5 mm\n');
fprintf('    Minimum EDM                      : ~0.1 mm\n');
fprintf('    If your orifice < 0.5 mm at the chosen thrust level:\n');
fprintf('      (a) Increase dP_ox_frac or dP_f_frac, OR\n');
fprintf('      (b) Increase N_elements (multiple holes share the flow)\n');
fprintf('\n  ATOMISATION TARGETS\n');
fprintf('    SMD < 100 um is acceptable for small liquid rockets.\n');
fprintf('    SMD < 50  um is excellent -- harder at low thrust.\n');
fprintf('    Weber number > 100 confirms secondary breakup is active.\n');
fprintf('\n  RECESS ZONE\n');
fprintf('    L_rec ~ 0.5-1.5 x D_s_ox is recommended.\n');
fprintf('    The recess promotes pre-mixing before the chamber.\n');
fprintf('    Too long increases flashback risk.\n');
fprintf('\n  SUGGESTED NEXT STEPS\n');
fprintf('    1.  Pick your target thrust from the tables above.\n');
fprintf('    2.  Confirm all orifice diameters are manufacturable.\n');
fprintf('    3.  Confirm We > 100 and SMD < 100 um.\n');
fprintf('    4.  Size the combustion chamber (L* method).\n');
fprintf('    5.  Cold-flow test with water to validate spray pattern.\n');
fprintf('    6.  CFD or shadowgraph imaging to measure spray angles.\n');
fprintf('=================================================================\n');
