% ----------------------------------
% Produce the user mask for Poison blending; Export source image with user-specified area.
% ----------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% clear all;
load CurrRes.mat;

imwrite(uint8(CurrRes2),'images/object.jpg'); % edit here

maskMatrix = CurrRes2(:, :, 1); % edit here
maskMatrix(maskMatrix ~= 0) = -1;

user_mask = ~fixedBG;
imwrite(user_mask,'images/user_mask.jpg');

load imBounds.mat;
imwrite(uint8(imBounds),'images/user_draw.jpg');

maskMatrix(user_mask == 0) = -1;
