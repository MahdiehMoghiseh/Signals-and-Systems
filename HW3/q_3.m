n = 1:60;
n2 = -29:30;
% first signal
x1 = zeros(size(n));
for k=1:length(n)
    if (k>0 && k<4)
        x1(k) = 1;
    end
end
f1 = fou(x1,n);
% magnitude1
figure(1)
stem(n2,abs(f1));
title('q3-f1-abs');
% phase1
figure(2)
stem(n2,angle(f1));
title('q3-f1-angle');
%second signal
x2 = zeros(size(n));
for k=1:length(n)
    x2(k) = (sin(k)/k*pi)*(sin(2*k)/k*pi);
end
f2 = fou(x2,n);
% magnitude2
figure(3)
stem(n2,abs(f2));
title('q3-f2-abs');
% phase2
figure(4)
stem(n2,angle(f2));
title('q3-f2-angle');
%third signal
x3 = zeros(size(n));
for k=1:length(n)
    x3(k) = sin(100*k)*exp(-j*pi*k);
end
f3 = fou(x3,n);
% magnitude3
figure(5)
stem(n2,abs(f3));
title('q3-f3-abs');
% phase3
figure(6)
stem(n2,angle(f3));
title('q3-f3-angle');