---
layout: post
---

Notes and highlights from lecture

## Today's Objectives

* Create vectors and matrices in MATLAB
* Access elements of matrices and vectors

## Reading assignments

* <a target="_parent" href="../../../extras/textbook.pdf">primary text (link)</a>: chapter 1
* When Life is Linear: chapter 1

## Matrices

## Basic definition
The principal data objects in MATLAB are **matrices**, which are simply $$m\times n$$ arrays of numbers.  Examples of matrices are

$$A=  \left[\begin{array}{ccc}
1 & 1 & 3\\
0 & -1& 4\\
\end{array}\right],\quad
B = \left[\begin{array}{cc}
4 & 1\\
2 & 3\\
6 & 9
\end{array}\right],\quad
C = \left[\begin{array}{cc}
1 & 1\\
2 & 3
\end{array}\right]
$$

which are examples of $$2\times 3,$$ $$3\times 2,$$ and $$2\times 2$$ matrices, respectively.  The first number indicates the number of rows and the second refers to the number of columns.  This pair of numbers is called the **shape** of a matrix.

Matrices which have only one column, ie. $$m\times 1$$ matrices, are called **column vectors**.  Likewise, $$1\times n$$ matrices have only one row and are calld **row vectors**.

The **$$(i,j)$$ entry** of a matrix is the entry in the $$i\text{'th}$$ row and $$j\text{'th}$$ column.  For example, the $$(3,2)$$ entry of the matrix $$B$$ above is $$9$$.

We can also remove various rows and columns from a matrix to create a **submatrix**.  For example, if we remove the first row and the third column from the matrix $$A$$, then we end up with the submatrix

$$\left[\begin{array}{cc}
0 & -1\\
\end{array}\right]$$

### Initializing matrices in MATLAB
Creating a matrix in MATLAB is super easy!  For example, to initialize the matrix $$A$$ above we can use the code

```Matlab
A = [1,1,3;0,-1,4]
```
The semicolon indicates the point where the next row begins and commas separate different elements in the same row.  Note that we can also use spaces in place of commas.

We can access different elements in this matrix in a natural way.  For example, to access the $$(1,3)$$ entry of $$A$$ we can use the code

```Matlab
A(1,3)
```

which will return the value $$3$$.  We can also gather various submatrices.  To get the $$2\times 2$$ submatrix of $$A$$ consisting of only the first two rows and the first two columns, we can use the code

```Matlab
A(1:2,1:2)
```

More generally

```Matlab
M(a:b,c:d)
```
creates the submatrix of $$M$$ consisting of the rows between $$a$$ and $$b$$ and columns between $$c$$ and $$d$$.

## Constructing typical matrices
Some matrices come up often enough that MATLAB provides nicer ways to generate them.  Here are some typical examples:
* **zero matrix:** to generate an $$m\times n$$ matrix whose entries are all zero, we can use the command

```Matlab
zeros(m,n)
```

* **ones matrix:** to generate an $$m\times n$$ matrix whose entries are all ones, we can use the command

```Matlab
ones(m,n)
```

* **identity matrix:** to generate an $$n\times n$$ matrix whose $$(i,j)$$ entry is $$0$$ if $$i\neq j$$ and $$1$$ if $$i=j$$, we can use the command

```Matlab
eye(m,n)
```

* **index vectors:** to generate a vector $$[j\ j+k\ j+2k\ j+3k\ \dots\ n]$$ use the **colon operator**

```Matlab
[j:k:n]
```

* **linearly spaced vectors:** to generate a row vector with $$n$$ entries which are evenly spaced between $$a$$ and $$b$$ we can use the command

```Matlab
linspace(a,b,n)
```

## Submatrices and matrix entries
To get the $$(i,j)$$ entry of a matrix $$A$$ in MATLAB we use the command

```Matlab
A(i,j)
```

To get the submatrix of $$A$$ consisting of a certain subset of the rows and columns, we can use the same tactic.  For example, the $$2\times 2$$ submatrix consisting of the first two rows and the first two columns is

```Matlab
A([1 2],[1 2])
```

Likewise, the submatrix consisting of all rows of the first, third and fifth columns is given by
```Matlab
A(:,[1 3 5])
```

## Additional resources



