function i = max_diag(A, k)
    n = size(A, 1);
    
    m = A(k, k);
    for j = k: n
        if A(j, j) > m
            m = A(j, j);
            i = j;
        end
    end
end