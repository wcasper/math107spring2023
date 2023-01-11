---
layout: page
title: Homework 4 Part 2
permalink: /homework/hw4/hw4-part2
---

## Functions taking in matrices

The following code defines a function which takes in a matrix $$A$$ and computes the sum of all the entries

```Matlab
function total = sum_entries(A)
#USEAGE: total = sum_entries(A)
#INPUTS: A -- input matrix
#OUTPUT: total -- the sum of the entries of the matrix
#DETAILED DESCRIPTION:
#  this function calculates the sum of the entries of the matrix A

[nrows,ncols] = size(A); # get number of rows and columns

  total = 0;   # sum of the entries

  # sum over all rows
  for j=1:nrows
    # sum over all columns
    for k=1:ncols
      total = total + A(j,k);  # add the (j,k) element of A to the total
    end
  end

end
```


**Problem 2:**
Create a function called *num4plus* which takes in a matrix $$A$$ and returns the number of entries of $$A$$ which are greater than or equal to $$4$$. Do not use any built-in functions! Also don't name any variables *sum*.  You might consider taking the function we have above and **modifying it** to calculate what you want.  In particular, you should
* change the name of the function
* add an if statement inside the second for loop which decides if we should add something to the total
* change this code

```Matlab
total = total + A(j,k);
```

into this code

```Matlab
total = total + 1;
```

Be sure to include good documentation in the file, including
* USEAGE:
* INPUTS:
* OUTPUT:
* DETAILED DESCRIPTION:


