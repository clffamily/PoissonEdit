simg = double(imread('../images/qq/qq.jpg', 'JPG'));

timg = double(imread('../images/qq/background.jpg', 'JPG'));

costMatrix = calCostMatrixRGB( simg, timg, maskMatrix, 80, 5, k); %first para is row(Y)