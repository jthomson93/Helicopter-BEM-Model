function aoa = AoA_rad( colPitchRad, Inflow )
%AOA_DEG calculates the local angle of attack.


aoa = colPitchRad - Inflow;

end

