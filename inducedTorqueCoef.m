function induced_prof_torque = profTorqueCoef( cqTorq, CQIB, Nbe, B )
%PROFTORQUECOEF Calculate the sum of the torque coefficients

middleTorque = cqTorq(2:(Nbe));
middleTorque = sum(middleTorque);
prof_torque_one = (0.085 / 2) * (cqTorq(1) + cqTorq(Nbe+1) + 2 * middleTorque);

prof_torque_two = (0.5) * (CQIB + cqTorq(Nbe+1)) * (1 - B);

induced_prof_torque = prof_torque_one - prof_torque_two;
end

