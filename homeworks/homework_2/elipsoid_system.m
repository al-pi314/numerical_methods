function [A, b] = elipsoid_system(points)
    m = size(points, 2);
    for k = 1 : m
        A(k, :) = (points(:, k).^2)';
    end
    b = ones(m, 1);
end