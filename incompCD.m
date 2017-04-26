function cd = incompCD( AD_deg, local_mach,alpha)
%INCOMPCD Calculate the compressible cd


    if alpha > AD_deg
        if local_mach < 0.1

            cd = 0.0081 + (((-350 * alpha) + (396 * (alpha^2)) - (63.3 * (alpha^3)) + (3.66 * (alpha^4))) * (10^(-6)));

        end

        if  local_mach > 0.1 && local_mach < 0.725
            cdi = 0.0081 + (((-350 * alpha) + (396 * (alpha^2)) - (63.3 * (alpha^3)) + (3.66 * (alpha^4))) * (10^(-6)));
            cd = real(cdi) + 0.00066 * (alpha - AD_deg)^(2.54);
        end

        if local_mach > 0.725
            cdi = 0.0081 + (((-350 * alpha) + (396 * (alpha^2)) - (63.3 * (alpha^3)) + (3.66 * (alpha^4))) * (10^(-6)));
            cd = cdi + 0.00035 * (alpha - AD_deg)^2.54 + 21 * (local_mach - 0.725)^3.2;

        end
    else
        cd = 0.0081 + (((-350 * alpha) + (396 * (alpha^2)) - (63.3 * (alpha^3)) + (3.66 * (alpha^4))) * (10^(-6)));
    end

        cd = real(cd);

end

