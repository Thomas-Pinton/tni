function [imgModifie] = dilatationGeodesique(imgRef, img, fois)
    [nbl, nbc] = size(img);
    imgModifie = zeros(nbl, nbc, 'uint8');
    for k = 1 : fois
        for i = 2 : nbl - 1
            for j = 2 : nbc - 1
                voisins = [img(i-1, j-1) img(i-1, j) img(i-1, j+1) ...
                          img(i, j-1) img(i, j) img(i, j+1) ...
                          img(i+1, j-1) img(i+1, j) img(i+1, j+1)];
                imgModifie(i, j) = max(voisins);
            end
        end
        imgModifie(1,:) = imgModifie(2,:);
        imgModifie(nbl,:) = imgModifie(nbl-1,:);
        imgModifie(:, 1) = imgModifie(:,2);
        imgModifie(:, nbc) = imgModifie(:, nbc);
        
        imgModifie = min(imgModifie, imgRef);
        img = imgModifie;

    end
end

