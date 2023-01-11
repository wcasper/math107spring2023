---
layout: page
title: Exam 2 Written Portion
permalink: /exams/exam2/written-portion
---

## Problem 4
Consider the following lines of MATLAB code.  Determine the final values of the variables $$k$$ and $$x$$.  Carefully show your work by filling in the missing values in the table below.  Note that not all rows will necessarily be used!

```Matlab
N = 3;
k = 1;
x = 0;

for k = -N:N
  if k > 1
    x = x*k;
  else
    x = x - k;
  end
end
```

| loop iteration | $$k$$ | $$x$$ |
| -------------- | ----- | ----- |
|        1       |  -3   |   3   |
|        2       |       |       |
|        3       |  -1   |       |
|        4       |       |   6   |
|                |       |   5   |
|        6       |       |       |
|                |       |       |
|                |       |       |
|                |       |       |


* $$\textbf{Final $k$ value:}$$
* $$\textbf{Final $x$ value:}$$

## Problem 5

Solve the following problems by hand and carefully show your work.

* (a) Let $$z=2-3i$$ and $$w=-5+2i$$.  Rewrite the complex number $$\frac{w}{z}$$ in $$a+ib$$ form.
* (b) Let $$z = 3 + 3i$$.  Rewrite $$z$$ in the form $$z = re^{i\theta}$$ for some real numbers $$r>0$$ and $$0\leq \theta < 2\pi$$.
* (c) Calculate the value of $$(3+3i)^{20}$$ in $$a + ib$$ form.

## Problem 6

* (a) Write down the value of a $$2\times 2$$ matrix $$A$$ corresponding to the transformation of the $$x,y$$ plane which reflects everything across the line $$y=x$$.
* (b) Describe the transformation which corresponds to the matrix

$$\left(\begin{array}{cc}
 0 & -1\\
 1 &  0
\end{array}\right)$$

* (c) Consider the matrices

$$A = \left[\begin{array}{ccc} -2 & -2 & 4\\ 1 & 1 & 0\end{array}\right]
\quad
B = \left[\begin{array}{ccc} 4 & -2 & 3\\ 0 & 5 & 2\\ 3 & 2 & -1\end{array}\right]$$

Compute $$AB$$ and $$BA$$.  If one of the products is undefined, explain why.

## Problem 7

Consider the following situation

The cost of a ticket to the Aquarium is $$7$$ dollars for a child $$12$$ dollars for a senior and $$20$$ dollars for an adult.
On a particular day, the aquarium sells twice the number of children's tickets as the number of adult and senior tickets combined.
The total number of tickets sold that day is $$300$$ and the total revenue generated from the sale of tickets is $$3200$$ dollars.


* (a) Set up a linear system of equations for the following story problem
* (b) Write down an augmented matrix describing the linear system of equations in (a)
* (c) Solve the linear system in (a) by row reducing the augmented matrix in (b)

## Problem 8

For each of the following statements, write TRUE if the statement is always true or FALSE if the statement can be false.
There is no need to justify your answers.

* (a) If a linear system of equations has more than one solution, then it must have infinitely many solutions.
* (b) If $$A$$, $$B$$, and $$C$$ are nonzero $$2\times 2$$ matrices and $$AB = AC$$ then $$B=C$$.
* (c) The linear system of equations corresponding to the following augmented matrix for three equations and three variables is inconsistent:

$$\left[\begin{array}{ccc|c}
2 & 3 & 7 & 1\\
4 & 2 & 3 & 9\\
0 & 0 & 0 & 2\\
\end{array}\right]$$

* (d) If $$A$$ and $$B$$ are two $$2\times 2$$ matrices then $$AB = BA$$

* (e) $$3+2i$$, $$8i$$ and $$\sqrt{2}$$ are all examples of complex numbers

## Problem 9

Consider the following linear system of equations

$$\left\lbrace\begin{array}{cc}
x + 2y + 3z &= -3\\
2x + 4z     &=-6\\
4x +4y +  10z     &=-12
\end{array}\right.$$

* (a) Rewrite this linear system as an augmented matrix
* (b) Put the augmented matrix in row reduced echelon form
* (c) Determine which variables are free and which variables are dependent.  How many solutions does this system have?


