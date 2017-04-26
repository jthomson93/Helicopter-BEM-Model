function ci = chord_length(xi, solidity, Radius, blades, c0, c1)
%CHORD_LENGTH Calculates the chord length at the element, calculation
%methods may change based on the parameters available.

    if c0 == 0 && c1 == 0
        ci = (solidity * pi * Radius) / blades;
    else if c1 == 0       
        ci = c0;
    else
        ci = c0 + xi * c1;
        end
    end
    