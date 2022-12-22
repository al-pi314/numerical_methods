function [Q,R]=givens(A)
% givens izvede QR razcep z Givensovimi rotacijami
%
% Definicija:
% [Q,R]=givens(A)
%
% Vhodni podatki:
%  A   mxn matrika
%
% Izhodni podatek:
%  Q   mxm ortogonalna
%  R   mxn zgornje trapezna
    m = size(A, 1);
    n = size(A, 2);

    Q = eye(m);
    for i = 1:n
        for k = i+1: m
            if A(k, i) == 0
                continue
            end

            r = sqrt(A(i, i)^2 + A(k, i)^2);
            c = A(i, i) / r;
            s = A(k, i) / r;
            rotation = [[c s]; [-s, c]]
            A([i, k], 1:n) = rotation * A([i, k], 1:n);
            Q([i, k], 1:m) = rotation * Q([i, k], 1:m);
        end
    end
    Q = Q';
    R = A;
end
