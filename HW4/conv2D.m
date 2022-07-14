function [feature_map] = conv2D(img, filters, stride, padding)
noFilter = size(filters,3);
% kernel
f = size(filters,2);
kernel = zeros(f,f,noFilter);
for i=1:noFilter
    kernel(:,:,i) = filters(:,:,i);

% if our image is rgb
if (size(img,3)==3)
    img = rgb2gray(img);
end
%zero padding
w=size(img,2);
h=size(img,1);
if (strcmp(padding,'same'))
    img = padarray(img,[1 1],0);
end
p=(f-1)/2;
hout = floor((h-f)/stride+1);
wout = floor((w-f)/stride+1);
if(strcmp(padding,'same'))
    hout = ceil(h/stride);
    wout = ceil(w/stride);
end
feature_map = zeros(hout, wout, noFilter);

for j = 1:noFilter
    x=1;
    for row = 1:stride:h-f+1
        y=1;
        for col=1:stride:w-f+1
            local = img(row:row+f-1, col:col+f-1);
            conv = double(local) .* kernel(:,:,j);
            feature_map(x, y, j) = sum(conv, 'all');
            y=y+1;
        end
        x=x+1;
    end
end

end