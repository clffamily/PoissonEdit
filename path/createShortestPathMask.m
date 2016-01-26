% ----------------------------------
% This script creates the mask of the shortest path found previously on findShortestPath.
% Write the mask into the targetFolderPath.
% ----------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mat_copy = mat;

shortestPathMask = imfill(mat_copy,'holes');

%imshow(shortestPathMask);
imwrite(shortestPathMask, strcat(targetFolderPath, OPTIMAL_MASK), 'JPG');