% ----------------------------------
% This script creates boundary point matrix denoting user-drawn boundary.
% ----------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

boundary = bwboundaries(user_mask);

boundaryPts = zeros(size(user_mask));

for i = 1 : size(boundary{1},1)
    firstNum = boundary{1}(i,1);
    secondNum = boundary{1}(i,2);
    boundaryPts(firstNum, secondNum) = 1;
end 

imshow(boundaryPts);