---
layout: page
title: Practice Exam 2 Written Portion
permalink: /exams/practice-exam2/written-portion
---

## Problem 3
Consider the following lines of MATLAB code.  Determine the final values of the variables $$k$$ and $$x$$.  Carefully show your work by filling in the missing values in the table below.  Note that not all rows will necessarily be used!

```Matlab
N = 6;
k = 1;
x = 0;
v = [2,-1,4,1,-2,0,8,7,-5];

while k<=N
  if v(k) >=0
    x = x - v(k);
  else
    x = x*v(k);
  end
  k = k+1;
```

| loop iteration | $$k$$ | $$v(k)$$ | $$x$$ |
| -------------- | ----- | -------- | ----- |
|        1       |   1   |     2    |  -2   |
|        2       |   2   |          |       |
|        3       |       |          |       |
|        4       |       |          |       |
|                |       |    -2    |       |
|        6       |       |     0    |       |
|                |       |          |       |
|                |       |          |       |
|                |       |          |       |
|                |       |          |       |
|                |       |          |       |


* $$\textbf{Final $k$ value:}$$
* $$\textbf{Final $x$ value:}$$

## Problem 4

Solve the following problems by hand and carefully show your work.

* (a) Let $$z=1-4i$$ and $$w=-2+3i$$.  Rewrite the complex number $$\frac{w}{z}$$ in $$a+ib$$ form.
* (b) Let $$z = 2-2\sqrt{3}i$$.  Rewrite $$z$$ in the form $$z = re^{i\theta}$$ for some real numbers $$r>0$$ and $$0\leq \theta < 2\pi$$.
* (c) Calculate the value of $$(2-2\sqrt{3}i)^{600}$$ in $$a + ib$$ form.

## Problem 5

* (a) Write down the value of a $$2\times 2$$ matrix $$A$$ corresponding to the transformation of the $$x,y$$ plane which rotates everything clockwise by $$\pi/3$$ radians 
* (b) Describe the transformation which corresponds to the matrix

$$\left(\begin{array}{cc}
 0 & -1\\
-1 &  0
\end{array}\right)$$

* (c) Write down a matrix corresponding to the transformation which first stretches in the $$y$$ direction by a factor of $$2$$ and then rotates counter-clockwise by $$\pi/4$$ radians.

## Problem 6

* (a) Let $$\vec v = \binom{1}{-2}$$ and $$\vec w = \binom{-3}{-1}$$.
Compute the norm of $$\vec v-\vec w$$
* (b) Consider the matrices

$$A = \left[\begin{array}{ccc} 2 & 3 & -1\\-3 & 4 & 0\end{array}\right]
\quad
B = \left[\begin{array}{ccc} 0 & -5 & 0\\-1 & 3 & 1\\ 0 & 2 & -1\end{array}\right]$$

Compute $$AB$$ and $$BA$$.  If one of the products is undefined, explain why.

* (c) Consider the matrices

$$A = \left[\begin{array}{c} 3\\1\\2\end{array}\right]
\quad
B = \left[\begin{array}{ccc} 2 & 1 & 0\end{array}\right]$$

Compute $$AB$$ and $$BA$$.  If one of the products is undefined, explain why.

## Problem 7

Use gaussian elimination to find all solutions of the linear system of equations
Explain whether there are no solutions, one solution, or infinitely many solutions.

* (a)

$$\left\lbrace\begin{array}{cc}
3x - 2y + z &= 4\\
 x+3y - z &=-3\\
4x - 10y + 4z &= 10
\end{array}\right.$$

* (b)

$$\left\lbrace\begin{array}{cc}
x + 2y + 3z &= 9\\
2x-2z &=-2\\
3x + 2y + z &= 7
\end{array}\right.$$

* (c)

$$\left\lbrace\begin{array}{cc}
3x - 2y + 4z &= 7\\
2x + y &=-3\\
2x + 8y-8z &= 2
\end{array}\right.$$






