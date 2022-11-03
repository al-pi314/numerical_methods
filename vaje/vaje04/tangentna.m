function [x,X,k] = tangentna(f,df,x0,tol,N)
% tangentna izvede tangentno metodo za dano funkcijo, njen odvod in
% zacetni priblizek. Iteracije se izvajajo dokler ne presezemo stevila
% korakov N oz. dokler je absolutna razlika dveh zaporednih približkov 
% večja od tolerance 
% (ustavimo se torej, ko prvič velja 
% abs[(trenutni priblizek)-(prejsni priblizek)] <= tol.
%
% [x,X,k] = tangentna(f,df,x0,tol,N)
%
% Vhodni podatki:
%  f    dana funkcija,
%  df   prvi odvod funkcije f,
%  x0   zacetni priblizek,
%  tol  toleranca absolutnega ujemanja dveh zaporednih priblizkov
%  N    maksimalno stevilo korakov metode.
%
% Izhodni podatki:
%  x    zadnji priblizek izracunan z tangentno metodo,
%  X    seznam vseh priblizkov izracunanih z tangentno metodo,
%  k    stevilo opravljenih korakov metode.
end