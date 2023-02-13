---
layout: page
title: Worksheet 2 Part 1
permalink: /worksheets/ws2-part1
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

## Additional resources

* <a target="_parent" href="https://en.wikipedia.org/wiki/Harmonic_number">Harmonic numbers (link)</a>
* <a target="_parent" href="https://en.wikipedia.org/wiki/Euler-Mascheroni_constant">Euler-Mascheroni constant (link)</a>
* <a target="_parent" href="https://wcasper.github.io/math107spring2022/worksheets/ws2/loop_practice.m">loop code from lecture (link)</a>


