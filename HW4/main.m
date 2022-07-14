clc; clear;
%%%%%%%%%%% READ THE INPUT IMAGE %%%%%%%%%%%
img = imread('bengio.jpeg');
img2 = imread('leskovec.jpeg');
img3 = imread('andrew.jpeg');
img4 = imread('goodfellow.jpeg');
%%%%%%%%%%% DEFINE FILTERS %%%%%%%%%%%
horizontal_edge = [[-1,-1,-1];
                   [0,0,0];
                   [1,1,1]];
               
vertical_edge = [[-1,0,1];
                 [-1,0,1];
                 [-1,0,1]];
             
sharpening = [[0,-1,0];
              [-1,5,-1];
              [0,-1,0]];
          
sobel_horizontal = [[-1,-2,-1];
                    [0,0,0];
                    [1,2,1]];
sobel_vertical = [[-1,0,1];
                  [-2,0,2];
                  [-1,0,1]];
              
gaussian_5x5 = (1/273)*[[1,4,7,4,1];
                        [4,16,26,16,4];
                        [7,26,41,26,7];
                        [4,16,26,16,4];
                        [1,4,7,4,1]];
                    
averaging_7x7 = (1/49)*ones(7,7);
              
          
% concatening filters ot build the `filters` tensor
%filters = cat(3, horizontal_edge, vertical_edge);
%%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
%stride = 2;
%padding = 'same';
%image 1
output = conv2D(img,cat(3,gaussian_5x5),1,'valid');
output = uint8(output);

figure;
subplot(2,2,1);
imshow(img)
for i=1:size(output,3)
    subplot(2,2,1+i);
    imshow(output(:,:,i))
end
%image 2
output2 = conv2D(img2,cat(3, horizontal_edge, vertical_edge),2,'same');
output2 = uint8(output2);
figure;
subplot(2,2,1);
imshow(img2)
for i=1:size(output2,3)
    subplot(2,2,1+i);
    imshow(output2(:,:,i))
end
%image 3
output3 = conv2D(img3,cat(3, sharpening, sobel_vertical, sobel_horizontal),2,'same');
output3 = uint8(output3);
figure;
subplot(2,2,1);
imshow(img3)
for i=1:size(output3,3)
    subplot(2,2,1+i);
    imshow(output3(:,:,i))
end
%image 4
output4 = conv2D(img4,cat(3, averaging_7x7),3,'valid');
output4 = uint8(output4);
figure;
subplot(2,2,1);
imshow(img4)
for i=1:size(output4,3)
    subplot(2,2,1+i);
    imshow(output4(:,:,i))
end