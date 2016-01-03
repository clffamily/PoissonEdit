simg = double(imread('../images/sky/kite2.jpg', 'JPG'));

timg = double(imread('../images/sky/sky.jpg', 'JPG'));

costMatrix = calCostMatrix( simg, timg, maskMatrix, 300, 600);