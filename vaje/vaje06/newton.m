function [x,X,k] = newton(f,Jf,x0,tol,N)
% Opis:
%  newton izvede Newtonovo metodo za resevanje sistema nelinearnih enacb. Iteracije se izvajajo dokler ne presezemo stevila
%  korakov N oz. dokler je druga norma razlike dveh zaporednih približkov večja od tolerance 
%  (ustavimo se torej, ko prvič velja norm[(trenutni priblizek)-(prejsni priblizek)] <= tol.
%
% Definicija:
%  [x,X,k] = newton(f,Jf,x0,tol,N)
%
% Vhodni podatki:
%  f    preslikava, ki doloca nelinearni sistem f(x) = 0,
%  Jf   Jacobijeva matrika preslikave f,
%  x0   zacetni priblizek (stolpec),
%  tol  toleranca ujemanja dveh zaporednih priblizkov,
%  N    maksimalno stevilo korakov iteracije (privzeta vrednost je 100)
%
% Izhodni podatek:
%  x    koncni priblizek za resitev sistema f(x) = 0
%  X    matrika, ki vsebuje vse izracunane priblizke (vkljucno z x0)
%  k    stevilo izvedenih korakov metode

end