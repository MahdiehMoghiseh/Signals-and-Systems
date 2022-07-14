t = -6:0.01:6;
kmax = [5,15,30];
figure(1)
plot(t,x(5,t));
title('kmax=5');
figure(2)
plot(t,x(15,t));
title('kmax=15');
figure(3)
plot(t,x(30,t));
title('kmax=30');