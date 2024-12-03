function cum = histoCum(H)
cum = zeros(256, 1);
cum(1) = H(1);
for i=2:256
    cum(i) = H(i) + cum(i-1);
end

bar(cum)

end

