souris = imread("souris.bmp");
sourisGaussian = imnoise(souris, "salt & pepper", 0.01);
sourisGaussian2 = imnoise(souris, "salt & pepper", 0.1);
sourisGaussian3 = imnoise(souris, "salt & pepper", 0.2);

%e = entropie(souris);

p = psnr(souris, sourisGaussian);
p2 = psnr(souris, sourisGaussian2);
p3 = psnr(souris, sourisGaussian3);

%disp(p);
%disp(p2);
%disp(p3);

q = qsu(souris, 2);

disp(q);
imshow(q);