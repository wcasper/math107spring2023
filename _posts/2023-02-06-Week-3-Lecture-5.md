---
layout: post
---

Notes and highlights from lecture

## Today's Objectives

* plotting in MATLAB

## Reading assignments

* <a target="_parent" href="../../../extras/textbook.pdf">primary text (link)</a>: chapter 3 section 3
* When Life is Linear: section 5.6



<p align="center">
  <img width="450" src="../../../extras/img/nickleback.jpg">
</p>


## Basic plots

The following code plots $$\sin(x)$$ for $$0\leq x\leq 2\pi$$ with $$100$$ points.

```Matlab
x= linspace(0,2*pi,100);
y = sin(x);
plot(x,y)
```

We can change the format of the plot by using **markers**, **colors**, and **line styles**.

| Value	| Description                   |
| ----- | ----------------------------- |
|  'o'	| Circle                        |
|  '+'	| Plus sign                     | 
|  '*'	| Asterisk                      | 
|  '.'	| Point                         |
|  'x'	| Cross                         |
|  '_'	| Horizontal line               |
|  '\|'	| Vertical line                 |
|  's'	| Square                        |
|  'd'	| Diamond                       |
|  '^'	| Upward-pointing triangle      |
|  'v'	| Downward-pointing triangle    |
|  '>'	| Right-pointing triangle       | 
|  '<'	| Left-pointing triangle        | 
|  'p'	| Five-pointed star (pentagram) |
|  'h'	| Six-pointed star (hexagram)   |


| Color	| Description |
| ----- | ----------- |
|   y   | yellow      |
|   m   | magenta     |
|   c   | cyan        |
|   r   | red         |
|   g   | green       |
|   b   | blue        |
|   w   | white       |
|   k   | black       |


| Line Style | Description   |
| ---------- | ------------- |
|     \-     | Solid line    |
|     \-\-   | Dashed line   |
|     :	     | Dotted line   |
|     \-.    | Dash-dot line |

For example

```Matlab
plot(x,y,"g.")
```
creates a plot with green points for each of the data points instead of a solid line.


We can also have multiple graphs in the same plot using the hold command, which
keeps the plot window from being cleared between plots.

```Matlab
z = cos(x);
plot(x,y)
hold on
plot(x,z)
```
Alternatively, maybe we want two different plots in the same figure.  We can do this with the subplot command:

```Matlab
subplot(m,n,k)  # divides the figure window into a grid of m x n plots and readies the computer to plot in the k'th window
```

## Making a decent figure

* Titles:

```Matlab
title("Your title goes here");
```

* Axes labels:

```Matlab
xlabel("what is on the x axis?");
ylabel("what is on the y axis?");
```

* Legend:
To help  distinguish between multiple curves on the same graph, we can use a legend
```Matlab
legend("label for first graph","label for second graph",...)
```

**Example:**

```Matlab
x = linspace(0,2*pi,100);
y = sin(x);
z = cos(x);
plot(x,y)
hold on
plot(x,z)
legend("sine","cosine")
xlabel("angle")
ylabel("function value")
title("The Basic Trigonometric Functions")
```

## Other types of graphs

* Bar graphs

```Matlab
sales = [150, 500, 225, 170];
store_loc = ["Long Beach", "Anaheim", "Los Angeles", "Laguna Beach"];
bar(categorical(store_loc),sales)
```

* Pie graphs
```Matlab
pie(sales,store_loc)
```

* ****

## Additional resources



