function [L,U] = lubp(A)
% Opis:
%  lubp izracuna LU razcep A = LU matrike A brez pivotiranja
%
% Definicija:
%  [L,U] = lubp(A)
%
% Vhodni podatek:
%  A    kvadratna matrika (z nesingularnimi vodilnimi podmatrikami)
%
% Izhodna podatka:
%  L    spodnje trikotna matrika z enkami na diagonali,
%  U    zgornje trikotna matrika
        
    % 1 x 1 matrika ima trivialno resitev
    n = size(A, 1);
    if n == 1
        L(1, 1) = 1;
        U = A;
        return
    end


    % deli prvi stolpec s prvim elementom v stoplcu
    A(2:end, 1) = A(2:end, 1) / A(1, 1);
    
    % odstej od vrstice produkt najbolj levega elementa in vrhnjega elementa stolpca
    for i = 2: n
        A(i, 2:end) = A(i, 2:end) - A(i, 1) .* A(1, 2:end);
    end
    
    % ponovi postopek na matriki n -1 x n-1
    [L, U] = lubp(A(2:end, 2:end));
    
    % razsiri matriko L z niclami zgoraj
    L = [zeros(1, size(L, 1)); L];
    % dodaj prvi stoplec matrike A z vodilno enko na diagonali k matriki L 
    L = [[1; A(2:end, 1)] L];
    
    % razsiri matriko U z niclami na levi
    U = [zeros(size(U, 1), 1) U];
    % dodaj prvo vrstico matrike A k matriki U
    U = [A(1, :); U];
end