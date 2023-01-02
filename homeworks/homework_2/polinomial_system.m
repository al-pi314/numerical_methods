function [A, b] = polinomial_system(points, n)
    m = size(points, 2);
    A(:, 1) = ones(m, 1);
    for k = 2: n + 1
        A(:, end + 1) = A(:, end) .* points(1, :)';
    end
    b = points(2, :)';
end