%aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
t1 = -10:10;
x1 = 2 - exp(1-j*pi*t1);
%imaginery part
xi = imag(x1);
%abs
yabs = abs(xi);
stem(t,yabs);
title('q4-a-abs');
%angle
yangle = angle(xi);
plot(yangle);
title('q4-a-angle');

%bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
w = -10*pi:10*pi;
x2 = (j*w)./(1+j*w);
%abs
y2abs = abs(x2);
stem(w,y2abs);
title('q4-b-abs');
%angle
y2angle = angle(x2);
plot(y2angle);
title('q4-b-angle');
