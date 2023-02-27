---
layout: page
title: Worksheet 4
permalink: /worksheets/ws4
---

## Directions

This is a self-guided **group worksheet**.  Work with your group members to follow the instructions below and explore!  Note that some of the results will be assessed later, so make sure you do it right!

You will need the files

* [river.png](ws4/river.png)

## Image filters

Suppose that $$A$$ is an $$m\times n$$ grayscale image, so that each entry is an unsigned integer whose value lies between $$0$$ (black) and $$255$$ (white).
A **linear filter** for a black and white image $$A$$ is an $$\ell\times\ell$$ matrix $$F$$, where typically $$\ell$$ is very small in comparison to $$m$$ and $$n$$.
The matrix $$F$$ determines a formula for changing the value of each pixel $$(i,j)$$ in terms of its **neighboring pixels**.
Applying the filter of $$F$$ to the image $$A$$ creates a new image $$B$$ whose pixels are determined by this formula.

For example, if our matrix is

$$F = \frac{1}{12}\left[\begin{array}{ccc}
1 & 1 & 1\\
1 & 4 & 1\\
1 & 1 & 1
\end{array}\right]$$

Then the $$(j,k)$$'th pixel in the image $$B$$ is determined by

$$
\begin{align}
B(j,k)  = &\frac{1}{12}  ( A(j-1,k-1) + A(j-1,k) + A(j-1,k+1)\\
                      & + A(j,k-1) + 4A(j,k) + A(j,k+1)\\
                      & + A(j+1,k-1) + A(j+1,k) + A(j+1,k+1) )\\
\end{align}
$$

Note: this formula can't work on the boundaries of an image, so we have to do something different there.  For simplicity, we can let $$B(j,k) = A(j,k)$$ if $$(j,k)$$ is a boundary pixel.

Obviously, the value of the matrix $$F$$ that we choose profoundly influences the resulting "filtered" image.  The filter we just considered causes the value of a pixel to be averaged with it's neighboring pixels.  The result is that the image is slightly **smoothed** or blurred.  Formally, this filter is an example of a **Gaussian filter**.  Other effects may be accomplished using a different filter matrix $$F$$, such as image **sharpening**.

### Filtered pixel function

For the first part of this worksheet, we will write a function called *average_pixel(A,j,k)* which will take in a grayscale image $$A$$ and return the value of the filtered image $$B$$ at pixel $$(j,k)$$ according to the formula defined above.

You should use the following template and fill in the missing pieces of code.

* [average_pixel.m](ws4/average_pixel.m)

### Image smoothing function

For the second part of this worksheet, we will write a function called *imsmooth(A)* which will take in a grayscale image $$A$$ and return an image $$B$$ whose pixels are all filtered using the function *average_pixel(A,j,k)* we wrote previously.  You will need to use **embedded for loops**.

You should use the following template and fill in the missing pieces of code.

* [imsmooth.m](ws4/imsmooth.m)

Note that this code features a couple new things, specifically *double* and *uint8*.  These tell MATLAB what **data type** a partcular matrix is.  Grayscale images feature unsigned 8-bit integers, while most floating point stuff in MATLAB is double which is 8-byte (64-bit) floating point data.  Since we are doing algebra with them, we want to first convert things to floating point data, and then convert back to the expected 8-bit stuff at the very end.  This is all done in the template for you.


### Trying it out

Load the image *river.png* using the *imread()* command in MATLAB and then convert it to grayscale using the command *rgb2gray()*.

```MATLAB
river = imread("river.png");
A = rgb2gray(river);
```

Now try filtering your grayscale image using the code that you wrote.

```MATLAB
B = imsmooth(A);
```

Lastly, create a figure where both the original grayscale image and the smoothed version are plotted side-by-side using the *subplot()* commmand.

```MATLAB
subplot(1,2,1)
imshow(A);
subplot(1,2,2)
imshow(B);
```

**Question:** What differences do you notice between the images?


## Edge detection

In class, we noticed that edges can be detected by comparing pixels to neighboring pixels.  For example, the following code will calculate the absolute value of the difference between neighboring pixels in the same column

```MATLAB
hdiff = double(A);
hdiff(:,1:end-1) = hdiff(:,1:end-1)-hdiff(:,2:end);
hdiff = abs(hdiff);
```

In fact, excluding the absolute value, we can think of this as just another example of a **linear image filter** but with the filtration matrix

$$F = \left[\begin{array}{ccc}
0 & 0 & 0\\
-1& 1 & 0\\
0 & 0 & 0
\end{array}\right]$$

If we try to plot this using *imshow(hdiff)* things go a bit weird because hdiff still has floating point values.  To fix this, we convert it back to 8-bit unsigned integers before showing it.

```MATLAB
hdiff = uint8(hdiff);
imshow(hdiff);
```

**Question:** Where are the whitest regions in the resulting image?  What do they mean?

We can produce a similar picture using vertical differences.
```MATLAB
vdiff = Aflt(1:end-1,1:end-1)-Aflt(2:end,1:end-1);
vdiff = abs(vdiff);
vdiff = uint8(vdiff);
imshow(vdiff);
```

The associated filtration matrix is 

$$F = \left[\begin{array}{ccc}
0 & 0 & 0\\
0 & 1 & 0\\
0 &-1 & 0
\end{array}\right]$$

**Question:** Plot both the horizontal and vertical differences side-by-side.  Do you notice any differences at all?  What would happen if we first smoothed the image before running our edge detection code?


More generally, we can **combine** both the horizontal and vertical differences to produce an even better combined edge detection using a more complicated filter, such as

$$F = \frac{1}{4}\left[\begin{array}{ccc}
0 &-1 & 0\\
-1& 4 &-1\\
0 &-1 & 0
\end{array}\right]$$

This is very related to other image filters such as a **unmask sharpening filter**.

### Just for fun extra challenge

Try rewriting your code from the averaging filter to use this matrix and see how it works for your river image.

