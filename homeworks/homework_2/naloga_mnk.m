% tocke morajo biti vsaka v svojem stolpcu
% npr. A = (1, 2) B = (3, 4) bi bilo:
%       [ 1 4 ]
%       [ 2 3 ]

points = [[1.1; 0.53], [1.05; 0.43], [1.02; 0.39], [0.95; 0.32], [0.87; 0.27], [0.77; 0.22], [0.67; 0.18], [0.56; 0.15], [0.44; 0.13], [0.30; 0.12], [0.16; 0.13], [0.01; 0.15]];

[A, b] = polinomial_system(points, 7); % 7 stopnja 
x = A \ b;
norm(x, 2)
norm(x, 1)
norm(x, 'inf')

points_txt = importdata('tocke.txt')';

[A2, b2] = elipsoid_system(points_txt);
x2 = A2 \ b2;
x2
