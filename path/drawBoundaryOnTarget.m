
% ----------------------------------
% This script creates the mask of the shortest path found previously on findShortestPath.
% Write the mask into the targetFolderPath.
% ----------------------------------

% This is the parameter for input. 
%   1 for user result, 
%   2 for optimal result.
fun = 2;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if fun == 1
    im = double(imread(strcat(targetFolderPath, USER_RESULT), 'JPG'));
else
    im = double(imread(strcat(targetFolderPath, OPTIMAL_RESULT), 'JPG'));
end 


[ imr, img, imb ] = decomposeRGB( im );

targetRow = size(imr,1);
targetCol = size(imr,2);

sourceRow = size(mat2,1);
sourceCol = size(mat2,2);

newLineImage = zeros(targetRow,targetCol);

for i = 1 : sourceRow
    for j = 1 : sourceCol
        if fun == 1
            if boundaryPts(i,j) == 1
                newLineImage(targetOffsetY + i - 1, targetOffsetX + j - 1) = 1;
            end
        else
            if mat2(i,j) == 0 
                newLineImage(targetOffsetY + i - 1, targetOffsetX + j - 1) = 1;
            end
        end 
        %if mat2(i,j) == 0 %optimal
        %if boundaryPts(i,j)
        %    newLineImage(offsetY + i - 1, offsetX + j - 1) = 1;
        %end
    end
end

%imshow(newLineImage);

imr(newLineImage == 1) = 255;
img(newLineImage == 1) = 0;
imb(newLineImage == 1) = 0;
%imshow(newLineImage);

targetWithBoundary = composeRGB(imr, img, imb);
%imshow(uint8(targetWithBoundary));

if fun == 1
    imwrite(uint8(targetWithBoundary), strcat(targetFolderPath, USER_RESULT_BOU));
else
    imwrite(uint8(targetWithBoundary), strcat(targetFolderPath, OPTIMAL_RESULT_BOU));
end

