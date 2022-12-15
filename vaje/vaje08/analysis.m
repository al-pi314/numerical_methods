P = load("data.txt");
D = P(:, 3:4); % D(1) = date_decimal, D(2) = value

% model F1(a, b, c, d, t) = a1 * t + b1 + c1 * sin(2π * t) + d1 * cos(2π * t)
f1 = @(t)  [t, 1, sin(2*pi*t), cos(2*pi*t)];
for i = 1:size(D, 1)
    t = D(i, 1);
    A1(i, :) = f1(t);
end

x1 = A1 \ D(: , 2);

for i = 1:size(D, 1)
    t = D(i, 1);
    F1(i) = f1(t) * x1; 
end

figure
title("F1")
hold on
plot(D(:, 1), D(:, 2))
plot(D(:, 1), F1)


% model F2(a, b, c, d, e, t) = a2 * t ^ 2 + b2 * t + c2 + d2 * sin(2π * t) + e2 * cos(2π * t)
f2 = @(t)  [t^2, t, 1, sin(2*pi*t), cos(2*pi*t)];
for i = 1:size(D, 1)
    t = D(i, 1);
    A2(i, :) = f2(t);
end

x2 = A2 \ D(: , 2);

for i = 1:size(D, 1)
    t = D(i, 1);
    F2(i) = f2(t) * x2; 
end

figure
title("F2")
hold on
plot(D(:, 1), D(:, 2))
plot(D(:, 1), F2)

disp("2050 - F1 and F2")
f1(2050) * x1
f2(2050) * x2

disp("2100 - F1 and F2")
f1(2100) * x1
f2(2100) * x2