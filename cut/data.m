% clear all;
load CurrRes.mat;

imwrite(uint8(CurrRes2),'images/object.jpg');

maskMatrix = CurrRes2(:, :, 1);
maskMatrix(maskMatrix ~= 0) = -1;

user_mask = ~fixedBG;
imwrite(user_mask,'images/user_mask.jpg');

load imBounds.mat;
imwrite(uint8(imBounds),'images/user_draw.jpg');

maskMatrix(user_mask == 0) = -1;
