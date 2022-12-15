function [V,p] = CholPivot(A)
% Opis:
%  CholPivot izracuna razcep Choleskega s kompletnim pivotiranjem.
%
% Definicija:
%  [V,p] = CholPivot(A)
%
% Vhodni podatki:
%  A    simetricna pozitivno definitna matrika velikosti nxn
%
% Izhodni podatki:
%  V    spodnje trikotna matrika (faktor Choleskega),
%  p    seznam, ki doloca permutacijsko matriko P (index i elementa v seznamu
%       p doloca vrstico matrike P, ki ima enico na p(i)-tem mestu)
    
    n = size(A, 1);
    V = zeros(n, n);
    p = 1: n;
    for k = 1: n
        q = max_diag(A, k);
        
        temp = A(:, k);
        A(:, k) = A(:, q);
        A(:, q) = temp;

        temp = V(k, :);
        V(k, :) = V(q, :);
        V(q, :) = temp;

        temp = A(k, :);
        A(k, :) = A(q, :);
        A(q, :) = temp;

        temp = p(k);
        p(k) = p(q);
        p(q) = temp;

        V(k, k) = sqrt(A(k, k));

        V(k +1: n, k) = A(k +1: n, k) / V(k, k);
        A(k +1: n, k +1: n) = A(k +1: n, k +1: n) - V(k +1: n, k) * V(k +1: n, k)';
    end
end



