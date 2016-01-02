simg = double(imread('../images/horse.jpg', 'JPG'));

timg = double(imread('../images/mona-leber-target.jpg', 'JPG'));

costMatrix = calCostMatrix( simg, timg, maskMatrix, 6, 6);