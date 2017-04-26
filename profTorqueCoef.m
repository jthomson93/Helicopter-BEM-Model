function prof_torque = profTorqueCoef( cqTorq, Nbe )
%PROFTORQUECOEF Calculate the sum of the torque coefficients

middleTorque = cqTorq(2:(Nbe));
middleTorque = sum(middleTorque);
prof_torque = (0.085 / 2) * (cqTorq(1) + cqTorq(Nbe+1) + 2 * middleTorque);

end

