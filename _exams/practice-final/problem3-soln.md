---
layout: page
title: Practice Final Problem 3 Solution
permalink: /exams/practice-final/problem3-soln
---

## Problem 3

The *sinc* function is defined by

$$\text{sinc}(x)  = \frac{\sin(x)}{x}.$$

Create a script (not a function!) that makes a plot of $$\text{sinc}(x)$$ for $$-6\pi\leq x \leq 6\pi$$ using $$1000$$ equally spaced sample points.
The plot should use a solid blue curve.
Set the $$y$$ range of the plot to be from $$-1$$ to $$1$$.
On the same graph, include a plot of $$1/x$$ using the same $$1000$$ sample points, but with a dashed red curve.
Label the $$x$$-axis as $$x$$ and the $$y$$-axis as $$y$$.
Make the figure title ``The Sinc Function".
Add a legend to the image.
Include a copy of your script in the additional uploads section of the exam.

## Solution

```Matlab

% calculate the points on each curve
x = linspace(-6*pi, 6*pi, 1000);
y = sin(x) ./ x;
z = 1 ./ x;

% plot both curves
plot(x,y,'b')
hold on
plot(x,z,'r--')

% label the axes and title
xlabel("x")
ylabel("y")
title("The Sinc Function")

% set the y-range
ylim([-1,1])

% add a legend
legend("sinc(x)", "1/x")

```

