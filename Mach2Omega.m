function omega = Mach2Omega( mach, a, radius )
%MACH2OMEGA This function converts the tip mach to angular velocity.

velocity = mach * a;

omega = velocity / radius;


end

