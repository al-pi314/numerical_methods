function [m, u, l] = diagonals(A)
    n = size(A, 1);

    for i = 1: n -1
        m(i) = A(i, i);
        u(i) = A(i, i +1);
        l(i) = A(i +1, i);
    end
    m(n) = A(n, n);
end