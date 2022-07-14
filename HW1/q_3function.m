function [conv,n] = q_3function(f,g,n1)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    conv = zeros(1,200);
    n = n1;
    for k1 = 1:n
        for k2 = 1:n
            conv(index) = conv(index) + f(k1)*f(k2);
        end
    end
end