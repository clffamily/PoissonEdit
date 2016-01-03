mat_copy = mat;

shortestPathMask = imfill(mat_copy,'holes');

%imshow(shortestPathMask);
imwrite(shortestPathMask, '../images/sky/optimal_mask.jpg', 'JPG');