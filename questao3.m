morpho = imread("Morpho.tif");

imgBlanc = ones(256, 256) * 256;


morphoDilatation = dilatation(morpho, 1);
morphoErosion = erosion(morpho, 1);

subplot(1,3, 1); % 1 row, 2 columns, select the first region
imshow(morpho);

contour = morphoDilatation - morphoErosion;

cadre = zeros(256, 256, 'uint8');

cadre(1,:) = 255;
cadre(:,1) = 255;
cadre(256,:) = 255;
cadre(:, 256) = 255;

dilatationGeodesique = min(morpho, cadre);

dilatationGeodesique2 = dilatationGeodesique(morpho, cadre, 3);

subplot(1,3, 2); % 1 row, 2 columns, select the first region
imshow(dilatationGeodesique2);

subplot(1,3, 3); % 1 row, 2 columns, select the first region
imshow(contour);

