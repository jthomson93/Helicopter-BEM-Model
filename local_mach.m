function Mi = local_mach( xi, Omega, Radius, a )
%LOCAL_MACH This function calculates the local mach number at the specified
% blade element.



Mi = xi * Omega * Radius / a;

end

