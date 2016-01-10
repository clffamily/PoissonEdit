%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% These are parameters to specify.
simg = double(imread('../images/qq/qq.jpg', 'JPG'));
timg = double(imread('../images/qq/background.jpg', 'JPG'));
xPara = 5;
yPara = 80;
maxItr = 5;

% Remember to specify the paramters in the script.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

count = 1;

% First para is row(Y)
previousK = calAvgK( simg, timg, boundaryPts, yPara, xPara); 

% First para is row(Y), maskMatrix is from data.m
costMatrix = calCostMatrixRGB( simg, timg, maskMatrix, yPara, xPara, previousK); 

% Find the shortest path in RGB graph path.
findShortestPath; % Remember to specify the paramters in the script.

for i = 1 : maxItr
    currentK = calAvgK( simg, timg, mat, yPara, xPara); 
    if previousK == currentK
        break
    end
    costMatrix = calCostMatrixRGB( simg, timg, maskMatrix, yPara, xPara, currentK);
    previousK = currentK;
    findShortestPath;
    count = count + 1;
end

disp(sprintf('Totally running rgb interations for %g times.', count));
