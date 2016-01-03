% im = double(imread('../images/orange.tif', 'TIF'));
% figure;
% imshow(mat2gray(im));
% 
% iminsert = double(imread('../images/orange.tif', 'TIF'));
% figure;
% imshow(mat2gray(iminsert));

im = double(imread('../images/sky/sky.jpg', 'JPG'));
figure;
imshow(mat2gray(im));

iminsert = double(imread('../images/sky/kite2.jpg', 'JPG'));
imMask=uint8(imread('../images/sky/optimal_mask.jpg'));
figure;
imshow(mat2gray(iminsert));

[imr, img, imb] = decomposeRGB(im);
[imir, imig, imib] = decomposeRGB(iminsert);

boxSrc = [1 417 1 313 ];
posDest = [600 300];

imr = poissonSolverMask(imir, imr, boxSrc, posDest,imMask);
img = poissonSolverMask(imig, img, boxSrc, posDest,imMask);
imb = poissonSolverMask(imib, imb, boxSrc, posDest,imMask);

imnew = composeRGB(imr, img, imb);
imnew = uint8(imnew);
figure(100);
imshow(imnew);
imwrite(imnew, '../images/test001Result.jpg', 'JPG');
% poisson1(50, 51, 5);


% im = double(imread('../images/test001BW.tif', 'TIFF'));
% figure;
% imshow(mat2gray(im));