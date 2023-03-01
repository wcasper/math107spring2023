---
layout: page
title: Practice Exam 1 Problem 6
permalink: /exam1/practice-exam1/problem6
---

## Problem 6

a) Determine the final values of the variables *x*, *y*, and *z* after the list of commands are executed in the command window.
You must show your work by hand.

```Matlab
x = 1;
y = 3;
z = 2;
x = y-x;
z = x + y;
y = 2*y-z;
```

b) Consider the function defined below.

```Matlab
function [x,z,y] = examFun(x,y)
y = y + 2*x;
x = -4*y;
z = 3*x-y;
end
```

Determine the final values of the variables *x*, *y*, *z*, *a*, and *b* after running the following lines in the command window.  You must show your work by hand.

```Matlab
a = 1;
b = 4;
x = 2;
y = 3;
z = -1;
[z,y,b] = examFun(a,x)
```

