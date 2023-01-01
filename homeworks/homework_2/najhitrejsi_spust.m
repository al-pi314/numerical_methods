function [x,X,k] = najhitrejsi_spust(gradF,x0,a,tol,N)
% najhitrejsi_spust izvede metodo najhitrejšega spusta za dano ploskev F
% in zacetni priblizek x0. Iteracije se izvajajo dokler ne presezemo stevila
% korakov N oz. dokler je druga norma razlika dveh zaporednih približkov večja od tolerance 
% (ustavimo se torej, ko prvič velja norm[(trenutni priblizek)-(prejsni priblizek)] <= tol.
%
% [x,X,k] = najhitrejsi_spust(gradF,x0,a,tol,N)
%
% Vhodni podatki:
%  gradF  gradient ploskve F,
%  x0     zacetni priblizek,
%  a      premik,
%  tol    toleranca absolutnega ujemanja dveh zaporednih priblizkov
%  N      maksimalno stevilo korakov metode.
%
% Izhodni podatki:
%  x    zadnji priblizek izracunan z metodo,
%  X    seznam vseh izracunanih priblizkov,
%  k    stevilo opravljenih korakov.
    X(:, 1) = x0;
    for k = 1 : N
        x0 = x0 - a .* gradF(x0);
        X(:, end + 1) = x0;
        if norm(X(:, end) - X(:, end - 1), 2) <= tol
            break
        end
    end
    x = X(:, end);
end