function H = histo(img)
%HISTO Summary of this function goes here

[height, width] = size(img);

H = zeros(256, 1);

for i=1:height
    for j=1:width
        H(img(i, j)) = H(img(i, j)) + 1;
    end
end

end

