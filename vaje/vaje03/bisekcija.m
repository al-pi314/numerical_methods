function c = bisekcija(f,a,b,n)
% Funkcija računa približke za ničlo funkcije f na intervalu [a,b] z metodo
% bisekcije

% Vhodni podatki:
%   f: dana funkcija
%   a,b: krajišči intervala
%   n: koliko korakov metode naj se izvede (oz. koliko približkov naj
%   se izračuna)
% Izhodni podatek:
%   c: n-ti približek za ničlo funkcije 
x = (a+b) / 2;
if (sign(f(a)) == sign(f(x)))
    a = x;
else
    b = x;
end

if n > 1
    c = bisekcija(f, a, b, n-1);
else
    c = (a+b)/2;
end


end