%These are three parameters for input.
separateRow = 108;
separateCol = 334;
colEndBoundary = 373;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rows = size(costMatrix, 1); %446
cols = size(costMatrix, 2); %350

startingPt = (separateRow - 2) * cols + separateCol; %72390
endPt = startingPt + cols; %72740;

shortestMatrix = constructPathGraph( costMatrix, separateRow, separateCol);

[dist,path,pred] = graphshortestpath(shortestMatrix,startingPt,endPt);
shortestDist = dist + shortestMatrix(endPt, startingPt);
shortestPath = path;

for i = separateCol : colEndBoundary
    startingPt = startingPt + 1;
    endPt = endPt + 1;
    [dist,path,pred] = graphshortestpath(shortestMatrix,startingPt,endPt);
    dist = dist + shortestMatrix(endPt, startingPt);
    if dist < shortestDist
        shortestDist = dist;
        shortestPath = path;
    end
end

pathPlot = zeros(1, numel(costMatrix));
pathPlot(uint32(shortestPath)) = 1;
mat = vec2mat(pathPlot,cols);