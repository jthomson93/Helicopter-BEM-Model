function indTorque = InducedTorque( blades, chord, CL, inflow, xi, Radius )
%INDUCEDTORQUE Calculate the elemental induced Torque coefficient

indTorque = (blades * chord * CL * sin(inflow) * xi^3)/(2 * pi * Radius);


end

