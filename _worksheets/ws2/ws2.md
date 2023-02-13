---
layout: page
title: Worksheet 2
permalink: /worksheets/ws2
---

## Directions

This is a self-guided **group worksheet**.  Work with your group members to follow the instructions below and explore!  Note that some of the results will be assessed later, so make sure you do it right!

## For loop practice: harmonic numbers

### Part 1

The $$n$$'th harmonic number is defined to be

$$H_n = \frac{1}{1} + \frac{1}{2} + \frac{1}{3} + \dots + \frac{1}{n}.$$

Create a function called harmonic_number which takes in an integer $$n$$ and returns the $$n$$'th harmonic.  Make sure you include comments for the help message, including the following fields all filled in
* USEAGE: 
* INPUTS:
* OUTPUT:
* DETAILED DESCRIPTION:

Double-check that the function you built is correct by verifying that
$$H_{100}= 5.187377517639621.$$

### Part 2

Mathematics is full of very interesting *intrinsic numbers* that just seem to show up uninvited in all kinds of places, such as $$\pi$$ and $$e$$.  One example you maybe haven't heard of is the **Euler-Mascheroni number**, which is defined as the limit

$$\gamma = \lim_{n\rightarrow\infty} H_n-\ln \left(n + \frac{1}{2}\right)$$

For example, this number shows up in exponential integrals, Laplace transforms, and the study of the Riemann zeta function.
The number is also extremely mysterious.  For example, we don't know even know whether $$\gamma$$ is rational or irrational!

In this part, let's use the function we made to get a good initial approximation of $$\gamma$$ by running the code

```Matlab
format long
gamma = harmonic_number(1000000000)-log(1000000000)
```

This should return the value of $$\gamma$$ accurate to about $$11$$ decimal places.  Note that by using format long first, we are making sure MATLAB prints out lots of digits for us to look at.  Remember this value for the self-assessment later!

## While loop practice: digital root

### Part 1

The **sum of the digits** of a number is the new integer we get by adding the digits of the previous integer together.

**Example:** the sum of the digits of $$8675309$$ is $$8+6+7+5+3+0+9=38$$

In this part, we will create a function sum_digits which takes in an integer $$n$$ and returns the sum of the digits of $$n$$.

To do so, we will need some code to get the $$n$$'th digit.
To do this, we will use the **mod** function and the **floor function**.

The *floor* function is very simple to understand.
It takes in a number $$x$$ which may not be an integer, and returns the biggest integer less than $$x$$.
So for example

```Matlab
floor(2.1)   % returns 2
floor(pi)    % returns 3
```

The *mod* function requires a bit more explanation.
Recall that given integers $$a,b$$ with $$b > 0$$, we can simplify a fraction $$a/b$$ by writing

$$
\frac{a}{b} = q + \frac{r}{b}
$$

for some unique integers $$q$$ and $$r$$ with $$0\leq r < b$$.
The integer $$r$$ which remains divided by $$b$$ is called the **remainder** term.

The mod function *mod(a,b)* will return the remainder term obtained by dividing $$a$$ by $$b$$.
So for example

```Matlab
mod(2,3)       % returns 2
mod(10,5)      % returns 0
mod(101,7)     & returns 3
mod(22,7)      & returns 1
```

Using the mod function, the following code will produce the $$d$$'th digit of a number $$n$$ 

```Matlab
digit = mod((n - mod(n,10^(d-1)))/10^(d-1),10)
```

**Problem:** Complete the following code to create a function which takes in an integer $$n$$ and returns it's $$d$$'th digit.

```Matlab
function digit = getdigit(n,d)
%USAGE:  getdigit(n,d)
%INPUTS:
%  n -- an integer
%  d -- the digit we want
%OUTPUT:
%  digit -- the d'th digit
%Detailed Description:
%  This function calculates the d'th digit of an integer n.

% Divide by a power of 10 and use the floor function to get rid of the first d-1 digits of n
n = floor(n/???);

% Now the first digit of n should be the one we want.
% Use the mod function to get the first digit

digit = mod(n,???);

end
```


**Problem:** Create a function called *sum_of_digits* which takes in an integer $$n$$ and returns the sum of its digits.
You may need to combine the base $$10$$ log function and the *floor* function to find a way to calculate the number of digits of an integer $$n$$.
Double-check that the function you built is correct by verifying that the digit sum in the example $$n=$$8675309$$.

### Part 2

The **digital root** of a positive integer is the one-digit number we end up at by repeatedly summing the digits until we end up with a single digit number.

**Example:** the sum of the digits of $$72263$$ is $$20$$.  The sum of the digits of $$20$$ is $$2$$, so the digital root of $$772263$$ is $$2$$.

**Example:** the sum of the digits of $$99191178478$$ is $$64$$.  The sum of the digits of $$64$$ is $$10$$.  The sum of the digits of $$10$$ is $$1$$, so the digital root of $$99191178478$$ is $$1$$

Use a while loop to create a program called digital_root which takes in a positive integer $$n$$ and returns its digital root.  You should use the sum_digits function that you determined above.

Double-check that the function you built is correct by verifying that the digit sum in the example above.

### Part 3

One of the interesting properties of digital roots is that a number $$n$$ is divisible by $$9$$ if and only if its digital root is $$9$$.

**Example:** the digital root of $$18$$ is $$9$$ and as we know $$18 = 9\times 2$$.

**Example:** the digital root of $$19062$$ is $$9$$ and we can check $$19062 = 2118\times 9$$.

Determine whether the number $$12312310134132$$ is divisible by $$9$$.

## Additional resources

* <a target="_parent" href="https://en.wikipedia.org/wiki/Harmonic_number">Harmonic numbers (link)</a>
* <a target="_parent" href="https://en.wikipedia.org/wiki/Euler-Mascheroni_constant">Euler-Mascheroni constant (link)</a>
* <a target="_parent" href="https://wcasper.github.io/math107spring2022/worksheets/ws2/loop_practice.m">loop code from lecture (link)</a>


