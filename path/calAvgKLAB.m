% ---------------------------------
% This function is no longer needed.
% k is not needed for LAB channels.
% ---------------------------------

function [ k ] = calAvgKLAB( simg, timg, boundaryMask, srow, scol)
% Given the boundary mask
% Ouput the k value.

[rowsBoundary, colsBoundary] = find(boundaryMask == 1);

[simgl, simga, simgb] = decomposeLAB(simg);
[timgl, timga, timgb] = decomposeLAB(timg);

sumCost = 0;
totalPts = size(rowsBoundary,1);

for i = 1 : totalPts
    rowNum = rowsBoundary(i);
    colNum = colsBoundary(i);
      
    cost_a_channel = (timga(srow+rowNum-1, scol+colNum-1) - simga(rowNum,colNum));
    cost_b_channel = (timgb(srow+rowNum-1, scol+colNum-1) - simgb(rowNum,colNum));
    sumCost = cost_a_channel + cost_b_channel;
            
end

k = sumCost / totalPts;
disp(sprintf('k = %g', k));
%disp('the value of k is ');
%disp(k)
end

