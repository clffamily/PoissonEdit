function [ shortestMatrix ] = constructPathGraph( costMatrix, separateRowNum, separateColNum)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

rows = size(costMatrix, 1);
cols = size(costMatrix, 2);
total_pts = rows * cols;


graphMatrix = sparse(total_pts, total_pts);

for i = 1 : rows
    for j = 1 : cols
        if costMatrix(i,j) ~= (-1)
            pixel_no = cols * (i-1) + j;
        
            % Construct the path going upwards the matrix
            if i > 1
                if (costMatrix(i-1,j) ~= (-1)) %&& i ~= separateRowNum && j < separateColNum
                        %graphMatrix(pixel_no - rows, pixel_no) = costMatrix(i,j);
                        graphMatrix(pixel_no, pixel_no - cols) = costMatrix(i-1,j);
                end                                 
            end 
           
            % Construct the path going downwards the matrix
            if i < rows
                if (costMatrix(i+1,j) ~= (-1)) && ((i+1) ~= separateRowNum || j < separateColNum)
                    %graphMatrix(pixel_no + rows, pixel_no) = costMatrix(i,j);
                    graphMatrix(pixel_no, pixel_no + cols) = costMatrix(i+1,j);                 
                end   
            end
            
            % Construct the path going left in the matrix
            if j > 1
                if (costMatrix(i,j-1) ~= (-1))
                    %graphMatrix(pixel_no - 1, pixel_no) = costMatrix(i,j);
                    graphMatrix(pixel_no, pixel_no - 1) = costMatrix(i,j-1);   
                end                                        
            end 
            
            % Construct the path going right in the matrix
            if j < cols
                if (costMatrix(i,j+1) ~= (-1))
                    %graphMatrix(pixel_no + 1, pixel_no) = costMatrix(i,j);
                    graphMatrix(pixel_no, pixel_no + 1) = costMatrix(i,j+1);       
                end                                        
            end 
            
        end
    end   
end

shortestMatrix = graphMatrix;


