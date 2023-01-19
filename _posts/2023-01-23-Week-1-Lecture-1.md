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

## Running MATLAB

Starting out, we will consider four very basic concepts in MATLAB, namely **variables**,  **functions**, **operations**, and **commands**.  All of these are things that we either create or perform within MATLAB.

There are essentially two basic ways to tell MATLAB to do things:
* typing expressions and commands directly into the **MATLAB command window**
* creating a **MATLAB script** (aka. an **m-file**) and making MATLAB execute the script

Using the command window has the advantage of allowing the user to interact directly with MATLAB, with nothing in between.
It is useful for tasks where the user wishes to use MATLAB as if it were a very advanced graphing calculator, creating and changing variables or plots on the fly.
Given our previous experience with calculators, it is also initially the most intuitive way to use MATLAB.

As they learn more about MATLAB however, most users tend to stop using the command line all together and rely instead on MATLAB scripts (or more advanced **live scripts**).
This is for many reasons, not the least of which is because the operations that the user is performing tend to be significantly more complicated and involve loops and conditionals.
Using a script allows one to rerun large chunks of code, reuse segments of code, debug code, and collaborate in code development, and share code.

### Built-in functions
In later lectures, we will learn how to build our own functions.
However, starting out we will focus on MATLAB's **built-in functions**, the functions which MATLAB already has defined by default.

MATLAB comes with the usual suspects of built-in functions, such as square roots and trigonometric functions.
For example, to take the square root of a function, we should use the built-in function *sqrt*.
The following code calculates the square root of $$20$$.

```MATLAB
sqrt(20)
```

In fact, MATLAB has most of the functions that you are familiar with from calculus and trigonometry, such as the sine function and the exponential and log functions.

```MATLAB
sin(pi)
exp(1)
log(3)
```

Note here that *log* is the natural log function $$\ln(x)$$.  For the base $$10$$ log, use *log10*.

:warning: **Be careful of units for trig functions**: Note that by default **all** inputs for trigonometric functions are in radians instead of degrees, which incidentally is how things should always be once you've taken calculus.

There are many, many built-in functions in MATLAB.  In fact, part of learning MATLAB for the first time is simply memorizing how to use a fairly broad default collection of them.

### Variables
In MATLAB, numbers or more complicated data is stored in certain objects called **variables**.
Just like for functions, MATLAB has certain **built-in** variables, such as *pi* which contains the value of $$\pi$$, accurate to $$16$$ decimal places.
Unlike 

We can create variables using the = symbol.
For example, the following code creates a variable $$x$$ and sets it equal to $$1$$

```MATLAB
x = 1
```

Variable names don't have to be single letters.  In fact, unlike in calculus, its better behavior when you are programming to use meaningful variable names.  For example, if the current temperature of an object is $$65$$ degrees, we could create a variable *temp* and set it to $$65$$.

```MATLAB
temp = 65
```

However, certain variable names are not allowed.  Some general rules are
* a variable name cannot start with a number, ie. *2ndval* or *3turtles*
* cannot involve special characters like \*, \+, \-, /, or !

:warning: **Be careful not to rename built-ins**: For example, if you create a variable called *cos*, then you will no longer be able to access the cosine function!  MATLAB will think you are referring to the variable *cos* and not the function *cos*.  Therefore variable names should not be named things like *size*, *length*, or *sum*.


### Operations

We can do all of the standard algebraic operations of addition, subtraction, multiplication, division, and exponentiation in MATLAB.

```MATLAB
3+7  % ans = 10
4-5  % ans = -1
2*7  % ans = 14
5/2  % ans = 2.5000
2^5  % ans = 32
```

You can also use algebraic operations on variables that you have defined

```MATLAB
x = 3
y = 5
x*y  % ans = 15
```

There are also other operators, including boolean operators and modular operators that we will talk about later.

The order of operations in MATLAB is very important!  The order of precedence of operations from first to last is
1. parentheses
2. powers
3. multiplication and division
4. addition and subtraction

Moreover, operations with the same level of precedence will execute from left to right.

**Question:** In MATLAB, what will be the result of the following input?

```MATLAB
4/4*4
```

<details>
  <summary>Dude it's totally 0.2500.</summary>
  Careful!  The left-most division happens first!
</details>
<details>
  <summary>C'mon, it's actually 4 .</summary>
  This is right!  The first division happens first, giving us 1.  We then multiply this by 4.
</details>

### Commands

Commands are things we tell MATLAB to do which affect the platform itself.
They do things like clear variables, the command window, or the plotting window.
Some useful commands are

| command | description |
| ------- | ----------- |
| clc       | clear the command window |
| clf       | clear the figure window |
| clear x   | clear the variable x from memory |
| clear all | clear all variables from memory |
| exist     | check if a variable exists |
| help      | get help information on a function or topic |
| load      | load data from a file |


## Additional resources
**Hype slides:** <a target="_parent" href="https://wcasper.github.io/math107spring2023/extras/presentations/hype/slides.pdf">pdf of slides (link)</a>



