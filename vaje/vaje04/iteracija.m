function [x,X,k] = iteracija(g,x0,tol,N)
% iteracija izvede navadno iteracijo za dano iteracijsko funkcijo in
% zacetni priblizek. Iteracije se izvajajo dokler ne presezemo stevila
% korakov N oz. dokler je absolutna razlika dveh zaporednih približkov večja od tolerance 
% (ustavimo se torej, ko prvič velja abs[(trenutni priblizek)-(prejsni priblizek)] <= tol.
%
% [x,X,k] = iteracija(g,x0,tol,N)
%
% Vhodni podatki:
%  g    iteracijska funkcija,
%  x0   zacetni priblizek,
%  tol  toleranca absolutnega ujemanja dveh zaporednih priblizkov
%  N    maksimalno stevilo korakov iteracije.
%
% Izhodni podatki:
%  x    zadnji priblizek izracunan z navadno iteracijo,
%  X    seznam vseh priblizkov izracunanih z navadno iteracijo,
%  k    stevilo opravljenih korakov iteracije.
end