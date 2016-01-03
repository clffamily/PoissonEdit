mat_copy = mat;

shortestPathMask = imfill(mat_copy,'holes');

%imshow(shortestPathMask);
imwrite(shortestPathMask, '../images/wood/optimal_mask.jpg', 'JPG');