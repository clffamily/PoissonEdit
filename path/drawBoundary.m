% ----------------------------------
% This script draws the optimal boundary in red.
% ----------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

costMatrix2 = costMatrix;
mat2 = ~mat;
costMatrix2(mat2 == 0) = 0;

imageNew = composeRGB(costMatrix, costMatrix2, costMatrix);
imshow(imageNew);
