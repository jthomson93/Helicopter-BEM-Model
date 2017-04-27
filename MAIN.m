clear all;
%------------------------------------------
% SIMULATION INPUTS
%------------------------------------------
BLADES = 4;
RADIUS = 9.144;
ROOT_BLADE_PITCH_ANGLE = 17.5;
TWIST_RANGE = -10;
BLADE_CUTOUT_RATIO = 0.15;
SOLIDITY = 0.08488;
TIP_MACH = 0.6;
%------------------------------------------
% OPTIONAL INPUTS [LEAVE '0'
%------------------------------------------
CHORD = 0;
CHORD_ONE = 0;
%------------------------------------------
% SIMULATION ISETTINGS
%------------------------------------------

BLADE_ELEMENTS = 10;




results = BEM_SIMULATION(BLADES,RADIUS,BLADE_ELEMENTS,TIP_MACH,TWIST_RANGE,BLADE_CUTOUT_RATIO,SOLIDITY,ROOT_BLADE_PITCH_ANGLE, CHORD, CHORD_ONE)