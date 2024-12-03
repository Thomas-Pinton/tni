function result = contourHorizontal(img)
matrix = [-1 0 1; -1 0 1; -1 0 1];
result = conv(img, matrix);
end

