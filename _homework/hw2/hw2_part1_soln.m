%% Problem 1
[x,y,z,t] = lorenz(100);

xmax = max(x);
xmin = min(x);
x0 = x(1);

%% Problem 2
plot(x,z)
title("Lorenz Attractor")
figure

%% Problem 3
subplot(2,2,1)
plot(x(1:400),z(1:400))
subplot(2,2,2)
plot(x(1:800),z(1:800))
subplot(2,2,3)
plot(x(1:1200),z(1:1200))
subplot(2,2,4)
plot(x(1:1600),z(1:1600))
figure

%% Problem 4
plot3(x,z,y)

