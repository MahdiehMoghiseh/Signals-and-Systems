%x[n]
n = [2:22];
x = impseq(0,0,20) + impseq(4,-20,0) - 2.* (stepseq(-3,0,20) - stepseq(3,0,20));
stem(n,x);
title('q2-x');
xlabel('n');
ylabel('x[n]');

%y[n]
for i = 2:22
    %check to be integer
    if (floor((i-1)/2)==ceil((i-1)/2))
        %y[i]
        y(i) = x(i) - x((i-1)/2);
    end
    
end

stem(y);
title('q2-y');
xlabel('n');
ylabel('y[n]');

%z[n]
z = exp(j*pi*n).*cos(pi*n/2).*x;
stem(z);
title('q2-z');
xlabel('n');
ylabel('z[n]');