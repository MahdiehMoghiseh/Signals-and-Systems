function x = x(kmax,t)
x = zeros(size(kmax));
w0 = 2*pi/6;
for k=0:kmax
    x = 2.*abs(CK(k)).*cos(k.*w0.*t+angle(CK(k)))+x;
end 

