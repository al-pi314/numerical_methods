function c = regula_falsi(f,a,b,n)
% Funkcija računa približke za ničlo funkcije f na intervalu [a,b] z metodo Regula falsi

% Vhodni podatki:
%   f: dana funkcija
%   a,b: krajišči intervala
%   n: koliko korakov metode naj se izvede (oz. koliko približkov naj
%   se izračuna)
% Izhodni podatek:
%   c: n-ti približek za ničlo funkcije f

inter = (f(b)*a-f(a)*b)/(f(b)-f(a));
val = f(inter);
if (sign(val) == sign(f(a)))
   a = inter;
else
   b = inter;
end

if val == 0 || n < 1
    c = inter;
else
    c = regula_falsi(f, a, b, n-1);
end

    


end

