%--------------------------------------------------------------
% THIS SCRIPT INITALISES THE VARIABLES FOR USE
%--------------------------------------------------------------

r = zeros(1,Nbe+1);
x = zeros(1,Nbe+1);
c = zeros(1,Nbe+1);
M = zeros(1,Nbe+1);
A_deg = zeros(1,Nbe+1);
A_rad = zeros(1,Nbe+1);
Col_deg = zeros(1,Nbe+1);
Col_rad = zeros(1,Nbe+1);
velocity_induced = zeros(1,Nbe+1);
inflow = zeros(1,Nbe+1);
AoA_Deg = zeros(1,Nbe+1);
AoA_Rad = zeros(1,Nbe+1);
CL = zeros(1,Nbe+1);
AD_deg = zeros(1,Nbe+1);
AD_rad = zeros(1,Nbe+1);
CD_incomp = zeros(1,Nbe+1);
Thrust = zeros(1,Nbe+1);
TipCT = 0;
B = 0;
CT = 0;
profile_torque = zeros(1,Nbe+1);
CQ = 0;
induced_Torque = zeros(1,Nbe+1);