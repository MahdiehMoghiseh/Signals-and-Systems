k = -300:300;
ck = CK(k);
% magnitude
figure(1)
stem(k,abs(ck));
title('q1-magnitude');
% phase
figure(2)
stem(k,angle(ck));
title('q1-phase');