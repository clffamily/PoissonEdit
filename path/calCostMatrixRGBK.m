function [ costMatrix ] = calCostMatrixRGBK( simg, timg, maskMatrix, srow, scol, k)

%source image has the same size as maskMatrix

[simgr, simgg, simgb] = decomposeRGB(simg);
[timgr, timgg, timgb] = decomposeRGB(timg);

costMatrix = maskMatrix;

zeroAppro = 1e-20;

rows = size(costMatrix, 1);
cols = size(costMatrix, 2);

for i = 1 : rows
    for j = 1:cols
        if costMatrix(i,j) ~= -1
            cost_r_channel = (timgr(srow+i-1, scol+j-1) - simgr(i,j) ).^2;
            cost_g_channel = (timgg(srow+i-1, scol+j-1) - simgg(i,j) ).^2;
            cost_b_channel = (timgb(srow+i-1, scol+j-1) - simgb(i,j) ).^2;
            % costMatrix(i,j) = cost_r_channel + cost_g_channel + cost_b_channel + zeroAppro;
            costMatrix(i,j) = (sqrt(cost_r_channel + cost_g_channel + cost_b_channel) - k ).^2 + zeroAppro;
        end
    end
end

end

