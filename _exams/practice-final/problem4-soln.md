---
layout: page
title: Practice Final Problem 4 Solution
permalink: /exams/practice-final/problem4-soln
---

## Problem 4


Write a MATLAB script that uses the least squares approximation to find a polynomial

$$y = ax^3 + bx^2 + cx  + d$$

of degree three which most closely fits the following data

| x |  y  |
| - | --- |
| 1 |   0 |
| 2 |   2 |
| 3 |   9 |
| 4 |  26 |
| 5 |  65 | 
| 6 | 124 | 

Your script should explicitly set the variables $$a,b,c,d$$ to be the coefficients above.


## Solution

```Matlab

% create overdetermined linear system Ax = y
A = [1 1 1 1; 8 4 2 1; 27 9 3 1; 64 16 4 1; 125 25 5 1; 216 36 6 1];
y = [0; 2; 9; 26; 65; 124]

% calculate symmetric system Cx = z
C = A'*A;
z = A'*y;

% solve the symmetric system
x = inv(C)*z;

% set a,b,c,d appropriately
a = x(1);
b = x(2);
c = x(3);
d = x(4);

```

