close all;
I1=imread('image2.jpeg');
%I1=rgb2gray(I);
imshow(I1);
figure, imhist(I1);
T2 = graythresh(I1);
it2= im2bw(I1,T2);
figure,imshow(it2);
