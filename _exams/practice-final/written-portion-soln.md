---
layout: page
title: Practice Final Exam Written Portion Solution
permalink: /exams/practice-final/written-portion-soln
---

## Problem 6
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
|        2       |  -2   |   5   |
|        3       |  -1   |   6   |
|        4       |   0   |   6   |
|        5       |   1   |   5   |
|        6       |   2   |  10   |
|        7       |   3   |  30   |


* $$\textbf{Final $k$ value:} 3$$
* $$\textbf{Final $x$ value:} 30$$

## Problem 7

Find the determinants and the inverses of each of the following matrices by hand

* (a) $$\left[\begin{array}{cc} 1 & 3\\2 & 4\end{array}\right]$$
* (b) $$\left[\begin{array}{ccc} 1 & 2 & 0 \\ 0 & 2 & 1\\ 1 & 1 & 0\end{array}\right]$$

### Solution

* (a) $$\left[\begin{array}{cc} -2 & 3/2\\1 & -1/2\end{array}\right]$$
* (b) $$\left[\begin{array}{ccc}-1 & 0 & 2 \\ 1 & 0 & -1\\ -2 & 1 & 2\end{array}\right]$$


## Problem 8

Consider the matrix

$$A = \left[\begin{array}{cc}1 & 2\\ 3 & 2\end{array}\right]$$

* (a) Calculate the eigenvalues of $$A$$ by hand.  Carefully show your work.
* (b) For each eigenvalue of $$A$$, find all eigenvectors with that eigenvalue by hand.

### Solution

* (a) Eigenvalues of $$-1$$ and $$4$$
* (b) Eigenvectors of $$-1$$ are $$\left\lbrace\binom{a}{-a}: a\neq 0\right\rbrace$$.  Eigenvectors of $$4$$ are $$\left\lbrace\binom{2a}{3a}: a\neq 0\right\rbrace$$.


## Problem 9

* (a) Determine the values of $$k$$ for which the system of equations associated with the augmented matrix

$$\left[\begin{array}{ccc} 2 & -3 & 4\\ 2 & k & 4\end{array}\right]$$

has no solution, one solution, and infinitely many solutions.  If no such value of $$k$$ exists, then write DNE.

* (b) Consider the complex number $$z = 2-2i$$.  Compute $$z\overline{z}$$ and write $$z$$ in the form $$re^{i\theta}$$ for some real numbers $$r$$ and $$\theta$$.  Calculate $$z^{200}$$ and express it in $$a+ib$$ form.


### Solution

* (a)  no solutions DNE; one solution; $$k\neq -3$$; infinitely many solutions $$k=-3$$

* (b) $$z\overline{z} = 8$$ and  $$z = 2e^{7\pi i/4}$$.   Therefore $$z^{200} = 2^{200}e^{350\pi i} = 2^{200}$$.


