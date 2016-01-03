%imshow(uint8(simg))
simg2 = simg;
imir2 = imir;
imig2 = imig;
imib2 = imib;

imir2 (mat == 1) = 225; 
imig2 (mat == 1) = 0;
imib2 (mat == 1) = 0;

sourceWithBound = composeRGB(imir2, imig2, imib2);
imshow(uint8(sourceWithBound));