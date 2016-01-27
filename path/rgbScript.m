% ----------------------------------
% This script automates the RGB process listed in the drag and drop paper. 

% It loops in 
%   1. calculating k
%   2. find the shortest path
% until maxItr or the k converges.
% ----------------------------------

% These are parameters to specify.
% xPara = 110;
% yPara = 300;
maxItr = 5;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rgbItr = 1;

% First para is row(Y)
previousK = calAvgK( simg, timg, boundaryPts, targetOffsetY, targetOffsetX); 

% First para is row(Y), maskMatrix is from data.m
costMatrix = calCostMatrixRGBK( simg, timg, maskMatrix, targetOffsetY, targetOffsetX, previousK); 

% Find the shortest path in RGB graph path.
findShortestPath; % Remember to specify the cost matrix paramters in the script.

for i = 1 : maxItr
    currentK = calAvgK( simg, timg, mat, targetOffsetY, targetOffsetX); 
    if previousK == currentK
        break
    end
    costMatrix = calCostMatrixRGBK( simg, timg, maskMatrix, targetOffsetY, targetOffsetX, currentK);
    previousK = currentK;
    findShortestPath;
    rgbItr = rgbItr + 1;
end

disp(sprintf('Totally running rgb interations for %g times.', rgbItr));

createShortestPathMask;
