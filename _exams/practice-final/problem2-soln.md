---
layout: page
title: Practice Final Problem 2 Solution
permalink: /exams/practice-final/problem2-soln
---

## Problem 2

The $$n$$'th **harmonic number** is defined to be

$$h_n = 1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \dots + \frac{1}{n}.$$

Write a function called *harmless(x)* which takes in a real number $$x>1$$ and uses a while loop to calculate the greatest harmonic number $$h_n$$ less than $$x$$.  Your function shoudl return the harmonic number.
Make sure to properly document your code and include a copy in the additional uploads section of the exam.

## Solution

```Matlab
function total = harmless(x)
%USEAGE: total = harmless(x)
%INPUTS:
%OUTPUT:
%DETAILED DESCRIPTION:

  % get the first harmonic number greater than x
  hnum = 0;
  k = 1;
  while hnum < x:
    hnum = hnum + 1/k;
    k = k + 1;
  end

  % subtract the last bit we added
  hnum = hnum - 1/(k-1);


end

```

