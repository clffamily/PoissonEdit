function [ k ] = calAvgK( simg, timg, boundaryMask, srow, scol)
% Given the boundary mask
% Ouput the k value.

[rowsBoundary, colsBoundary] = find(boundaryMask == 1);

[simgr, simgg, simgb] = decomposeRGB(simg);
[timgr, timgg, timgb] = decomposeRGB(timg);

sumCost = 0;
totalPts = size(rowsBoundary,1);

for i = 1 : totalPts
    rowNum = rowsBoundary(i);
    colNum = colsBoundary(i);
      
    cost_r_channel = (timgr(srow+rowNum-1, scol+colNum-1) - simgr(rowNum,colNum));
    cost_g_channel = (timgg(srow+rowNum-1, scol+colNum-1) - simgg(rowNum,colNum));
    cost_b_channel = (timgb(srow+rowNum-1, scol+colNum-1) - simgb(rowNum,colNum));
    sumCost = cost_r_channel + cost_g_channel + cost_b_channel;
            
end

k = sumCost / totalPts;
disp(sprintf('k = %g', k));
%disp('the value of k is ');
%disp(k)
end

