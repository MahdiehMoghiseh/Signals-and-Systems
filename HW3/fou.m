function f = fou(x,k)
n = length(k);
f = zeros(size(k));
for m=k
    for i = 1:n
        f(m) = f(m) + x(i)*exp(-j*i*2*pi*m/(n-1));
    end
end
return;