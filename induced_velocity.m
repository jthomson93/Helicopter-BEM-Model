function vi = induced_velocity( omega, a_rad, blades, chord, col_rad, ri )
%INDUCED_VELOCITY This calculates the local induced velocity at each of the
%blade element nodes.

vi = (omega * a_rad * blades * chord)/(16 * pi) * ( -1 + sqrt(1+(32 * pi * col_rad * ri)/(a_rad * blades * chord)));

end

