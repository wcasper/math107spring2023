---
layout: page
title: Homework 2 Part 1
permalink: /homework/hw2/hw2-part1
---

Use the following template to complete this assignment in MATLAB and then copy and paste your solutions into Canvas.
* [solution m-file template](hw2_part1.m)

Also you will need the following file to be in your current working directory in order to get the code to work
* [code for lorenz attractor](lorenz.m)

## Chaos Theory

Chaos Theory studies dynamical systems, such as systems of particles moving
around a room, which by all appearances seem to move completely randomly but
which are actually guided by completely deterministic rules.

One of the most famous examples of this is the **Lorenz system**.  This system describes a particle moving in three dimensional space, whose position is given by a triple of coordinates $$(x,y,z)$$.  As the particle moves through space, it experiences some very special forces which force the time rate of change of the variables $$x,y,z$$ to satisfy the following equations

$$\begin{align*}
\frac{dx}{dt} &= 10 (y-x)\\
\frac{dy}{dt} &= 28x -xz - y\\
\frac{dz}{dt} &= xy - \frac{8}{3}z
\end{align*}$$

The above is called a **system of differential equations**, and is something that you will learn more about later in your mathematical career.

**Problem 1:**
* Use the command

```Matlab
[x,y,z,t] = lorenz(100);
```

to get the $$x$$, $$y$$, and $$z$$-coordinates of the particle during the first $$100$$ seconds.  Here x(i), y(i), and z(i) are the x, y, and z coordinates of the particle at time t(i).

* Calculate the maximum and minimum value of the $$x$$-coordinate of the particle and save them in variables called xmax, and xmin respectively.

* Create a variable x0 whose value is the $$x$$-coordinate of the particle at the very beginning.


**Problem 2:**
By plotting $$z$$ versus $$x$$, we can create an image of the trajectory the particle followed in the first $$100$$ seconds.  For this system, the particles trajectory is quite striking, and is referred to as a **strange attractor** or the **Lorenz attractor**
* Create a plot of $$z$$ versus $$x$$.
* Set the title equal to "Lorenz Attractor"
* Lastly run the figure command, so that any future plot don't accidentally erase the one we just made

```Matlab
figure
```

**Problem 3:**
We can get a better idea of how the particles trajectory evolves over time.
* Run the following code to generate a $$2\times 2$$ grid of plots, exhibiting the trajectory of the particle during over time intervals of various lengths

```Matlab
subplot(2,2,1)
plot(x(1:400),z(1:400))
subplot(2,2,2)
plot(x(1:800),z(1:800))
subplot(2,2,3)
plot(x(1:1200),z(1:1200))
subplot(2,2,4)
plot(x(1:1600),z(1:1600))
figure
```

**Problem 4:**
To get an even cooler picture of the Lorenz Attractor, we can create a three dimensional plot.
* Run the command plot3(x,z,y) to generate a three-dimensional plot of the trajectory of the particle.
