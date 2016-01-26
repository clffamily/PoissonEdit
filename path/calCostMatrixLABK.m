function [ costMatrix ] = calCostMatrixLABK( simg, timg, maskMatrix, srow, scol, k)

%source image has the same size as maskMatrix

[simgl, simga, simgb] = decomposeLAB(simg);
[timgl, timga, timgb] = decomposeLAB(timg);

costMatrix = maskMatrix;

rows = size(costMatrix, 1);
cols = size(costMatrix, 2);

for i = 1 : rows
    for j = 1:cols
        if costMatrix(i,j) ~= -1
            cost_a_channel = (timga(srow+i-1, scol+j-1) - simga(i,j) - k).^2;
            cost_b_channel = (timgb(srow+i-1, scol+j-1) - simgb(i,j) - k).^2;
            costMatrix(i,j) = cost_a_channel + cost_b_channel;
        end
    end
end

end


