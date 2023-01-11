---
layout: page
title: Homework 1 Part 1
permalink: /homework/hw1/hw1-part1
---

## Variables and Algebraic Operations
In this part of the assigment, we will practice performing algebraic operations and defining variables with MATLAB.  Please use the following template when submitting your solutions:

* [solution m-file template](hw1_part1.m)

**Problem 1:**

Create variables $$a$$, $$b$$, and $$c$$ in the script below, defined by

* $$a = \frac{2-3^\pi}{6} + e^{-\sqrt{2}}\sin(\pi/12)$$
* $$b = \sqrt{\pi + 1}\frac{e^3-3}{e^3-5}$$
* $$c = 1.2^{3.1} + (2 + 3\sqrt{2})/4$$

**Problem 2:**

Define variables $$x$$, $$y$$, $$z$$, and $$w$$ by

* $$x = 2.1$$
* $$y = 3.3$$
* $$z = (y+x)/(y-x)$$
* $$w = x^y$$

Then using these variables, calculate the following quantity

$$q = \frac{x^2-y^2}{z^2-w^2} + xyzw$$

**Problem 3:**

Newton's Law of Cooling says that the temperature $$T$$ of an object as a function of time $$t$$ is

$$T(t) = T_{\text{room}} + (T_0-T_{\text{room}})e^{-rt},$$

where here $$T_{\text{room}}$$ is the temperature of the room, $$T_0$$ is the initial temperature of the object, and $$r$$ is the heat capacitance of the object (how well it retains it's temperature).

We can find the inverse of the above function to get an expression for how long it takes an object to reach a temperature $$T$$.   Doing so gives the equation

$$t = -\frac{1}{r}\ln\left(\frac{T-T_{\text{room}}}{T_0-T_{\text{room}}}\right).$$

Joe stands accused of murdering Pete.  Indeed, a witness claims to have caught Joe in the act at 6PM on June 10th.  Joe's lawyer, Ace Attorney Phoenix Wright, is reviewing a key piece of evidence.  The victim's body was found at 9PM on June 10th in a room which is $$18$$  degrees celsius, at which point the detective measured the body temperature was $$20$$ degrees celsius.  Furthermore, the specific heat capacitance for a human body is approximately $$0.13353$$ degrees celsius per hour and that a living human body is $$37$$ degrees celsius.  Use the following steps to help Pheonix defend his client by proving that Pete must have been killed much earlier.
* create variables $$T_{room}$$ and $$r$$ and set them to the appropriate values
* also create a variable $$T=20$$ for the body temperature when it was discovered and $$T_0=37$$ (average body temp in Celsius) for the body temperature at the moment of death
* use the above formula to calculate how long the body has been dead for

