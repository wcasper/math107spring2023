---
layout: post
---

Notes and highlights from lecture

## Today's Objectives

* Syllabus
* Course hype!
* MATLAB first steps

## Reading assignments

* Read the syllabus
* Familiarize yourself with the CANVAS webpage

## Course intro/hype slides
This course is a 50/50 mix of **linear algebra** and **computer programming**.

### Linear algebra
Linear algebra is perhaps one of the most widely applicable mathematics courses in university.  In fact, linear algebra plays a central role in virtually every other topic in modern mathematics!  Even better, it features a ton of real-world applications including the following extremely incomplete list of examples: digital image processing, machine learning, curve fitting, weather forecasting, data analysis, computer vision, computational physics, and engineering.

Check the following page for several examples of specific <a target="_parent" href="https://wcasper.github.io/math107spring2023/extras/example-problems">cool problems that can be solved using linear algebra (link)</a>.

### Computer programming
For many of the real-world applications, the linear algebra problems are simply too big to be reasonably done by hand and we need to learn how to use a computer.  Even then, some particularly large problems can take a very long time.  In this class we will learn how to perform some basic programming tasks using MATLAB in order to find numerical solutions of some linear algebra problems.

## MATLAB first steps

MATLAB is a programming platform designed for scientists and engineers to be able to quickly perform various numerics, such as
* matrix manipulation
* data and function plotting
* creating and implementing numerical routines or functions

There are three basic objects in MATLAB, namely **variables**,  **functions**, and **commands**.

### Built-in functions
In later lectures, we will learn how to build our own functions.
However, starting out we will focus on MATLAB's **built-in functions**, the functions which MATLAB already has defined by default.

MATLAB comes with the usual suspects of built-in functions, such as square roots and trigonometric functions.
For example, to take the square root of a function, we should use the built-in function *sqrt*.
The following code calculates the square root of $$20$$.

```MATLAB
sqrt(20)
```

In fact, MATLAB has most of the functions that you are familiar with from calculus and trigonometry, such as the sine function and the exponential function.
```MATLAB
sqrt(20)
sin(pi)
exp(1)
```

:warning: **Be careful of units for trig functions**: Note that by default **all** inputs for trigonometric functions are in radians instead of degrees, which incidentally is how things should always be once you've taken calculus.

### Variables
We can create variables using the = symbol.
For example, the following code creates a variable $$x$$ and sets it equal to $$1$$

```MATLAB
x = 1
```

Variable names don't have to be single letters.  In fact, unlike in calculus, its better behavior when you are programming to use meaningful variable names.  For example, if the current temperature of an object is $$65$$ degrees, we could create a variable $$\text{temp}$$ and set it to $$65$$.

```MATLAB
temp = 65
```

## Additional resources
**Hype slides:** <a target="_parent" href="https://wcasper.github.io/math107spring2023/extras/presentations/hype/slides.pdf">pdf of slides (link)</a>



