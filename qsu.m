function [Q] = qsu(I, nb_niveaux)
[M, N] = size(I);
for i=1:M
    for j=1:N
        if I(i, j) == 255
            K(i, j) = 254;
        else
            K(i, j) = I(i, j);
        end
    end
end
q = 255 / nb_niveaux;
d = 0;
Q = ( floor((K-d)/q) + 1/2 ) * q + d;
end