function [x,X,k] = sekantna(f,x0,x1,tol,N)
% sekantna izvede sekantno metodo za dano funkcijo in
% zacetna priblizka. Iteracije se izvajajo dokler ne presezemo stevila
% korakov N oz. dokler je absolutna razlika dveh zaporednih približkov večja od tolerance 
% (ustavimo se torej, ko prvič velja abs[(trenutni priblizek)-(prejsni priblizek)] <= tol.
%
% [x,X,k] = sekantna(f,x0,x1,tol,N)
%
% Vhodni podatki:
%  f    funkcija,
%  x0   zacetni priblizek,
%  x1   zacetni priblizek,
%  tol  toleranca absolutnega ujemanja dveh zaporednih priblizkov
%  N    maksimalno stevilo korakov iteracije.
%
% Izhodni podatki:
%  x    zadnji priblizek izracunan s sekantno metodo,
%  X    seznam vseh priblizkov izracunanih s sekantno metodo,
%  k    stevilo opravljenih korakov metode.
    X(1) = x0;
    X(2) = x1;
    for k = 1:N
        fv1 = f(X(end));
        fv2 = f(X(end -1));
        X(end + 1) = (X(end - 1) * fv1 - X(end) * fv2) / (fv1 - fv2);
        if abs(X(end) - X(end-1)) < tol
            break
        end
    end
    x = X(end);
end