T = 5;
t = 1:60;
t2 = -29:30;
x = zeros(size(t));
for k=1:length(t)
    x(k) = (abs(k)-1)*rectangularPulse(-2,2,k);
    if (mod(k,T)==0)
        x(k) = x(k)+x(2);
    end
end
fou = fouc(x,t);
% magnitude
figure(1)
stem(t2,abs(fou));
title('q4-x-abs');
% phase
figure(2)
stem(t2,angle(fou));
title('q4-x-angle');