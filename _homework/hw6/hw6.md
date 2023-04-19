---
layout: page
title: Homework 6
permalink: /homework/hw6
---

Work out each of the following problems **by hand** and be sure to show your work.  Scan your written solutions and upload them as a **single** PDF.
Be sure to show your work!  Solutions without work will receive very little credit.

**Problem 1:**

For each of the following matrices, calculate the matrix inverse by hand or explain why it does not exist.

* (a)

$$A = \left[
\begin{array}{cc}
2 & 3\\
1 & 2
\end{array}
\right]$$

* (b)

$$B = \left[
\begin{array}{cc}
2 & 4\\
1 & 2
\end{array}
\right]$$

* (c)

$$C = \left[
\begin{array}{cc}
0 & 1 & 2\\
1 & 0 &-1\\
2 & 1 & 3
\end{array}
\right]$$

**Problem 2:**

Solve each of the following systems by hand using matrix inverses.

* (a)

$$
\left\lbrace\begin{array}{cc}
2x + 3y &= 2\\
x + 2y &= 1
\end{array}\right.
$$

* (b)

$$
\left\lbrace\begin{array}{cc}
x + 3y &= 1\\
-x + y &= 1
\end{array}\right.
$$

**Problem 3:**

It is known that the height $$y$$ of a rocket during a steady engine burn is given by a cubic equation

$$y(t) = at^3 + bt^2 + ct + d.$$

The rate of change of the acceleration during the flight is an important part of the engine's performance and is called the **jerk** and given by

$$j = \frac{d^3y}{dt^3} = 6a.$$

Suppose that a particular rocket is launched and the engine burns for $$10$$ seconds.
By measuring the values of a rocket during flight, an observer finds that the velocity as a function of time is given by the following chart.

| time (s) | height (ft) |
| -------- | ----------- |
|     0    |       0     |
|     1    |      10     |
|     2    |      33     |
|     3    |      65     |
|     4    |     115     |
|     5    |     180     |
|     6    |     260     |
|     7    |     365     |
|     8    |     525     |
|     9    |     680     |

Of course, the observer's measurements will have a certain amount of measurement error.

* (a) Perform a **least squares fit** of this data set to the cubic equation above.  You may use MATLAB to calculate the necessary matrix products and solve the required system, but be sure to carefully document everything you do by hand.
* (b) Use the curve fit you found to estimate the jerk $$j$$ for this particular rocket.


**Problem 4:**

The mass of a certain radioactive isotope called **imaginarium** decreases over time as it radiates energy and breaks down into more stable materials.
The mass of the imaginarium as a function of time is described by the exponential model

$$m(t) = a2^{-t/\mu}$$

for some positive constants $$a$$ and $$\mu$$ representing the initial mass and the **half-life** $$\mu$$ when the mass present is reduced by a factor of $$2$$.
A scientist measuring the imaginarium finds that the mass of the isotope versus time is given by the following chart.

| time (day) |   mass (g)  |
| ---------- | ----------- |
|      0     |     100     |
|      1     |      94     |
|      2     |      86     |
|      3     |      82     |
|      4     |      74     |
|      5     |      71     |

However, it is somewhat difficult to measure the quantity of isotope due to the presence of other degenerate compounds, leading to some measurement errors.

* (a) Tak the natural log of the exponential model, to convert the relationship into a linear relation between $$\ln(m)$$ and $$t$$.
* (b) Perform a **least squares fit** of this data set to the exponential model above.  You may use MATLAB to calculate the necessary matrix products and solve the required system, but be sure to carefully document everything you do by hand.
* (c) Use the curve fit you found to estimate the half-life of imaginarium.
* (d) Use the results from (a) and (b) to esimate how many days until only $$1/4$$ of the original mass of the imaginarium will remain.




