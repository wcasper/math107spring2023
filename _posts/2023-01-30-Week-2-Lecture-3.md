---
layout: post
---

Notes and highlights from lecture

## Today's Objectives

* concatenating matrices
* Import an image in MATLAB as an RGB matrix
* Access elements of an RGB matrix
* plotting images
* resizing and grayscale

## Reading assignments

* <a target="_parent" href="../../../extras/textbook.pdf">primary text (link)</a>: chapter 2
* When Life is Linear: chapter 2

## Concatenating matrices
Many times, it will be useful to "glue" two matrices $$A$$ and $$B$$ together to form a bigger matrix via a process called **concatenation**.  We can do this either by putting the rows of $$B$$ on the ends of the rows of $$A$$, or by appending the columms of $$B$$ on the ends of the columns of $$A$$.

**Concatenating along rows**
If $$A$$ is an $$m\times n$$ matrix and $$B$$ is an $$m\times \ell$$ matrix (so they have the same number of rows), then we can create a new $$m\times (n+\ell)$$ matrix by taking each row of $$B$$ and tacking it on to the end of the same row of $$A$$.  In MATLAB, this can be done with the following code

```
[A,B]
```

For example

$$A=  \left[\begin{array}{ccc}
1 & 1 & 1\\
1 & 1 & 1\\
\end{array}\right],\quad
B = \left[\begin{array}{cc}
4 & 3\\
2 & 1
\end{array}\right],\quad\text{then}\quad
[A,B] = \left[\begin{array}{ccccc}
1 & 1 & 1 & 4 & 3\\
1 & 1 & 1 & 2 & 1
\end{array}\right]$$

**Concatenating along rows**
If $$A$$ is an $$m\times n$$ matrix and $$B$$ is an $$\ell\times n$$ matrix (so they have the same number of rows), then we can create a new $$(\ell+m)\times n$$ matrix by taking each column of $$B$$ and tacking it on to the end of the same column of $$A$$.  In MATLAB, this can be done with the following code

```
[A;B]
```

Notice the semicolon in place of the comma.  For example

$$A=  \left[\begin{array}{ccc}
2 & 4 & 6\\
\end{array}\right],\quad
B = \left[\begin{array}{cc}
1 & 3 & 1\\
3 & 1 & 3
\end{array}\right],\quad\text{then}\quad
[A;B] = \left[\begin{array}{ccc}
2 & 4 & 6\\
1 & 3 & 1\\
3 & 1 & 3
\end{array}\right]$$

## Image processing

In MATLAB, color images are stored as matrices of pixels.

**Definition:**  A **pixel** is a single, solid-colored square.

The color of a pixel can be expressed in terms of a triple of integers, ranging between 0 and 255, called RGB values.  For grayscale images, we just use a single integer between 0 and 255, where 0 is black and 255 is white.

Further examples of RGB values are
* (255,255,255) is bright white
* (255,0,0) is bright red
* (155,0,0) is a much darker red
* (0,255,255) is a mix of green and blue making a teal color

### Loading an image

To load an image as a matrix of RGB values, we can use the imread() function.  Note that it's very important that the image we try to load is in the current working directory!

```Matlab
A = imread("mittens.jpg");
```

Note that the semicolon keeps the computer from printing out a huge array of data onto the screen.
We can see the size of the image with size()
```Matlab
size(A)
```

### Displaying an image

We can display the same image by using the imshow() function

```Matlab
imshow(A)
```

### Downsampling

We can resize an image by downsampling.  To throw all but every fourth pixel, we use

```Matlab
AA = A(1:4:end,1:4:end,:)
```

This creates a new image which is a quarter the size of the previous one.

### Grayscale

We can convert from RGB to grayscale by rgb2gray()

```Matlab
A_gray = rgb2gray(A)
```

### Superimposing images
We can place a smaller image over a larger one.

```Matlab
B = imread("space.jpg")
B(201:500,201:500,:) = AA
```

This repalces a 300x300 patch of pixels in B by the pixels of AA

## Linear combinations

The primary operations of linear algebra are
* scalar multiplication
* vector addition

**Definition** when we combine multiple matrices together using vector addition and scalar multiplication, we get a **linear combination**.

### Scalar multiplication

**Definition** A number like $$2$$ or $$5$$ or $$\sqrt{3}$$ is called a **scalar**.  If $$A$$ is a matrix and $$b$$ is a scalar, then **scalar multiplication** multiplies every entry of $$A$$ by $$b$$, forming the matrix $$bA$$.

For example, starting with a matrix $$A$$ where every entry is multiplied by $$3$$, we can use
```Matlab
3*A
```

### Vector/matrix addition

**Definition** Given matrices $$A$$ and $$B$$ which are the same size, **matrix addition** produces a matrix $$A+B$$ whose entries are the sums of the corresponding entries in $$A$$ and $$B$$.

In MATLAB, this is done by
```Matlab
A + B
```

## Additional resources
* **Images from lecture:** 
  * <a target="_parent" href="https://wcasper.github.io/math107spring2023/extras/img/space.jpg">space.jpg (link)</a>
  * <a target="_parent" href="https://wcasper.github.io/math107spring2023/extras/img/mittens.jpg">mittens.jpg (link)</a>




