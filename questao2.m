%matrix = [0.11 0.11 0.11; 0.11 0.11, 0.11; 0.11 0.11 0.11];

matrix = 1/9*ones(3);

lena = imread("lena.tif");

result = conv(lena, matrix);

%imshow(uint8(result));

lena_bruit = imnoise(lena, 'salt & pepper', 0.1);

lena_median = median(lena_bruit);
lena_average = average(lena_bruit);

%subplot(1,2, 1); % 1 row, 2 columns, select the first region
%imshow(lena_median);


%subplot(1,2,2);
%imshow(lena_average);

carre = imread("Carré1.tif");

vertical = contourVertical(carre);
horizontal = contourHorizontal(carre);

%imshow(uint8(conv(carre, matrix)));
%imshow(carre);

%imshow(uint8(horizontal));
%imshow(contourVertical(imContour));


