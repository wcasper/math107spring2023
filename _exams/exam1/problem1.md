---
layout: page
title: Exam 1 Problem 1
permalink: /exams/exam1/problem1
---

## Problem 1

Write a MATLAB script (m-file) which performs the following actions.
Be sure to carefully comment your code.

a) Create a variable $$x$$ which is a row vector whose entries are $$1000$$ evenly spaced entries from $$3$$ to $$7$$ (including $$3$$ and $$7$$) in increasing order.

b) Create a variable $$p$$ whose entries are the odd integers between $$0$$ and $$1000$$, ie. $$p= [1\ 3\ 5\ \dots\ 999]$$.

c) Create a variable $$A$$ whose value is equal to the matrix

$$A = \left(\begin{array}{ccccc}
1 & 1 & 1 & 1 & 1\\
0 & 1 & 1 & 0 & 1\\
0 & 1 & 1 & 0 & 1\\
0 & 1 & 1 & 1 & 1\\
0 & 0 & 0 & 0 & 0\\
\end{array}\right).$$

d) Use the MATLAB commands

```Matlab
H = hilb(9);
J = ones(3,9);
```

to create a particular $$9\times 9$$ matrix $$H$$ and $$3\times 9$$ matrix $$J$$.

Then create a $$12x9$$ matrix $$Q$$ by appending $$J$$ to the top of the matrix $$H$$.

e) Create a matrix $$F$$ by first setting $$F=H$$ and then setting all of the entries of $$F$$ which are $$\leq 0.1$$ equal to $$0$$.


