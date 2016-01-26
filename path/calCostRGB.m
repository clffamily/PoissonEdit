% ----------------------------------
% This script calls the calCostMatrixRGB function. 
% The ouput will be the cost matrix.
% ----------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%simg = double(imread('../images/cube/cube.jpg', 'JPG'));
%timg = double(imread('../images/cube/wall.jpg', 'JPG'));

%first para is row(Y)
costMatrix = calCostMatrixRGB( simg, timg, maskMatrix, targetOffsetY, targetOffsetX, k); 
