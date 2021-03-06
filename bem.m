clear all;

%---- NUMBER OF BLADES ----

Blade_Elements = 10;                 % Must be greater than 5
Nbe = check_nbe(Blade_Elements);    % Error Checking: Ensure nbe > 5

%---- BLADE CONSTANTS ----
Blades = 4;
Radius = 9.144;
Theta_not = 17.5;
Theta_one = -10;
x_not = 0.15;
NACA = 0012;
RPM = 207;
Omega = rpm2rad(RPM);
rho = 1.2256;
a = 340;
Area = 262.68;

% ---- CHARACTARISTICS FROM TABLE ----
solidity = 0.08488;
Chord = 0;              % OPTIONAL: Leave '0' if not specified
Chord_one = 0;           % OPTIONAL: Leave '0' if not specified

%---- INITIALISATION ----

initalisation;

% ==== MAIN CALCULATION ====

for index = 1:(Nbe+1)
    r(index) = radial_location(Radius, x_not, Nbe, index);
    x(index) = xi(r(index), Radius);
    c(index) = chord_length(x(index), solidity, Radius, Blades, Chord, Chord_one);
    M(index) = local_mach(x(index),Omega,Radius,a);
    A_deg(index) = lift_curve_ai(M(index));
    A_rad(index) = ADeg2Rad(A_deg(index));
    Col_deg(index) = ColPitchDeg(Theta_not,Theta_one,x(index));
    Col_rad(index) = ColDeg2rad(Col_deg(index));
    velocity_induced(index) = induced_velocity(Omega,A_rad(index),Blades,c(index),Col_rad(index),r(index));
    inflow(index) = inflow_phi(velocity_induced(index),Omega,r(index));
    AoA_Rad(index) = AoA_rad(Col_rad(index),inflow(index));
    AoA_Deg(index) = aoaRad2Deg(AoA_Rad(index));
    CL(index) = AoA2CL(A_rad(index),AoA_Rad(index));
    AD_deg(index) = drag_divergence(M(index));
    AD_rad(index) = AD_deg(index) * (pi/180);
    CD_incomp(index) = incompCD( AD_deg(index), M(index),AoA_Deg(index));
    Thrust(index) = element_thrust(Blades,CL(index),c(index),x(index),Radius);
    TipCT = trapz(x,Thrust);
    B = TipLossFactor(TipCT,Blades);
    CTB = element_thrust(Blades,CL(index),c(index),B,Radius);
    CT = TipCT - (0.5 * (Thrust(index) + CTB)) * (1 - B);
    profile_torque(index) = profileTorque(Blades,c(index),CD_incomp(index),x(index),Radius);
    
    if index == (Nbe + 1)
        CQ = profTorqueCoef(profile_torque,Nbe);
    end
    
    induced_Torque(index) = InducedTorque(Blades,c(index),CL(index),inflow(index),x(index),Radius);
    CQIB = InducedTorque(Blades,c(index),CL(index),inflow(index),B,Radius);
    
    if index == (Nbe + 1)
        CQI = inducedTorqueCoef(induced_Torque,CQIB,Nbe,B);
    end
    
end



    