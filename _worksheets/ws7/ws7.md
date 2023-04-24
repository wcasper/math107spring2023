---
layout: page
title: Worksheet 7
permalink: /worksheets/ws7
---

## Directions

This is a self-guided **group worksheet**.  Work with your group members to follow the instructions below and explore!  Note that some of the results will be assessed later, so make sure you do it right!

## Linear models and home prices

A lot of situations in the real world involve many variables.
Think about, for example, the cost $$C$$ of houses in a particular neighborhood.
The cost will depend on the interior square footage of the property, the exterior square footage (how big the yard is), the number of bedrooms, the number of bathrooms, and many other variables.

A group of variables are **linearly related** if they satisfy a **linear equation**.  For example, if the cost $$C$$ of a house is equal to $$100$$ dollars times the interior square footage $$x$$ plus $$10000$$ dollars times the number of bedrooms $$n$$, then we can write

$$C = 100x + 10000n.$$

Of course, in reality the relationship between the cost of a house and the various varibles describing the house is likely much more complicated.
Even so, the complicated relationship can be approximated with a linear equation, referred to as a **linear model** for the data.

For example, suppose that in the town of Coolsville, the prices of some various houses versus the interior square footage $$x$$ is found to be

| Cost $$C$$ | Interior square footage $$x$$ |
| ---------- | ----------------------------- |
|   115440   |             1000              |
|   119145   |             1250              |
|   117923   |             1200              |
|   122448   |             1500              |
|   120969   |             1425              |
|   126195   |             1750              |

These data points are plotted as the blue circles in the image below.
Notice that they lie very close to the red line whose equation is

$$C = 15x + 100000.$$

This linear model can now be used to **predict costs**.

![linear fit](/math107spring2023/worksheets/ws6/linearfit.jpg)

**Question:** Suppose you have a friend who owns a house in Coolsville that he wants to sell.  If the interior square footage of the house is $$1300$$, what would you estimate your friend will be able to sell his home for?

**Answer:** We can plug $$x=1300$$ into our linear model, obtaining $$C=119500$$ for a good guess what he can sell his property for.

## Linear regression

As we have seen above, linear models can help us understand and predict housing prices.  However, how do we find the right linear model for a particular data set?  There are many different methods, the simplest of which is **linear regression**.

In linear regression, we start with a data set with $$n$$ data points

| $$x_1$$ | $$x_2$$ | $$x_3$$ | $$\dots$$ | $$x_n$$ |
| ------- | ------- | ------- | --------- | ------- |
| $$y_1$$ | $$y_2$$ | $$y_3$$ | $$\dots$$ | $$y_n$$ |

and we try to find values of $$m$$ and $$b$$ such that the linear model

$$y = mx + b$$

most closely approximates the data.  Specifically, we want to find values which minimize the squared error between the $$y$$-values predicted by the model and the actual observed $$y$$-values

$$E^2 = (mx_1 +b - y_1)^2 + (mx_2 + b-y_2)^2 + (mx_3 + b-y_3)^2 + \dots + (mx_n + b -y_n)^2.$$

To do this, we can visualize our situation as an overdetermined linear system of equations with two unknown variables $$m$$ and $$b$$.

$$A
\left[\begin{array}{c}m \\b
\end{array}\right]
 = \vec y,\quad\text{for}\ 
A = \left[\begin{array}{cc}
x_1 & 1\\
x_2 & 1\\
x_3 & 1\\
\dots\\
x_n & 1\\
\end{array}\right]
\left[\begin{array}{c}m \\b
\end{array}\right],\ \ 
\vec y  = 
\left[\begin{array}{c}
y_1\\
y_2\\
y_3\\
\dots\\
y_n
\end{array}\right]
$$

As we know, this linear system doesn't have a solution, but the symmetrized system

$$
A^TA
\left[\begin{array}{c}m \\b
\end{array}\right]
 = A^T\vec y$$

always has a solution.  In fact, this solution will minimize $$E^2$$ automatically!

We can use matrix inversion to write the solution as

$$
\left[\begin{array}{c}m \\b
\end{array}\right]
=
(A^TA)^{-1}(A^T\vec y).$$

## Part 1

