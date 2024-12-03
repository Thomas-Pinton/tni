function result = contourVertical(img)
matrix = [1 1 1; 0 0 0; -1 -1 -1];
result = conv(img, matrix);
end

