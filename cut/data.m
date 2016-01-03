clear all;
load CurrRes.mat;

imwrite(uint8(CurrRes),'images/object.jpg');
imwrite((CurrRes),'images/object_mask.jpg');

maskMatrix = CurrRes(:, :, 1);
maskMatrix(maskMatrix ~= 0) = -1;

user_mask = ~fixedBG;
imwrite(user_mask,'images/user_mask.jpg');

maskMatrix(user_mask == 0) = -1;
