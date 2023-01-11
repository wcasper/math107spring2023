---
layout: page
title: Worksheet 3
permalink: /worksheets/ws3
---

## Directions

This is a self-guided **group worksheet**.  Work with your group members to follow the instructions below and explore!  Note that some of the results will be assessed later, so make sure you do it right!

## Common Function Mistakes

### Part 1

Your friend shows you the following file called square.m which is supposed to define a function returning the square of its input value.

```Matlab
function result = square(x)
%USEAGE: result = square(x)
%INPUTS: x -- what we put into the function
%OUTPUT: result -- the square of the input
%DETAILED DESCRIPTION: this function takes in a value x and returns its value squared.
  y = x^2
end
```

Your friend has tried it out in MATLAB and says that it's working.  For example, he shows you the following output from his MATLAB terminal

```Matlab
>> square(3)

y =

     9
```

However, your friend notices that they can't actually get the output at all.  For example, when they run

```Matlab
a = sin(2);
```

the variable $$a$$ is set to the value of the output function.  However, when your friend tries to use their function for the same purpose

```Matlab
b = square(2);
```

they get the following output

```Matlab
y =

     4

Output argument "result" (and maybe others) not assigned during call to
"square".
```

**Problem:** Help your friend figure out what is wrong with their code!  What should they do in order to fix their code?

### Part 2

Your friend shows you the following file called cubed.m which is supposed to define a function which returns the cube of its value.

```Matlab
function xcube = cube(x)
%USEAGE: xcube = cube(x)
%INPUTS: x -- what we put into the function
%OUTPUT: xcube -- the cube of the input
%DETAILED DESCRIPTION: this function takes in a value x and returns its value squared.
  xcube = x^3;
end
```

However, when they try to run the code they get the following error
```Matlab
>> cube(2)
Unrecognized function or variable 'cube'.
```

**Problem:** What is the issue with your friends code?  How can they fix it?

## Common loop mistakes

### Part 3

In class, we practiced doing sums with for loops.  Your friend wants to do the same thing, but with while loops in order to get some extra practice.  He tries the following code.

Your friend has the following block of code which is meant to calculate the sum of the integers between $$1$$ and $$10$$.

```Matlab
i = 3;
sum = 0;
while (i <= 10)
   sum = sum +  i;
end
```
However, when they run the code it seems to go on and on forever.

**Problem:** Explain what is wrong with the code and how to fix it.

### Part 4

Your friend has written the following code to calculate $$1+2^2+3^2+\dots+(99)^2$$

```Matlab
for k=1:99
  total = total+k^2;
end
```

However, it produces the following output

```Matlab
Unrecognized function or variable 'total'.
```

**Problem:** Explan what is wrong with the code and how to fix it.

## Part 5

### Discussion Topic

Think back to your programming experience thus far.  If you were teaching a friend how to code, can you think of some pitfall that you ran into that you would make sure to point out?

**Problem:** Discuss this with your group members and be ready to share with the class!

