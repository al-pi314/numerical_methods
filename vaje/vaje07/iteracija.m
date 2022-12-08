function [x,X,k] = iteracija(g,x0,tol,N)
% Opis:
%  iteracija izvede navadno iteracijo za resevanje sistema nelinearnih
%  enacb. Iteracije se izvajajo dokler ne presezemo stevila
%  korakov N oz. dokler je druga norma razlike dveh zaporednih približkov večja od tolerance 
%  (ustavimo se torej, ko prvič velja norm[(trenutni priblizek)-(prejsni priblizek)] <= tol.
%
% Definicija:
%  [x,X,k] = iteracija(g,x0,tol,N)
%
% Vhodni podatki:
%  g    iteracijska funkcija,
%  x0   zacetni priblizek (stolpec),
%  tol  toleranca ujemanja dveh zaporednih priblizkov,
%  N    maksimalno stevilo korakov metode
%
% Izhodni podatki:
%  x    koncni priblizek za resitev sistema
%  X    matrika, ki vsebuje vse izracunane priblizke (vkljucno z x0)
%  k    stevilo izvedenih korakov metode
    X(1, :) = x0;
    for k = 1:N
        X(end +1, :) = g(X(end, :));
        if norm(X(end -1) - X(end), 2) <= tol
            break
        end
    end
    x = X(end, :);
end