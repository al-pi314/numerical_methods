function [x,X,k] = halley(f,df,ddf,x0,tol,N)
% halley izvede Halleyevo metodo za dano funkcijo, njen prvi in drugi odvod in
% zacetni priblizek. Iteracije se izvajajo dokler ne presezemo stevila
% korakov N oz. dokler je absolutna razlika dveh zaporednih približkov večja od tolerance 
% (ustavimo se torej, ko prvič velja abs[(trenutni priblizek)-(prejsni priblizek)] <= tol.
%
% [x,X,k] = halley(f,df,ddf,x0,tol,N)
%
% Vhodni podatki:
%  f    dana funkcija,
%  df   prvi odvod funkcije f,
%  ddf  drugi odvod funkcije f,
%  x0   zacetni priblizek,
%  tol  toleranca absolutnega ujemanja dveh zaporednih priblizkov
%  N    maksimalno stevilo korakov metode.
%
% Izhodni podatki:
%  x    zadnji priblizek izracunan z Halleyevo metodo,
%  X    seznam vseh priblizkov izracunanih z Halleyevo metodo,
%  k    stevilo opravljenih korakov metode.
    X(1) = x;
    for k = 1:N
        fv = f(X(end));
        dfv = df(X(end));
        ddfv = ddf(X(end));
        X(end + 1) = X(end) - (2 * fv * dfv) / (2 * dfv ^ 2 - fv * ddfv);
        if abs(X(end) - X(end-1)) < tol
            break
        end
    end
    x = X(end)
end