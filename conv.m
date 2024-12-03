function result = conv(img, mask)

[lignes, colonnes] = size(img);
result = zeros(lignes, colonnes, 'uint8');

for i=2:lignes-1
    for j=2:colonnes-1
        result(i, j) = img(i-1, j-1) * mask(3, 3) + img(i-1, j) * mask(3, 2) + img(i-1, j+1) * mask(3, 1) + img(i, j-1) * mask(2, 3) + img(i, j) * mask(2,2) + img(i,j+1) * mask(2, 1) + img(i+1, j-1) * mask(1, 3) + img(i+1, j) * mask(1, 2) + img(i+1, j+1) * mask(1, 1);
    end
end
end
    