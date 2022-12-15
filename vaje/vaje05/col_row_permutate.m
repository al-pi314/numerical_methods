function B = col_row_permutate(A, p)
    n = size(p, 2);
    for i = 1:n
        C(:, p(i)) = A(:, i);
    end
    for i = 1: n
        B(p(i), :) = C(i, :);
    end
 end