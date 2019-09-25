close all;
I= imread('image10.png');
%I rgb2gray(RGB);
I1 = imtophat(I, strel('disk', 10));

figure, imshow(I1);
I2 = imadjust(I1);
figure,imshow(I2);
level = graythresh(I2);
BW = im2bw(I2,level);
figure,imshow(BW);
C=~BW;
figure,imshow(C);
D = ~bwdist(C);

D(C) = -Inf;

L = watershed(D);
Wi=label2rgb(L,'hot','w');
figure,imshow(Wi);
im=I;
