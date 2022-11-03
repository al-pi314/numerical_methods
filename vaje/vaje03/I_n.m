n = 14;
f = @(x,n) x.^n.*exp(x-1);
tocne = zeros(1,n);
for i = 1:n
    tocne(i) =integral(@(x) f(x,i-1), 0,1); 
end
tocne';

formula1 = zeros(1,n);
formula1(1) = 1-exp(-1);
for j = 2:n
    formula1(j) = 1-(j-1)*formula1(j-1);
end
formula1';

n2 = 100;
formula2 = zeros(1,n2);
for k = (n2-1):-1:1
    formula2(k) = (1-formula2(k+1))/k;
end

[tocne; formula1; abs(tocne-formula1); formula2(1:14); abs(tocne-formula2(1:14))]'
