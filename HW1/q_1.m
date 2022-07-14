n = [0:20];
x = stepseq(0,0,20) - stepseq(10,0,20);
h = (0.9).^n .* stepseq(0,0,20);
%a
%x
stem(n,x);
title('q1-a-x');
xlabel('n');
ylabel('x[n]');
%h
stem(n,h);
title('q1-a-h');
xlabel('n');
ylabel('h[n]');
%b
y = conv(x,h);
%c
stem(y);
title('q1-b');
xlabel('n');
ylabel('y[n]');
