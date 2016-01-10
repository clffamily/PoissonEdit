simg = double(imread('../images/qq/qq.jpg', 'JPG'));

timg = double(imread('../images/qq/background.jpg', 'JPG'));

k = calAvgK( simg, timg, boundaryPts, 80, 5); %first para is row(Y)

%k = calAvgK( simg, timg, mat, 80, 5); %first para is row(Y)