function ri = radial_location( Radius, x0, nbe, element_number)
%RADIAL_LOCATION This function calculates the radial location measured form
%the blade root.

delta_r = (Radius * (1 - x0)) / nbe;

ri = (Radius * x0) + delta_r * (element_number - 1);

end

