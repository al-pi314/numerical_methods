fun = @(x,n) x.^n.*exp(x-1);

x = linspace(0,1,1000);

plot(x, fun(x,1), x, fun(x,2), x, fun(x,10), x,fun(x,100), "Linewidth", 1.5)
legend("n = 1", "n = 2", "n = 10", "n = 100", "Location", "northwest")