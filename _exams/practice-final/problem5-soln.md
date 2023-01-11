---
layout: page
title: Practice Final Problem 5 Solution
permalink: /exams/practice-final/problem5-soln
---

## Problem 5


Write a MATLAB function called *finalMAT(m,n)* that uses conditionals and nested for loops to create an $$m\times n$$ matrix $$A$$ whose $$(j,k)$$ entry is

$$A(j,k) = \left\lbrace\begin{array}{cc}
1 & |j + k| < (m+n)/8\\
0 & \text{otherwise}
\end{array}\right.$$

## Solution

```Matlab
function A = finalMAT(m,n)
%USEAGE  A = finalMAT(m,n)
%INPUTS:
%OUTPUT:
%DETAILED DESCRIPTION:

  A = zeros(m,n);

  for j = 1:m
    for k = 1:n
      if abs(j+k) < (m+n)/8
        A(j,k) = 1
      else
        A(j,k) = 0
      end
    end
  end

end

```

