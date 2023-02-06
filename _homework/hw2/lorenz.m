function [x,y,z,t] = lorentz(nsteps)
% Useage: [x,y,z,t] = lorentz(sigma,rho,beta,nsteps)
% Inputs:
%   sigma, rho, and beta are model parameters
%   nsteps - the number of steps to take in the model
% Output: x,y,z coordinates of the model, t model time
% Detaled description: Uses Runge-Kutta to solve the system of ordinary differential equations
%   dx/dt = sigma*(y-x)
%   dy/dt = rho*x - y - x*z
%   dz/dt = x*y - beta*z

  sigma = 10;
  beta = 8/3;
  rho = 28;


  f = @(t,a) [-sigma*a(1) + sigma*a(2); rho*a(1) - a(2) - a(1)*a(3); -beta*a(3) + a(1)*a(2)];
  [t,a] = ode45(f,[0 nsteps],[1 1 1]);     % Runge-Kutta 4th/5th order ODE solver

  x = a(:,1);
  y = a(:,2);
  z = a(:,3);



