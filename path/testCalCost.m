simg = double(imread('../images/wood/wood.jpg', 'JPG'));

timg = double(imread('../images/wood/beach.jpg', 'JPG'));

costMatrix = calCostMatrix( simg, timg, maskMatrix, 1710, 1320); %first para is row(Y)