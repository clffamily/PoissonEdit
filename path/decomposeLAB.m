function [ iml, ima, imb ] = decomposeLAB( image )

% Decompose the image to the LAB space.
%colorTransform = makecform('srgb2lab');
%lab = applycform(image, colorTransform);

%lab = rgb2lab(image);

colorTransform = makecform('srgb2lab');
lab = applycform(image, colorTransform);

iml = lab(:, :, 1);  % Extract the L channel.
ima = lab(:, :, 2);  % Extract the A channel.
imb = lab(:, :, 3);  % Extract the B channel.

end

