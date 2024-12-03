function [ent] = entropie(I)
%I = double(I);
disp(I);
ent = 0;
[M, N] = size(I);
taille = M*N;
histogramme = imhist(I);
disp(histogramme);
for k=1:256
    p=histogramme(k)/taille;
    if p ~= 0
        ent = ent + p*log(p);
    end
end
ent = ent * -1;
end