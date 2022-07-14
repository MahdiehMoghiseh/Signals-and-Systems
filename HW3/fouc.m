function fou=fouc(x,t)
n = length(t);
fou = zeros(size(t));
for m=t
    fun = x(m) * exp(-j*2*pi*m/(n-1));
    fou(m) = integral(@(m) fun,-1*n/2,n/2,ArrayValued=true);
end
return;