simg = double(imread('../images/boat2/boat.jpg', 'JPG'));

timg = double(imread('../images/boat2/beach.jpg', 'JPG'));

costMatrix = calCostMatrix( simg, timg, maskMatrix, 850, 580); %first para is row(Y)