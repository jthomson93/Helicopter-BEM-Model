%------------------------------------------
% SIMULATION INPUTS
%------------------------------------------
BLADES = 4;
RADIUS = 9.144;
ROOT_BLADE_PITCH_ANGLE = 17.5;
TWIST_RANGE = -10;
BLADE_CUTOUT_RATIO = 0.15;
SOLIDITY = 10;

%------------------------------------------
% OPTIONAL INPUTS [LEAVE '0']
%------------------------------------------

%------------------------------------------
% SIMULATION ISETTINGS
%------------------------------------------

BLADE_ELEMENTS = 10




results = BEM_SIMULATION(BLADES,RADIUS,BLADE_ELEMENTS,0,TWIST_RANGE,BLADE_CUTOUT_RATIO,SOLIDITY,ROOT_BLADE_PITCH_ANGLE)