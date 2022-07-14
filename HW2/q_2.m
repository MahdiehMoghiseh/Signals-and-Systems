%for x
a = [1,-1];
%for y
b = 1;
%a
f1 = 5.*(stepseq(0,0,40)-stepseq(20,0,40));
ya = filter(a,b,f1);
figure(1)
stem(ya);
title('q2-a');
xlabel('n');
ylabel('y[n]');
%b
n = [0:40];
f2 = sin(n*pi/25).*(stepseq(0,0,40)-stepseq(100,0,40));
yb = filter(a,b,f2);
figure(2)
stem(yb);
title('q2-b');
xlabel('n');
ylabel('y[n]');