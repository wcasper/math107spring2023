x = linspace(-1.5,1.5,1000);
y = linspace(-1.5,1.5,1000);
[X,Y] = meshgrid(x,y);
Z = X + i*Y;

stability = zeros(1000,1000);  % Array to keep track of how many iterations it takes
tmax = 200;                    % Max time we will run the simulation
c = 0.285 + 0.01i;             % constant determining Julia set
maxnorm = 2000;                % maximum norm before we cut off

for t=1:tmax
  % update each point in the matrix Z according to the equation z_(n+1) = z_n^2 + c
  Z = Z.*Z + c;
  % if a point has norm less than maxnorm, increase the time in that entry of the stability matrix
  stability(abs(Z) < maxnorm) = t;
end

