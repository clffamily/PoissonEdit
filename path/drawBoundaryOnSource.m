
% ----------------------------------
% This script creates the mask of the shortest path found previously on findShortestPath.
% Write the mask into the source image.
% ----------------------------------

% This is the parameter for input. 
%   1 for user result, 
%   2 for optimal result.
fun = 2;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[ imr, img, imb ] = decomposeRGB( simg );

if fun == 1  
    imr(boundaryPts == 1) = 255;
    img(boundaryPts == 1) = 0;
    imb(boundaryPts == 1) = 0;
else
    imr(mat2 == 0) = 255;
    img(mat2 == 0) = 0;
    imb(mat2 == 0) = 0;
end

simgWithBou = composeRGB(imr, img, imb);
%imshow(uint8(targetWithBoundary));

if fun == 1
    imwrite(uint8(simgWithBou), strcat(targetFolderPath, SOURCE_USER_BOU));
else
    imwrite(uint8(simgWithBou), strcat(targetFolderPath, SOURCE_OPTIMAL_BOU));
end

