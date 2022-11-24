function [l,u] = thomas(a,b,c)
% Opis:
%  thomas resi sistem s tridiagonalno matriko z LU razcepom brez
%  pivotiranja.
%
% Definicija:
%  [l,u] = thomas(a,b,c)
%
% Vhodni podatki:
%  a    glavna diagonala matrike,
%  b    diagonala nad glavno diagonalo matrike,
%  c    diagonala pod glavno diagonalo matrike,
%
% Izhodni podatki:
%  l    diagonala pod glavno diagonalo enic matrike L v LU razcepu A
%       (ostali elementi L so enaki 0),
%  u    glavna diagonala matrike U v LU razcepu matrike A (diagonala nad
%       glavno diagonalo je enaka b, vsi ostali elementi U so enaki 0).
    n = size(a, 2);
    
    u(1) = a(1);
    for i = 2:n
        l(i -1) = c(i -1)/u(i -1);
        u(i) = a(i) - b(i -1) * l(i -1);
    end
end