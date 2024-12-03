function resultat = psrn(I1, I2)
[M, N] = size(I1);
D = 0;
for i=1:M
    for j=1:N
        D = D + (I1(i, j) - I2(i, j)) * (I1(i, j) - I2(i, j));
    end
end
resultat = 10*log10((255^2)/D);
end