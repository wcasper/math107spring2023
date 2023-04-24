---
layout: page
title: Worksheet 8
permalink: /worksheets/ws8
---

## Directions

This is a self-guided **group worksheet**.  Work with your group members to follow the instructions below and explore!  Note that some of the results will be assessed later, so make sure you do it right!

## The Cayley Hamilton Theorem

### Evaluating polynomials on matrices

Consider a polynomial

$$p(x) = a_0 + a_1x + a_2x^2 + \dots + a_dx^d.$$

If $$A$$ is an $$n\times n$$ matrix, we can *"plug in"* the matrix $$A$$ into the polynomial, to get a new matrix

$$p(A) = a_0I + a_1A + a_2A^2 + \dots + a_dA^d$$

where here $$I$$ is the identity matrix.

**Example:**
Consider the polynomial $$p(x) = x^2 + 2x + 3$$ and the matrix

$$A = \left[\begin{array}{cc}1 & 2\\ 0 & -1\end{array}\right].$$

Then

$$\begin{align*}
p(A) &= A^2 + 2A + 3I\\
     &= \left[\begin{array}{cc}1 & 2\\ 0 & -1\end{array}\right]^2 + 2\left[\begin{array}{cc}1 & 2\\ 0 & -1\end{array}\right] + 3\left[\begin{array}{cc}1 & 0\\ 0 & 1\end{array}\right]\\
     &= \left[\begin{array}{cc}1 & 0\\ 0 & 1\end{array}\right] + \left[\begin{array}{cc}2 & 4\\ 0 & -2\end{array}\right] + \left[\begin{array}{cc}3 & 0\\ 0 & 3\end{array}\right] = \left[\begin{array}{cc}6 & 4\\ 0 & 2\end{array}\right]
\end{align*}$$


* **Problem 1:** Calculate the value of $$p(A)$$ for

$$p(x) = x^2 + 3x + 2,\quad A = \left[\begin{array}{cc}2 & 1\\ 3 & 0\end{array}\right].$$

### The Cayley Hamilton Theorem

Recall that the **characteristic polynomial** of a matrix $$A$$ is

$$p(x) = \det(A-xI).$$

One of the coolest theorems arising from the theory of eigenvectors and eigenvalues, is the Cayley-Hamilton theorem.

**Theorem (Cayley-Hamilton):**  Let $$p(x)$$ be the characteristic polynomial of a matrix $$A$$.  Then

$$p(A) = 0I.$$

In other words, when we plug in a matrix into its own characteristic polynomial, we get the zero matrix.

**Example:** The characteristic polynomial of 

$$A = \left[\begin{array}{cc}1 & 2\\ 0 & -1\end{array}\right].$$

is $$p(x) = x^2-1$$ and we calculate

$$p(A) = A^2-I = \left[\begin{array}{cc}0 & 0\\0 & 0\end{array}\right].$$


**Problem 2:**  Find a $$2\times 2$$ matrix $$A$$ satisfying

$$A^2 = 3A.$$

### Inverses of matrices

The Cayley-Hamilton theorem has many useful applications.  One is a clever new way to calculate the inverse of a matrix.

**Theorem:** Suppose that the characteristic polynomial $$p(x)$$ of $$A$$ is

$$p(x) = \det(A-xI) = a_0 + a_1x + a_2x^2 + \dots + a_nx^n.$$

Then $$A$$ is invertible if and only if $$a_0\neq 0$$, in which case

$$A^{-1} = -\frac{1}{a_0}(a_1I + a_2A + \dots + a_nA^{n-1}).$$

**Problem 3:**  Use the previous theorem to calculate the inverse of the matrix

$$A = \left[\begin{array}{ccc} 1 & 0 & 1\\ 0 & 1 & 1\\2 & 1 & 0\end{array}\right].$$




