% ----------------------------------
% This script blends the source and target image.
% ----------------------------------

% This is the parameter for input. 
%   1 for user result, 
%   2 for optimal result.
fun = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%sourceImageWidthX = 300;
%sourceImageHeightY = 247;
%targetX = 750;
%targetY = 240;

%im = double(imread('../images/apple/table.jpg', 'JPG'));
%figure;
%imshow(mat2gray(im));

%iminsert = double(imread('../images/apple/apple.jpg', 'JPG'));
if fun == 1
    imMask = uint8(imread(strcat(sourceFolderPath, USER_MASK)));
else
    imMask = uint8(imread(strcat(targetFolderPath, OPTIMAL_MASK)));
end 

%figure;
%imshow(mat2gray(iminsert));
[imr, img, imb] = decomposeRGB(timg);
[imir, imig, imib] = decomposeRGB(simg);

boxSrc = [1 sourceImageWidthX 1 sourceImageHeightY];
posDest = [targetOffsetX targetOffsetY];

imr = poissonSolverMask(imir, imr, boxSrc, posDest, imMask);
img = poissonSolverMask(imig, img, boxSrc, posDest, imMask);
imb = poissonSolverMask(imib, imb, boxSrc, posDest, imMask);

imnew = composeRGB(imr, img, imb);
imnew = uint8(imnew);
%figure;
%imshow(imnew);
imwrite(imnew, '../images/Result.jpg', 'JPG'); % used as buffer.

if fun == 1
    imwrite(imnew, strcat(sourceFolderPath, USER_RESULT), 'JPG');
else
    imwrite(imnew, strcat(targetFolderPath, OPTIMAL_RESULT), 'JPG');
end 

% poisson1(50, 51, 5);

% im = double(imread('../images/test001BW.tif', 'TIFF'));
% figure;
% imshow(mat2gray(im));