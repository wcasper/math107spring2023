---
layout: page
title: Worksheet 8
permalink: /worksheets/ws8
---

## Directions

This is a self-guided **group worksheet**.  Work with your group members to follow the instructions below and explore!  Note that some of the results will be assessed later, so make sure you do it right!

## Spectral Cluserting for Graphs

### The graph Laplacian

Let $$G$$ be a graph with $$n$$ vertices.
The **adjacency matrix** of the graph is the symmetric matrix $$A$$ whose $$j,k$$'th entry is given by

$$A_{jk} = \left\lbrace\begin{array}{cc}
1 & \text{vertices j and k are connected}\\
0 & \text{vertices j and k are not connected}
\end{array}\right.$$

The **degree matrix** $$D$$ is an $$n\times n$$ diagonal matrix whose diagonal entries are given by

$$D_{jj} = \text{degree of vertex j},$$

where the degree of a vertex is the number of edges touching the vertex.
The **graph Laplacian** is the difference of these two matrices

$$L = D-A.$$

For example, consider the graph

<center>
<img src="ws8/graph1.png" alt="Simple Example Graph" width="200">
</center>

The adjacency matrix of this graph is given by

$$A = \left[\begin{array}{cccc}
0 & 1 & 1 & 1\\
1 & 0 & 0 & 1\\
1 & 0 & 0 & 0\\
1 & 1 & 0 & 0
\end{array}\right]$$

and the degree matrix is

$$D = \left[\begin{array}{cccc}
3 & 0 & 0 & 0\\
0 & 2 & 0 & 0\\
0 & 0 & 1 & 0\\
0 & 0 & 0 & 2\\
\end{array}\right]$$

The graph Laplacian is then

$$L = D-A = \left[\begin{array}{cccc}
3  & -1 & -1 & -1\\
-1 &  2 &  0 & -1\\
-1 &  0 &  1 &  0\\
-1 & -1 &  0 &  2
\end{array}\right]$$

* Problem 1: Find the largest eigenvalue of the Laplacian matrix of the graph

<center>
<img src="ws8/graph2.png" alt="Star Graph" width="200">
</center>

Make sure to save the value to use in the self-assessement later!

A graph is **connected** if you can travel from a fixed vertex to any other vertex via a series of edges.  It turns out that this is characterized by whether or not $$0$$ shows up more than once as an eigenvalue of the graph Laplacian!

* Problem 2: Create a new graph which is not connected by removing the edge between $$1$$ and $$4$$ and the edge between $$2$$ and $$5$$ in the graph from Problem 1.  Show that the new graph Laplacian has $$0$$ occuring as an eigenvalue more than once.

## Clusters in graphs

A **cluster** in a graph is a collection of vertices which are closely connected to each other in comparison to their connections elsewhere.
For example, in the graph below the red vertices are strongly interconnected to each other, but weakly connected to the blue vertices.  Likewise the blue vertices are strongly connected to each other but weakly connected elsewhere.

<center>
<img src="ws8/graph3.png" alt="Simple Cluster Graph" width="400">
</center>

* Problem 3: create a matrix $$L$$ in MATLAB whose value is the Laplacian matrix for this graph.  Double-check, this matrix should be symmetric and the sum of the entries in any row or column should be zero!

Just like the eigenvalues of the Laplacian can detect whether a graph is connected or not, they can also be used to find clusters!  This process is called **spectral clustering**.  To perform spectral clustering, we use the following steps:

1. Calculate the eigenvalues and eigenvectors of the Laplacian $$L$$
2. Set $$x$$ to be the eigenvector with the second largest eigenvalue
3. Split the vertices into two groups based on whether the corresponding entry in $$x$$ is negative or positive.

This can be accomplished in MATLAB using the following code

```MATLAB
% get the eigenvectors and eigenvalues
[evecs,evals] = eig(L,'vector');

% sort the eigenvalues from smallest to largest
[evals,ind] = sort(evals,'ascend');
evecs = evecs(:,ind);

% set x to the second smallest eigenvalue
x = evecs(:,2);

% split vertices based on sign
display('first cluster')
find(x >= 0)
display('second cluster')
find(x < 0)
```

* Problem 4:  Perform spectral clustering on the graph whose Laplacian you created in Problem 3.  What points are most naturally clustered together according to our spectral clustering?

## Zachary's Karate Club

One famous example of an application in graph clustering comes from a story about a karate club that existed for three years in the early 1970's.  One of the members, Wayne W. Zachary, recorded which members of the club interacted *outside* of the club.  At some point, there was a blowout between one of the administrators and the club instructor, resulting in the club being split into two new clubs.  Based on his data, Zachary created a graph where the vertices were the 34 club members, and edges were formed between members who interacted outside of the club.

<center>
<img src="ws8/karate.png" alt="Simple Cluster Graph" width="400">
</center>

By performing clustering on the graph, Zachary was able to predict which members ended up in the two new clubs after the schism with an incredible degree of accuracy.

We will read in the data for Zachary's karate club in terms of an adjacency matrix.  Download the file [karate.mat](ws8/karate.mat) and put it in your MATLAB working directory.  Then use the following code to read in the adjacency matrix as a matrix $$A$$.

```MATLAB
load('karate.mat')
A = full(Problem.A);
```

The degree matrix can be obtained from $$A$$ by summing the entries in every column

```MATLAB
D = diag(sum(A));
```

The Laplacian may then be calculated in the usual way.

```MATLAB
L = D-A;
```

Then we can use the following code to perform our spectral clustering

```MATLAB
% get the eigenvectors and eigenvalues
[evecs,evals] = eig(L,'vector');

% sort the eigenvalues from largest to smallest
[evals,ind] = sort(evals,'descend');
evecs = evecs(:,ind);

% set x and y to be the eigenvectors of the largest two eigenvalues
x = evecs(:,1);
y = evecs(:,2);

% plot x versus y and label the points
plot(x,y,'ro')
xl = x + 0.001;  % label x position
yl = y + 0.001;  % label y position 
labels = cellstr(num2str((1:size(x))')); % label text
text(xl,yl,labels)
```

* Problem 5: Use the above code to perform spectral clustering on the graph.  Use the plot to predict the two separate groups that the club will split into.



