clear all;
%------------------------------------------
% SIMULATION INPUTS
%------------------------------------------
BLADES = 2;
RADIUS = 9.144;
% ROOT_BLADE_PITCH_ANGLE = 17.5;
TWIST_RANGE = -15;
BLADE_CUTOUT_RATIO = 0.15;
% SOLIDITY = 0.08488;
TIP_MACH = 0.6;
%------------------------------------------
% OPTIONAL INPUTS [LEAVE '0']
%------------------------------------------
CHORD = 0;
CHORD_ONE = 0;
%------------------------------------------
% SIMULATION ISETTINGS
%------------------------------------------

BLADE_ELEMENTS = 20;

%------------------------------------------
% TASK 5B SETTINGS
%------------------------------------------
solidity_range = [0.05, 0.075, 0.1, 0.2, 0.3];
PITCH_RANGE_START = 5;
PITCH_RANGE_END = 30;

% ---- LOCAL INIT ----

pitchrange = linspace(PITCH_RANGE_START,PITCH_RANGE_END,60);
ct_local = zeros(length(solidity_range),length(pitchrange));
cq_local = zeros(length(solidity_range),length(pitchrange));

% ---- SIMULATION LOOP ----

for i = 1:length(solidity_range)
    
    SOLIDITY = solidity_range(i);
    
    for j = 1:length(pitchrange)
    ROOT_BLADE_PITCH_ANGLE = pitchrange(j);
    results = BEM_SIMULATION(BLADES,RADIUS,BLADE_ELEMENTS,TIP_MACH,TWIST_RANGE,BLADE_CUTOUT_RATIO,SOLIDITY,ROOT_BLADE_PITCH_ANGLE, CHORD, CHORD_ONE);
    ct_local(i,j) = results(1,1);
    cq_local(i,j) = results(1,2);
    end
    
end

figure(1)
plot(cq_local(1,:),ct_local(1,:),cq_local(2,:),ct_local(2,:),cq_local(3,:),ct_local(3,:),cq_local(4,:),ct_local(4,:),cq_local(5,:),ct_local(5,:));
xlim([0.0, 0.04])
ylim([0.0, 0.18])
legend(num2str(solidity_range(:)));
