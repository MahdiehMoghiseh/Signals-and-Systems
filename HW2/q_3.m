n = -20:100;
%for x
a = 1;
%for y
b = [1,-1,0.9];
%a
figure(1)
impz(a,b,n);
%b
figure(2)
stepz(a,b,n);