sourceImageWidthX = 478;
sourceImageHeightY = 420;
targetX = 5;
targetY = 80;

im = double(imread('../images/qq/background.jpg', 'JPG'));
figure;
imshow(mat2gray(im));

iminsert = double(imread('../images/qq/qq.jpg', 'JPG'));
imMask=uint8(imread('../images/qq/optimal_mask.jpg'));
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
imwrite(imnew, '../images/qq/optimal_result.jpg', 'JPG');
% poisson1(50, 51, 5);


% im = double(imread('../images/test001BW.tif', 'TIFF'));
% figure;
% imshow(mat2gray(im));