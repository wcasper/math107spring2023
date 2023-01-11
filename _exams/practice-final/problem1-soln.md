---
layout: page
title: Practice Final Problem 1 Solution
permalink: /exams/practice-final/problem1-soln
---

## Problem 1

Create a function called *intsum(m,n)* which takes in integers $$m$$ and $$n$$ with $$m\leq n-1$$ and calculates the sum

$$m + (m + 1) + (m+2) + \dots + n$$

using a *for loop*.  Your function should return the value of the sum.
Make sure to properly document your code and include a copy in the additional uploads section of the exam.

## Solution

```Matlab
function total = intsum(m,n)
%USEAGE: total = intsum(m,n)
%INPUTS:
%OUTPUT:
%DETAILED DESCRIPTION:

  total = 0;
  for k = m:n
    total = total + k;
  end
end

```
