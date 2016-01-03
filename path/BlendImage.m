% im = double(imread('../images/orange.tif', 'TIF'));
% figure;
% imshow(mat2gray(im));
% 
% iminsert = double(imread('../images/orange.tif', 'TIF'));
% figure;
% imshow(mat2gray(iminsert));

im = double(imread('../images/wood/beach.jpg', 'JPG'));
figure;
imshow(mat2gray(im));

iminsert = double(imread('../images/wood/wood.jpg', 'JPG'));
imMask=uint8(imread('../images/wood/optimal_mask.jpg'));
figure;
imshow(mat2gray(iminsert));

[imr, img, imb] = decomposeRGB(im);
[imir, imig, imib] = decomposeRGB(iminsert);

boxSrc = [1 400 1 275 ];
posDest = [1320 1710];

imr = poissonSolverMask(imir, imr, boxSrc, posDest,imMask);
img = poissonSolverMask(imig, img, boxSrc, posDest,imMask);
imb = poissonSolverMask(imib, imb, boxSrc, posDest,imMask);

imnew = composeRGB(imr, img, imb);
imnew = uint8(imnew);
figure(100);
imshow(imnew);
imwrite(imnew, '../images/Result.jpg', 'JPG');
% poisson1(50, 51, 5);


% im = double(imread('../images/test001BW.tif', 'TIFF'));
% figure;
% imshow(mat2gray(im));