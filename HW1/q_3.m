n = [-100:100];
x1 = (1./(2.^(-1*n + 1))) .* (stepseq(-2,-100,100) - stepseq(2,-100,100));
% find x2
for i = 1:100
    if i>0 && i<7
        % assume -inf == -5
        for f = -5:i
            sum = (sin(2*f)+exp(j*pi*f)).*(stepseq(-3,0,f)-stepseq(5,0,f));
        end
    end
    x2 = sum;
end

y = q_3function(x1,x2,n);
subplot(1,1,1);
plot(y);
title('q3');