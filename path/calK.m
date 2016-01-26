% ----------------------------------
% This script calculates the k constant.
% The ouput will be the cost matrix.
% ----------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%simg = double(imread('../images/cube/cube.jpg', 'JPG'));
%timg = double(imread('../images/cube/wall.jpg', 'JPG'));

k = calAvgK( simg, timg, boundaryPts, targetOffsetY, targetOffsetX); %first para is row(Y)
%k = calAvgK( simg, timg, mat, 80, 5); %first para is row(Y)