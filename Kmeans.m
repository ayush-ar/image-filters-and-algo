% Load in an input image
im = imread('image12.png');

% We also cast to a double array, because K-means requires it in matlab
imflat = double(reshape(im, size(im,1) * size(im,2), 3));


K = 3
[kIDs, kC] = kmeans(imflat, K, 'Display', 'iter', 'MaxIter', 150, 'Start', 'sample');

colormap = kC / 256; % Scale 0-1, since this is what matlab wants

% Reshape kIDs back into the original image shape
imout = reshape(uint8(kIDs), size(im,1), size(im,2));

imwrite(imout - 1, colormap, 'image6.jpg');