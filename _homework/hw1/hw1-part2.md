---
layout: page
title: Homework 1 Part 2
permalink: /homework/hw1/hw1-part2
---

## Vectors, Matrices and Images

In this part of the assigment, we will answer some questions which are concerned with vectors, matrices, and playing with images in MATLAB.  Please use the following template when submitting your solutions:

* [solution m-file template](hw1_part2.m)

Also for part of this assignment, you will need the image file

* [thematrix.jpg](thematrix.jpg)

**Problem 1:**

In this problem, we will practice creating vectors and matrices.

* Use the colon operator *:* to create a row vector $$x$$ whose entries are the odd numbers between $$3$$ and $$101$$ in ascending order
* Use the command *linspace()* to create a row vector $$y$$ consisting of $$1000$$ evenly spaced points in the closed interval $$[-2,3]$$ in ascending order
* in MATLAB, create a matrix $$A$$ whose value is

$$A = \left(\begin{array}{ccc}
4 & 3 & 1\\
2 & 1 & 2\\
1 & 4 & 4
\end{array}\right)$$

**Problem 2:**

In this problem, we will play with matrices coming from pictures.  Don't forget to use the semicolon *;* in order to avoid massive amounts of data from being spammed into the output!

* use the command *imread()* to load an image called "thematrix.jpg" into a matrix *B*
* use the command *rgb2gray()* to create a matrix *B_gray* which is the black and white version of *B*
* use the *size* command to create a vector *q* whose values are the pixel dimensions of *B*
* use *q* to calculate the total number of pixels of *B* and set the variable npixels equal to this value



