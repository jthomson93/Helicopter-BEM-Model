function ai = lift_curve_ai( local_mach )
%LIFT_CURVE_AI This function calculates the lift curve slope at the local
%nodal length along the blade.

if local_mach < 0.75
    ai = (0.1 / sqrt(1 - local_mach^2)) - 0.01 * local_mach;
else if local_mach > 0.75
        ai = 0.677 * 0.744 * local_mach;
    end
end

end

