---
layout: post
---

Notes and highlights from lecture

## Today's Objectives

* user defined functions
* conditionals

## Reading assignments

* <a target="_parent" href="../../../extras/textbook.pdf">primary text (link)</a>: chapter 6, 7

## Creating Functions

Usually, we can make our MATLAB programs much more convenient by defining new
functions that are not built in to MATLAB by default.  To define our own function, we need to make a new file.

For example if we create a file called sphere_volume.m whose contents are

```Matlab
function volume = sphere_volume(radius)
% Usage: volume = sphere_volume(radius)
% Inputs:
%   radius - the radius of a sphere
% Output:
%   volume - the volume of the sphere with this radius
% Detailed Description:
%   This function takes in the radius of a sphere and calculates its volume.

  volume = (4.0/3.0)*pi*radius^3;
end
```

then we can now use the command sphere_volume in new m-files as well as in MATLAB interactively

```Matlab
sphere_volume(3)    % returns 36*pi
```


Note that there are a bunch of comments in the function.  Not only are these important for purposes of proper documentation, but they play an active role in helping other users to use your function via the help command, which prints out these comments.  This it is very important to include
* Usage: a description of how the function should be used
* Inputs: what you need to supply to the function as input
* Output: what the output should be

```Matlab
help sphere_volume   % prints out the help text you created
```

We can also accept more than one input and have more than one output.  Here's another example, returning the area of a rectangle
```Matlab
function area = rectangle_area(length,width)
% Usage: area = rectangle_area(length,width)
% Inputs:
%   length - the length of the rectangle
%   width  - the width of the rectangle
% Output:
%   area - the area of the rectangle
% Detailed Description:
%   This function takes in the dimensions of a rectangle and calculates its area.

  area = length*width;
end
```

## Conditional statements

### Logical operators

We already know that the = operator sets a variable equal to a value.  To check *if* a variable is equal to a value, we can use ==.  In fact, we can check a variety of things using **logical operators**.

| Operator | Meaning                     |
| -------- | --------------------------- |
|    ==    |  equals                     |
|    ~=    | does not equal              |
|    <     | is less than                |
|    >     | is greater than             |
|    >=    | is greater than or equal to | 
|    <=    | is less than or equal to    | 

```Matlab
x = 2;  % sets x equal to 2
x == 3  % returns 0  (meaning False)
x == 2  % returns 1  (meaning True)
x ~= 3  % returns 1  (meaning True)
x >=    % returns 0  (meaning False)
```

Statements like these are called **boolean statements**.  In MATLAB, $$1$$ is
used in place of True and $$0$$ is used in place of False, but they technically
have their own data type called **logical**.  In fact in MATLAB, true is
defined to be the logical value 1 and false is defined to be the logical value
0.

We can also combine and negate various boolean statements.

| Operator | Meaning      |
| -------- | ------------ |
|    ~     | not          |
|    \|    | or           |
|    &     | and          |
|    xor   | exclusive or |

Putting together logical statements using these operators is called **propositional calculus**.

```Matlab
x = 2;
y = 3;

~ x == 2  % returns false
~ x == 3  % returns true
x == 2 & y == 3    % returns true
x == 2 & y == 2    % returns false
x == 2 | y == 2    % returns true
x == 2 | y == 3    % returns true
xor(x == 2,y == 3) % returns false
```

### Using if, elseif, else

We can write code that executes only under a certain condition using the if, elseif, and else commands.  Suppose for example, we want make the piecewise defined function

$$f(x) = \left\lbrace\begin{array}{cc}
x^2 & x < 0\\
0   & 0 \leq x < 1\\
x-1 & x \geq 1
\end{array}\right.$$

In MATLAB, we could use the code in a file myfunction.m

```Matlab
function output = myfunction(x)
% Usage: output = myfunction(x)
% Inputs:
%   x - input function
% Output:
%   output - what the piecewise function produces
% Detailed Description:
%   Just a fun function demonstrating how to use conditional statements

  if x < 0
    output = x*x
  elseif 0 <= x and x < 1
    output = 0
  else
    output = x-1
  end
```

### Using switch statements

As an alternative to if-statements, we can use switch statements

```Matlab
name = "James"

switch(name)
  case {"Brittany", "Phil", "Thomas"}
    display("Your name is Brittany, Phil or Thomas")
  case {"Elanor", "Malcolm"}
    display("Your name is Elanor or Malcolm")
  else
    display("I don't know what your name is")
  end
```

The output of this code is "I don't know what your name is".

* ****


