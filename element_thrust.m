function thrust = element_thrust( blade, cl, chord, xi, Radius )
%ELEMENT_THRUST Calculates the elemental thrust coefficient

thrust = (blade * cl * chord * xi^2)/(2 * pi * Radius);

end

