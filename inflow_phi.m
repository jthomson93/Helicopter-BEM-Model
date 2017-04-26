function flow = inflow_phi( induced_velocity, omega, r_index )
%INFLOW Calculates the local inflow angle.

flow = atan(induced_velocity/(omega * r_index));


end

