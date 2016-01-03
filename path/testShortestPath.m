% costMatrix = [ ...
%     6 2 2 2 2 6 6 
%     2 2 6 6 2 2 6 
%     2 6 -1 -1 6 2 6
%     2 6 -1 -1 -1 4 1
%     2 9 2 2 2 2 6 
%     2 6 2 6 6 6 6 
%     1 1 1 6 6 6 6 ];

%These are three parameters for input.
separateRow = 108;
separateCol = 334;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rows = size(costMatrix, 1); 
cols = size(costMatrix, 2); 

startingPt = (separateRow - 2) * cols + separateCol; %72390
endPt = startingPt + cols; %72740;

shortestMatrix = constructPathGraph( costMatrix, separateRow, separateCol);

[dist,path,pred] = graphshortestpath(shortestMatrix,startingPt,endPt);

pathPlot = zeros(1, numel(costMatrix));
pathPlot(uint32(path)) = 1;
mat = vec2mat(pathPlot,cols);
drawBoundary;
