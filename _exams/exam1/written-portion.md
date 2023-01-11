---
layout: page
title: Exam 1 Written Portion
permalink: /exams/exam1/written-portion
---

## Problem 6

For this problem, consider the matrix

$$Q = \left(\begin{array}{ccc}
  8 &  6 & 7\\
  5 &  3 & 0\\
  9 &  x & \heartsuit\\
  f &  1 & 43\\
 \Delta & z &  \clubsuit
\end{array}\right)$$

a) Write down the values of $$Q(5,1)$$, $$Q(3,3)$$, and $$Q(2,3)$$.  Be sure to specify which is which.

b) Write down an MATLAB expression which will create the $$4\times 2$$ submatrix of $$Q$$ obtained by deleting the middle row and the middle column

c) Write down the value of the matrix $$Q(1:2:end,1:end)$$

## Problem 7

a) Determine the final values of the variables *x*, *y*, and *z* after the list of commands are executed in the command window.
You must show your work by hand.

```Matlab
x = 3;
y = 1;
z = 9;
x = y-z;
z = x + 2*y;
y = 2*y-z + x;
```

b) Consider the function defined below.

```Matlab
function [a,b,c] = examFun(x,y)
a = 2*x - y
b = x^2-y
c = a + b
end
```

Determine the final values of the variables *x*, *y*, *z*, *a*, and *b* after running the following lines in the command window.  You must show your work by hand.

```Matlab
a = 1;
b = 4;
x = 2;
y = 3;
z = -1;
[z,y,b] = examFun(x,a)
```

## Problem 8

a) Find scalar values $$a$$ and $$b$$ satisfying

$$a\binom{2}{-3} + b\binom{1}{4} = \binom{8}{-23}.$$

b) Find a vector $$\vec v$$ satisfying

$$3\binom{2}{5} -3\vec v = \binom{12}{18}$$

c) Find a matrix $$H$$ such that

$$
2H
+
4\left(\begin{array}{cc}
1 & -2\\2 & 1
\end{array}\right)
=
2\left(\begin{array}{cc}
2 & 3\\-4 & 1
\end{array}\right)
$$


## Problem 9

Consider the following code

```
x = 1;
y = 1;
while(y < 30)
  z = x+y;
  x = y;
  y = z;
end
```

Determine the values of *x* and *y* at the end of the code block.  Be sure to carefully show your work.


## Problem 10

Without using any built-in MATLAB functions, write down a function called *odd_sum* which takes in a value *n* and returns the sum of the odd integers between $$1$$ and $$n$$.
Make sure that your function is well-documented!


