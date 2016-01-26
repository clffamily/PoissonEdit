% ----------------------------------
% This is a script for testing.
% ----------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

im = (imread('../images/target_08.jpg', 'JPG'));
%figure;
%imshow(mat2gray(im));

[iml, ima, imb] = decomposeLAB(im);