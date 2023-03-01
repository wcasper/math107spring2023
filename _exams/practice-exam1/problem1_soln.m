% part (a)
w = -310:2:450;

% part (b)
q = linspace(-15,29,1000);

% part (c)
A = [1,3,4,2;7,1,2,2;9,8,7,6];

% part (d)
rng(1234);
M = randi(9,10,10);
J = randi(3,10,3);

K = [M,J];

% part (e)
N = M;
N(N<5) = 0;


