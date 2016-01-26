% ----------------------------------
% This script finds the shortest path based on cost matrix computed on calCostLAB(RGB).
% Find these parameters in cost matrix. Modify them before running.
% ----------------------------------

% separate row in cost matrix.
separateRow = 137;
% starting separate column in cost matrix.
separateCol = 272;
% ending separate column in cost matrix.
colEndBoundary = 277;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rows = size(costMatrix, 1); 
cols = size(costMatrix, 2); 

startingPt = (separateRow - 2) * cols + separateCol; 
endPt = startingPt + cols; 

shortestMatrix = constructPathGraph( costMatrix, separateRow, separateCol);

[dist,path,pred] = graphshortestpath(shortestMatrix,startingPt,endPt);
shortestDist = dist + shortestMatrix(endPt, startingPt);
shortestPath = path;
count = 1;

for i = separateCol : colEndBoundary -1
    startingPt = startingPt + 1;
    endPt = endPt + 1;
    [dist,path,pred] = graphshortestpath(shortestMatrix,startingPt,endPt);
    dist = dist + shortestMatrix(endPt, startingPt);
    if dist < shortestDist
        shortestDist = dist;
        shortestPath = path;
        count = count + 1;
    end
end

pathPlot = zeros(1, numel(costMatrix));
pathPlot(uint32(shortestPath)) = 1;
mat = vec2mat(pathPlot,cols);
drawBoundary;