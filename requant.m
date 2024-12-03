function lut = requant(N)
    % créer une LUT de requantification en N niveaux de gris

    resolution = 256;

    lut = zeros(resolution, 3);

    clear W;
    W = (resolution/N);

    for i=2:N
        Tk = floor((i-1)*W);
        Rk = Tk*(N/(N-1));
        for j = Tk:Tk+W
            lut(j,1) = Rk;
            lut(j,2) = Rk;
            lut(j,3) = Rk;
        end
    end
    lut = lut./256;
end

