clear all;
load CurrRes.mat;

imwrite(uint8(CurrRes),'images/object.jpg');

maskMatrix = CurrRes(:, :, 1);
maskMatrix(maskMatrix ~= 0) = -1;

user_mask = ~fixedBG;
imwrite(uint8(user_mask),'images/user_mask.jpg');

load imBounds.mat;
imwrite(uint8(imBounds),'images/user_draw.jpg');

maskMatrix(user_mask == 0) = -1;
