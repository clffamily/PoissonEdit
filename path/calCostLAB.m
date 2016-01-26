% ----------------------------------
% This script calls the calCostMatrixLAB function. 
% The ouput will be the cost matrix.
% ----------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% simg = double(imread('../images/apple/apple.jpg', 'JPG'));
% timg = double(imread('../images/apple/table.jpg', 'JPG'));

%first para is row(Y)
costMatrix = calCostMatrixLAB( simg, timg, maskMatrix, targetOffsetY, targetOffsetX); 
imshow(costMatrix);
