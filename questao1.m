[Image, Lut]=imread('lena.tif');

Lut8 = requant(8);

ImageBruit = imnoise(Image, 'gaussian', 0, 0.01);

%subplot(1,3, 1); % 1 row, 2 columns, select the first region
%imshow(Image, Lut);

%subplot(1,3,2);
%imshow(Image, Lut8);

%subplot(1,3,3);
%imshow(ImageBruit, Lut8);

%bar(histo(Image))

[image2, L2]=imread('eight.tif');

subplot(1,2, 1);
bar(histo(image2))

%[image3, L3]=imread('eight_sombre.tif');

subplot(1,2, 2);
bar(histoCum(histo(image2)));

% plot(L8);

requant(8);
