function [ costMatrix ] = calCostMatrixLAB( simg, timg, maskMatrix, srow, scol)

%source image has the same size as maskMatrix

[simgl, simga, simgb] = decomposeLAB(simg);
[timgl, timga, timgb] = decomposeLAB(timg);

costMatrix = maskMatrix;
zeroAppro = 1e-10;

rows = size(costMatrix, 1);
cols = size(costMatrix, 2);

for i = 1 : rows
    for j = 1:cols
        if costMatrix(i,j) ~= -1
            cost_a_channel = (simga(i,j) - timga(srow+i-1, scol+j-1)).^2;
            cost_b_channel = (simgb(i,j) - timgb(srow+i-1, scol+j-1)).^2;
            costMatrix(i,j) = cost_a_channel + cost_b_channel + zeroAppro;
        end
    end
end

end

