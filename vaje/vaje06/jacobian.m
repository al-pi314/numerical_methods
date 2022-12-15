function JF = jacobian(X)
    %vrne jakobijevo matriko
    JF(1, 1) = 5*X(1)^4 - 5*X(2);
    JF(1, 2) = 5*X(2)^4 - 5*X(1);
    JF(2, 1) = 2*X(1);
    JF(2, 2) = 2*X(2)^2*exp(X(2)^2) + exp(X(2)^2) ;
end