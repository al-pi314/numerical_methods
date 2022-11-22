function A = matrix_hw1(n)
    % matrika velikosti n x n
    % A(n, n) = 1
    %
    % A(n, j) = 3 * sin(A(n, j +1)) 
    % j = n -1, ..., 1
    %
    % A(i, n) = (-1) ^ (i + 1) * A(i +1, n)
    % i = n -1, ..., 1
    %
    % A(i, j) = (-1) ^ (i + j) * (A(i +1, j +1) + A(i +1, j) + A(i, j +1)) / 4
    % i, j = n -1, ..., 1

    A(n, n) = 1;

    for j = n -1: -1: 1
        A(n, j) = 3 * sin(A(n, j +1));
    end
    
    for i = n -1: -1: 1
        A(i, n) = (-1) ^ (i +1) * A(i +1, n);
    end

    for i = n -1: -1: 1
        for j = n -1: -1: 1
            A(i, j) = (-1) ^(i + j) * (A(i +1, j +1) + A(i +1, j) + A(i, j +1)) / 4;
        end
    end
end