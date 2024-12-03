function result = average(img)

[i, j] = size(img);
result = zeros(i, j, 'uint8');

disp(i);
disp(j);

for y=2:i-1
    for x=2:j-1
        voisins = [img(y-1, x-1) img(y-1, x) img(y-1, x+1) ...
                   img(y, x-1) img(y, x) img(y, x+1) ...
                   img(y+1, x-1) img(y+1, x) img(y+1, x+1)];

        result(y, x) = mean(voisins);
    end
end

