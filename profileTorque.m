function profile_torque = profileTorque( blades, chord, CD, xi, Radius )
%PROFILETORQUE Calculates the profile torque on the aerofoil.

    profile_torque = (blades * chord * CD * xi^3)/(2 * pi * Radius);

end

