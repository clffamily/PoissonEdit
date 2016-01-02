imRGB = (imread('../images/segmentation/horse.jpg', 'JPG'));

imGray = rgb2gray(imRGB);
imshow(imGray);

mask = zeros(size(imGray));
mask(15:end-15,15:end-15) = 1;
figure, imshow(mask);
title('Initial Contour Location');

bw = activecontour(imGray,mask,1200,'edge');
figure, imshow(bw);
title('Segmented Image');