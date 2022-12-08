function [x,X,k] = broyden(f,B0,x0,tol,N)
% Opis:
%  broyden izvede Broydenovo metodo za resevanje sistema nelinearnih enacb.
%  Iteracije se izvajajo dokler ne presezemo stevila
%  korakov N oz. dokler je druga norma razlike dveh zaporednih približkov večja od tolerance 
%  (ustavimo se torej, ko prvič velja norm[(trenutni priblizek)-(prejsni priblizek)] <= tol.
%
% Definicija:
% [x,X,k] = broyden(f,B0,x0,tol,N)
%
% Vhodni podatki:
%  f    preslikava, ki doloca nelinearni sistem f(x) = 0,
%  B0   zacetni priblizek za Broydenovo matriko,
%  x0   zacetni priblizek (stolpec),
%  tol  toleranca relativnega ujemanja dveh zaporednih priblizkov,
%  N    maksimalno stevilo korakov iteracije 
%
% Izhodni podatek:
%  x    koncni priblizek za resitev sistema f(x) = 0
%  X    matrika, ki vsebuje vse izracunane priblizke (vkljucno z x0)
%  k    stevilo izvedenih korakov metode
    X(1, :) = x0;
    for k = 1:N
        delta_x = (B0 \ -f(X(end, :))')'; % f(xn) / Bn
        x = X(end, :) + delta_x;
        X(end +1, :) = x; % new aproximation
        B0 = B0 + (f(x)' * delta_x)/(delta_x * delta_x'); % B0 + F(x(n+1) * delta_x' / (delta_x * delta_x')
        if norm(X(end -1) - X(end), 2) <= tol
            break
        end
    end
    x = X(end, :);


end