In the mythical land of [Xanth](https://en.wikipedia.org/wiki/Xanth), the cost of a thatched roof cottage depends strongly on the number of square feet in the interior.
The costs (in gold pieces) of several cottages which were recently sold are listed in the table below.

| Cost $$C$$ | Interior square footage $$x$$ |
| ---------- | ----------------------------- |
|   3030     |             1000              |
|   3784     |             1250              |
|   3483     |             1200              |
|   4445     |             1500              |
|   4458     |             1425              |
|   5587     |             1750              |

In this part we will find a linear model describing the cost $$C$$ of cottages versus the interior square footage

$$C = mx + b$$

that we can use to predict the price of cottages in the future.

* (a) Use these $$x$$-values to create the $$A$$ matrix described in the linear regression section above in MATLAB.
* (b) Use these $$C$$-values to create the vector $$\vec y$$ described above in MATLAB.
* (c) Use MATLAB to create a matrix called *Asym* whose value is the symmetric matrix $$A^TA$$.  Also create vector called *bsym* whose value is $$A^T\vec y$$. [Rememember, to take the transpose of a matrix, we can use the *transpose* function or the apostrophe operator.]
* (d) Use MATLAB to calculate the inverse of *Asym* and the product $$(A^TA)^{-1}(A^T\vec y)$$, obtaining the value of $$m$$ and $$b$$
* (e) Plot the data set above on the same graph as your linear model.  You should see that the data closely follows the line.

**Self-assessment:** What values did you get for $$m$$ and $$b$$?  Be sure to write them down for the self-assessment quiz later.

## Part 2

In the real world, the cost of a house will likely depend heavily on several variables, rather than just the interior square footage.
For example, consider the following table of data on recently sold houses in Stars Hollow, CT.

| Cost $$C$$ | Interior square footage $$x$$ | Exterior square footage $$z$$ | Bathrooms $$m$$ | Bedrooms $$n$$ |
| ---------- | ----------------------------- | ----------------------------- | --------------- | -------------- |
|  234641    |               1000            |               3000            |         2       |        1       |
|  449749    |               2125            |                  0            |         1.5     |        2       |
|  648350    |               3025            |               1000            |         2       |        3       |
|  352657    |               1500            |               2100            |         3       |        2       |
|  592788    |               2800            |                500            |         2       |        2       |
|  427948    |               1900            |                900            |         2       |        3       |


A linear model for the cost of a house in Stars Hollow could look like

$$C = ax + bz + cm + dn$$

for some unknown constants $$a,b,c,$$ and $$d$$.  This model results in an over-determined linear system of equations

$$A\left[\begin{array}{c} a \\ b \\ c \\ d\end{array}\right] = \vec y$$

where here $$A$$ is the matrix whose colums are the right four columns in the table above and $$\vec y$$ is the column of house prices.
We can use the same tactic as before to find values of the coefficients $$a,b,c,$$ and $$d$$ making our linear model most closely resemble the data.

We start by multiplying both sides by the transpose of $$A$$

$$A^TA\left[\begin{array}{c} a \\ b \\ c \\ d\end{array}\right] = A^T\vec y.$$

Then we use the inverse of $$A^TA$$ to obtain our solution!

$$\left[\begin{array}{c} a \\ b \\ c \\ d\end{array}\right] = (A^TA)^{-1}(A^T\vec y).$$


* (a) Create the $$A$$ matrix described in the linear regression section above in MATLAB.
* (b) Create the vector $$\vec y$$ described above in MATLAB.
* (c) Use MATLAB to calculate $$A^TA$$, $$(A^TA)^{-1}$$ and $$A^T\vec y$$
* (d) Use MATLAB to calculate the product $$(A^TA)^{-1}(A^T\vec y)$$ and obtain the value of $$a,b,c,$$ and $$d$$

**Self-assessment:**  Use the values of $$a,b,c$$ and $$d$$ you got in your linear model in order to predict the cost of a house with $$3500$$ interior square footage, $$1000$$ exterior square footage, $$2$$ bedrooms and $$2$$ bathrooms.  How much do you expect the price to be?

## Additional resources

Ready for the big leagues?  Try your luck at predicting house prices using the data in the following data set.  Feel free to reach out for help with getting started, such as how to read in the data.
* **Big house cost data set:** <a target="_parent" href="https://wcasper.github.io/math107spring2023/worksheets/ws6/house-data.csv">house-data.csv (link)</a>
Note: this data set was borrowed from Kaggle's machine learning / linear regression competition on housing costs.


