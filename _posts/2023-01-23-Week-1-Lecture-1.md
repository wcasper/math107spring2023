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

## Matlab first steps

### Basic commands
Matlab comes with the usual suspects of built-in functions, such as square roots and trigonometric functions
```Matlab
sqrt(20)
sin(pi)
exp(1)
```
Note that by default **all** inputs for trigonometric functions are in radians instead of degrees, which incidentally is how things should always be once you've taken calculus.

### Variables
We can create variables using the = symbol.
For example, the following code creates a variable $$x$$ and sets it equal to $$1$$
```Matlab
x = 1
```
Variable names don't have to be single letters.  In fact, unlike in calculus, its better behavior when you are programming to use meaningful variable names.  For example, if the current temperature of an object is $$65$$ degrees, we could create a variable $$\text{temp}$$ and set it to $$65$$.
```Matlab
temp = 65
```


## Additional resources
**Hype slides:** <a target="_parent" href="https://wcasper.github.io/math107spring2023/extras/presentations/hype/slides.pdf">pdf of slides (link)</a>



