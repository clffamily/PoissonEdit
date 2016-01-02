imRGB = imread('../images/segmentation/tree.jpeg');
imGray = rgb2gray(imRGB);

imshow(imGray)
  
str = 'Click to select initial contour location. Double-click to confirm and proceed.';
title(str,'Color','b','FontSize',12);
disp(sprintf('\nNote: Click close to object boundaries for more accurate result.'))

mask = roipoly;
  
figure, imshow(mask)
title('Initial MASK');

maxIterations = 800; 
%bw = activecontour(imGray, mask, maxIterations, 'Chan-Vese');
bw = activecontour(imGray, mask, maxIterations, 'edge');
  
% Display segmented image
figure, imshow(bw)
title('Segmented Image');