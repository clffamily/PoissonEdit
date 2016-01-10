sourceImageWidthX = 700;
sourceImageHeightY = 431;
targetX = 580;
targetY = 850;

im = double(imread('../images/boat_RGB/beach.jpg', 'JPG'));
figure;
imshow(mat2gray(im));

iminsert = double(imread('../images/boat_RGB/boat.jpg', 'JPG'));
imMask=uint8(imread('../images/boat_RGB/optimal_mask.jpg'));
figure;
imshow(mat2gray(iminsert));

[imr, img, imb] = decomposeRGB(im);
[imir, imig, imib] = decomposeRGB(iminsert);

boxSrc = [1 sourceImageWidthX 1 sourceImageHeightY];
posDest = [targetX targetY];

imr = poissonSolverMask(imir, imr, boxSrc, posDest,imMask);
img = poissonSolverMask(imig, img, boxSrc, posDest,imMask);
imb = poissonSolverMask(imib, imb, boxSrc, posDest,imMask);

imnew = composeRGB(imr, img, imb);
imnew = uint8(imnew);
figure(100);
imshow(imnew);
imwrite(imnew, '../images/Result.jpg', 'JPG');
imwrite(imnew, '../images/boat_RGB/optimal_result.jpg', 'JPG');
% poisson1(50, 51, 5);


% im = double(imread('../images/test001BW.tif', 'TIFF'));
% figure;
% imshow(mat2gray(im));