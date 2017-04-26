function B = TipLossFactor( CT, blades)
%TIPLOSSFACTOR Calculates the tip loss factor

    if CT < 0.006
        B = 1-(0.06/blades);
    else if CT > 0.006
        B = 1 - (sqrt(2.27 * CT - 0.01)/blades);
        end
    end


end

