---
layout: page
title: Final Exam Written Portion
permalink: /exams/final/written-portion
---

This is the written portion of the exam.
There are no computers or notes allowed for this portion of the exam.
Your webcam should be on and oriented so that your paper and hands are in full view during the entire exam.
Take a deep breath, you've got this!

## Problem 6
Consider the following lines of MATLAB code.  Determine the final values of the variables $$k$$ and $$m$$.  Carefully show your work by filling in the missing values in the table below.  Note that not all rows will necessarily be used!

```Matlab
k = 13;
m = 0;

while k ~= 1
  if mod(k,2) == 1
    k = 3*k + 1;
  else
    k = k/2;
  end

  m = m + 1;
end
```

| loop iteration |  $$m$$  |  $$k$$ |
| -------------- | ------- |  ----- |
|        1       |    1    |   40   |
|        2       |    2    |        |
|        3       |         |        |
|        4       |    4    |    5   |
|        5       |         |        |
|        6       |         |        |
|        7       |         |        |
|        8       |         |        |
|        9       |         |        |
|       10       |         |        |
|       11       |         |        |


* $$\textbf{Final $k$ value:}$$
* $$\textbf{Final $m$ value:}$$

## Problem 7

For each of the following, write TRUE if the statement is true or FALSE if the statement is false.
No justification is required.

* (a) A homogeneous linear system of equations always has a solution.
* (b) If $$x$$ is a real number satisfying $$e^{ix} = 0$$, then $$x= 0$$.
* (c) If $$A$$ is any matrix and $$A^T$$ is its transpose, then the matrices $$AA^T$$ and $$A^TA$$ are the same.
* (d) The product of a complex number $$z$$ with its complex conjugate $$\overline z$$ is always real.
* (e) If the RGB values of a certain pixel are $$(255,255,255)$$ then that pixel is bright white.

## Problem 8

* (a) Find the values of $$a$$ for which the following matrix is invertible

$$A = \left[\begin{array}{cc} 1 & 3\\a & 2\end{array}\right]$$

* (b) Give an example of two $$2\times 2$$ matrices $$A$$ and $$B$$ with $$AB \neq BA$$

* (c) Calculate explicitly the value of the inverse of

$$A = \left(\begin{array}{ccc}
7 & 2 & 1\\ 0 & 3 & -1\\ -3 & 4 & -2\
\end{array}\right).$$

Then use the value of the inverse to find a solution of the linear system of equations

$$\left\lbrace\begin{array}{cc}
7x + 2y + z &= 21\\
3y-z &= 5\\
-3x + 4y-2z &= -1
\end{array}\right.$$

## Problem 9

Consider the matrix

$$A = \left[\begin{array}{cc}5 & 2\\ -3 & 0\end{array}\right]$$

* (a) Calculate the eigenvalues of $$A$$ by hand.  Carefully show your work.
* (b) For each eigenvalue of $$A$$, find all eigenvectors with that eigenvalue by hand.


## Problem 10

* (a) Find a complex number $$z$$ different from $$1$$ satisfying $$z^7=1$$.  [Hint: think about Euler's formula]
* (b) On a particularly busy day a catering business sold $$85$$ sandwiches, $$65$$ bags of chips, and $$210$$ cookies for a lunch event.  They observed that men each ate $$2$$ sandwiches, $$1$$ bag of chips, and $$4$$ cookies; women ate $$1$$ sandwich, $$1$$ bag of chips, and $$2$$ cookies; kids ate half a sandwich, a bag of chips, and $$3$$ cookies.  Set up, but do not solve, the linear system of equations described by this story problem.
* (c) Give an example of a linear system of equations with no solutions
* (d) Give an example of a linear system of equations with infinitely many solutions
* (e) Describe in your own words one application of eigenvectors and eigenvalues 

