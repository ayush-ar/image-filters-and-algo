% Read the image that have circles
i=imread('image14.jpg');
% show image
imshow(i)
% select max & min threshold of circles we want to detect
Rmin=10
Rmax=50;
% Apply Hough circular transform
[centersDark1, radiiDark1] = imfindcircles(i, [Rmin Rmax],'ObjectPolarity','dark','Sensitivity',0.92);
% show the detected circles by Red color --
 viscircles(centersDark1, radiiDark1,'LineStyle','--')