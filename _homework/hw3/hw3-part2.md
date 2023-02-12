---
layout: page
title: Homework 3 Part 2
permalink: /homework/hw3/hw3-part2
---

In this part of the homework you will write a function called *gaussian_area* which will approximate the value of the integral of $$e^{-x^2}$$ on a specified interval.
To do so, please use the template
* template for homework 3 part 2: [gaussian_area.m](gaussian_area.m)
You can also use the following script to check your work
* script for checking homework 3 part 2: [hw3_part2_check.m](hw3_part2_check.m)
Just make sure that the function you made is in the current working directory when you run it!

## Functions and loops

**Problem 2:**

As we found out back in calculus, some functions are really very hard to integrate!  A really good example of this is the gaussian function

$$f(x) = e^{-x^2}$$

In this problem, we will numerically approximate integrals of this function.

### Riemann sums

Let $$f(x)$$ be a continuous function.  The simplest way to approximate an integral

$$\int_a^b f(x)dx$$

is to understand that this is the area under the curve defined by $$f(x)$$ and can be approximated as a sum of rectangles, or more formally in terms of a Riemann sum.  Remember, the right Riemann sum of a function $$f(x)$$ on an interval $$[a,b]$$ is given by

$$\sum_{k=1}^n f(x_k)\Delta x,\quad\text{where}\ \Delta x= \frac{b-a}{n},\ x_k = k\Delta x + a$$

Write a function called

```Matlab
gaussian_area(a,b,n)
```

which takes in the endpoints of the interval of integration $$[a,b]$$ and the number of rectangles to be used and returns the corresponding right Riemann sum with $$n$$ rectangles approximating the area under the curve $$f(x) = e^{-x^2}$$.
Make sure to add some comments in the file to help explain what your calculation is doing.

