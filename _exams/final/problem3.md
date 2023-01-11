---
layout: page
title: Final Problem 3
permalink: /exams/final/problem3
---

## Problem 3

When you are producing a graph for an article, it is good to use different colors for different curves to help tell them apart.
Furthermore, since your article might get printed on a black-and-white printer, it is also important to use different linestyles (eg. solid '-' or dashed '--', or circles 'o') for different curves.  This makes sure different curves can be distingushed from one another, even when the images are not reproduced in color.

For this problem, you will write a script which will plot the first three Bessel functions in the same figure.
The Bessel functions are such important special functions, that MATLAB already has a way to calculate them automatically!
To do so you will use the command *besselj(n,x)* which returns the value of the $$n$$'th bessel function at position $$x$$.

For example, the code

```Matlab
y = besselj(2,1.1)
```
sets $$y$$ equal to the value of the second Bessel function at $$x = 1.1$$


Write a script which does the following

* (a) Creates a variable *x* whose values are $$100$$ evenly spaced points between $$0$$ and $$20$$
* (b) Creates a variable *y0* whose valeus are the values of the $$0$$'th Bessel function at each of the $$x$$-values in (a)
* (c) Creates a variable *y1* whose valeus are the values of the $$1$$'st Bessel function at each of the $$x$$-values in (a)
* (d) Creates a variable *y2* whose valeus are the values of the $$2$$'nd Bessel function at each of the $$x$$-values in (a)
* (e) Plots *y0*, *y1*, and *y2* on the same graph.  Be sure to use different colors and different linestyles for each figure.
* (f) Adds a legend which labels what Bessel function each curve is.
* (g) Adds a title called "The First Three Bessel Functions".
* (h) Labels the $$x$$-axis as "x" and the $$y$$-axis as "Bessel value"


Make sure to properly document your code!
Upload your function as a MATLAB .m file.  You may wish to run and test your code using MATLAB before you upload it.

