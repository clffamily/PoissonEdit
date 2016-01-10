im = double(imread('../images/apple/optimal_result.jpg', 'JPG'));
offsetX = 750;
offsetY = 240;

[ imr, img, imb ] = decomposeRGB( im );

targetRow = size(imr,1);
targetCol = size(imr,2);

sourceRow = size(mat2,1);
sourceCol = size(mat2,2);

newLineImage = zeros(targetRow,targetCol);

for i = 1 : sourceRow
    for j = 1 : sourceCol
        if mat2(i,j) == 0
        %if boundaryPts(i,j)
            newLineImage(offsetY + i - 1, offsetX + j - 1) = 1;
        end
    end
end

%imshow(newLineImage);

imr(newLineImage == 1) = 255;
img(newLineImage == 1) = 0;
imb(newLineImage == 1) = 0;
%imshow(newLineImage);

targetWithBoundary = composeRGB(imr, img, imb);
imshow(uint8(targetWithBoundary));