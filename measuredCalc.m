function MCP= measuredCalc( DLx)
%MEASUREDCALC Calculates the measured power over calculated power for SI
%units.

 MCP = (2.39633 * 10^(-10))*DLx^5 - (4.12582 * (10 ^-8)) * DLx^4 +(3.2009 * 10^(-6))*DLx^3 - (1.81173*10^(-4))*DLx^2 + (7.07400 * 10 ^(-3)) * DLx + 0.941289;

end

