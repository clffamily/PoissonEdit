% ----------------------------------
% This script calls the calCostMatrixRGB function. 
% The ouput will be the cost matrix.
% ----------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%simg = double(imread('../images/cube/cube.jpg', 'JPG'));
%timg = double(imread('../images/cube/wall.jpg', 'JPG'));

k = calAvgK( simg, timg, boundaryPts, targetOffsetY, targetOffsetX);

%first para is row(Y)
costMatrix = calCostMatrixRGBK( simg, timg, maskMatrix, targetOffsetY, targetOffsetX, k); 
