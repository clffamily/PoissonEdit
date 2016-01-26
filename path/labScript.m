%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% These are parameters to specify.
simg = double(imread('../images/cube/cube.jpg', 'JPG'));
timg = double(imread('../images/cube/wall.jpg', 'JPG'));
xPara = 110;
yPara = 300;
maxItr = 5;

% Remember to specify the paramters in the script.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countItr = 1;

% First para is row(Y)
previousK = calAvgKLAB( simg, timg, boundaryPts, yPara, xPara); 

% First para is row(Y), maskMatrix is from data.m
costMatrix = calCostMatrixLAB( simg, timg, maskMatrix, yPara, xPara, previousK); 

% Find the shortest path in RGB graph path.
findShortestPath; % Remember to specify the paramters in the script.

for i = 1 : maxItr
    currentK = calAvgKLAB( simg, timg, mat, yPara, xPara); 
    if previousK == currentK
        break
    end
    costMatrix = calCostMatrixLAB( simg, timg, maskMatrix, yPara, xPara, currentK);
    previousK = currentK;
    findShortestPath;
    countItr = countItr + 1;
end

disp(sprintf('Totally running rgb interations for %g times.', countItr));
