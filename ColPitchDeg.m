function col_pitch_deg = ColPitchDeg( theta_not, theta_one, xi )
%COLPITCHDEG Calculates the elemental collective pitch

col_pitch_deg = theta_not + xi * theta_one;

end

