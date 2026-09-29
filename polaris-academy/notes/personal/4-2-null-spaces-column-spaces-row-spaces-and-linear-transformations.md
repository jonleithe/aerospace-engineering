---
title       : Null Spaces, Column Spaces, Row Spaces, and Linear Transformations
subject     : Linear Algebra
source      : Linear Algebra and Its Applications, 6th edition
author      : Jon Leithe
date        : 2026-09-28
---

These notes are based on the handwritten note
[`4-2-null-spaces-column-spaces-row-spaces-and-linear-transformations.pdf`](../hand-written/4-2-null-spaces-column-spaces-row-spaces-and-linear-transformations.pdf).

For an $m\times n$ matrix $A$, its null space and row space are subspaces of
$\mathbb{R}^n$, while its column space is a subspace of $\mathbb{R}^m$. These
spaces describe the solutions of $A\vec{x}=\vec{0}$, the outputs $A\vec{x}$,
and the linear combinations of the rows of $A$.

## The null space of a matrix

::: {.callout-note title="Definition — Null space"}

**Textbook reference:** p.236

The **null space** of an $m\times n$ matrix $A$, written $\operatorname{Nul} A$,
is the set of all solutions of the homogeneous equation

$$
A\vec{x}=\vec{0}.
$$

In set notation,

$$
\operatorname{Nul} A
=\{\vec{x}\in\mathbb{R}^n:A\vec{x}=\vec{0}\}.
$$

:::

### Example 1: checking null-space membership

Let

$$
A=\begin{bmatrix}1&-3&-2\\-5&9&1\end{bmatrix},
\qquad
\vec{u}=\begin{bmatrix}5\\3\\-2\end{bmatrix}.
$$

To check whether $\vec{u}\in\operatorname{Nul} A$, compute

$$
A\vec{u}
=\begin{bmatrix}1&-3&-2\\-5&9&1\end{bmatrix}
  \begin{bmatrix}5\\3\\-2\end{bmatrix}
=\begin{bmatrix}0\\0\end{bmatrix}.
$$

Therefore, $\vec{u}\in\operatorname{Nul} A$.

::: {.callout-note title="Theorem 2 — The null space is a subspace"}

**Textbook reference:** p.236

For an $m\times n$ matrix $A$, $\operatorname{Nul} A$ is a subspace of
$\mathbb{R}^n$. Equivalently, the set of solutions to a homogeneous system of
$m$ linear equations in $n$ unknowns is a subspace of $\mathbb{R}^n$.

:::

To see this, let $\vec{u},\vec{v}\in\operatorname{Nul} A$. Then
$A\vec{u}=\vec{0}$ and $A\vec{v}=\vec{0}$. By the properties of matrix
operations,

$$
A(\vec{u}+\vec{v})=A\vec{u}+A\vec{v}=\vec{0},
\qquad
A(c\vec{u})=cA\vec{u}=\vec{0}
$$

for any scalar $c$. Also, $A\vec{0}=\vec{0}$. Thus the null space contains
zero and is closed under addition and scalar multiplication.

### Example 2: describing a subspace with equations

Let $H$ be the set of all vectors $(a,b,c,d)\in\mathbb{R}^4$ whose coordinates
satisfy

$$
a-2b+5c=d,
\qquad
c-2a=b.
$$

Rearranging gives the homogeneous system

$$
a-2b+5c-d=0,
\qquad
-2a-b+c=0.
$$

So $H$ is the solution set of a homogeneous linear system. By Theorem 2,
$H$ is a subspace of $\mathbb{R}^4$.

### An explicit description of a null space

The equation $A\vec{x}=\vec{0}$ defines $\operatorname{Nul} A$ implicitly:
it gives a condition that its vectors must satisfy. Solving the equation in
terms of free variables gives an explicit description, often as a span.

### Example 3: finding a spanning set for a null space

Find a spanning set for the null space of

$$
A=\begin{bmatrix}
-3&6&-1&1&-2\\
1&-2&2&3&-1\\
2&-4&5&8&-4
\end{bmatrix}.
$$

Row-reducing $[A\;\vec{0}]$ gives

$$
\left[\begin{array}{ccccc|c}
1&-2&0&-1&3&0\\
0&0&1&2&-2&0\\
0&0&0&0&0&0
\end{array}\right].
$$

The pivot variables are $x_1$ and $x_3$; $x_2$, $x_4$, and $x_5$ are free.
The equations give

$$
x_1=2x_2+x_4-3x_5,
\qquad
x_3=-2x_4+2x_5.
$$

Set $x_2=r$, $x_4=s$, and $x_5=t$. Then

$$
\vec{x}
=\begin{bmatrix}2r+s-3t\\r\\-2s+2t\\s\\t\end{bmatrix}
=r\begin{bmatrix}2\\1\\0\\0\\0\end{bmatrix}
+s\begin{bmatrix}1\\0\\-2\\1\\0\end{bmatrix}
+t\begin{bmatrix}-3\\0\\2\\0\\1\end{bmatrix}.
$$

Every linear combination of these three vectors is in $\operatorname{Nul} A$,
and every vector in $\operatorname{Nul} A$ has this form. Therefore,

$$
\operatorname{Nul} A
=\operatorname{span}\left\{
\begin{bmatrix}2\\1\\0\\0\\0\end{bmatrix},
\begin{bmatrix}1\\0\\-2\\1\\0\end{bmatrix},
\begin{bmatrix}-3\\0\\2\\0\\1\end{bmatrix}
\right\}.
$$

These vectors are linearly independent: the second, fourth, and fifth
coordinates of a linear combination are exactly its three weights. Thus they
form a basis for $\operatorname{Nul} A$. In this method, the number of basis
vectors equals the number of free variables.

## The column space of a matrix

::: {.callout-note title="Definition — Column space"}

If $A=[\vec{a}_1,\ldots,\vec{a}_n]$ is an $m\times n$ matrix, its **column
space**, written $\operatorname{Col} A$, is the set of all linear combinations
of its columns:

$$
\operatorname{Col} A
=\operatorname{span}\{\vec{a}_1,\ldots,\vec{a}_n\}.
$$

:::

Since a span is a subspace and each column of $A$ is in $\mathbb{R}^m$,
$\operatorname{Col} A$ is a subspace of $\mathbb{R}^m$.

::: {.callout-note title="Theorem 3 — The column space is a subspace"}

For an $m\times n$ matrix $A$, $\operatorname{Col} A$ is a subspace of
$\mathbb{R}^m$.

:::

A typical vector in $\operatorname{Col} A$ can be written as $A\vec{x}$,
because matrix-vector multiplication forms a linear combination of the columns
of $A$. Thus,

$$
\operatorname{Col} A
=\{\vec{b}\in\mathbb{R}^m:\vec{b}=A\vec{x}
\text{ for some }\vec{x}\in\mathbb{R}^n\}.
$$

This also shows that $\operatorname{Col} A$ is the range of the matrix
transformation $\vec{x}\mapsto A\vec{x}$.

The columns of $A$ span $\mathbb{R}^m$ exactly when $A\vec{x}=\vec{b}$ has a
solution for every $\vec{b}\in\mathbb{R}^m$. Equivalently,

$$
\operatorname{Col} A=\mathbb{R}^m
\quad\Longleftrightarrow\quad
A\vec{x}=\vec{b}\text{ is solvable for every }\vec{b}\in\mathbb{R}^m.
$$

### Example 4: constructing a matrix from a column space

Find a matrix $A$ such that $W=\operatorname{Col} A$, where

$$
W=\left\{
\begin{bmatrix}6a-b\\a+b\\-7a\end{bmatrix}:a,b\in\mathbb{R}
\right\}.
$$

Write each vector as a linear combination:

$$
\begin{bmatrix}6a-b\\a+b\\-7a\end{bmatrix}
=a\begin{bmatrix}6\\1\\-7\end{bmatrix}
+b\begin{bmatrix}-1\\1\\0\end{bmatrix}.
$$

Use these two vectors as the columns of $A$:

$$
A=\begin{bmatrix}6&-1\\1&1\\-7&0\end{bmatrix}.
$$

Then $W=\operatorname{Col} A$.

## The row space

If $A$ is an $m\times n$ matrix, each row has $n$ entries and can be viewed as
a vector in $\mathbb{R}^n$. The **row space** of $A$, written
$\operatorname{Row} A$, is the set of all linear combinations of its row
vectors. It is a subspace of $\mathbb{R}^n$. Since the rows of $A$ are the
columns of $A^T$ when viewed as vectors,

$$
\operatorname{Row} A=\operatorname{Col}(A^T).
$$

### Example 5: writing the row space as a span

Let

$$
A=\begin{bmatrix}
-2&-5&8&0&-17\\
1&3&-5&1&5\\
3&11&-19&7&1\\
1&7&-13&5&-3
\end{bmatrix}.
$$

Its row vectors are

$$
\begin{aligned}
\vec{r}_1&=(-2,-5,8,0,-17),\\
\vec{r}_2&=(1,3,-5,1,5),\\
\vec{r}_3&=(3,11,-19,7,1),\\
\vec{r}_4&=(1,7,-13,5,-3).
\end{aligned}
$$

Therefore,

$$
\operatorname{Row} A
=\operatorname{span}\{\vec{r}_1,\vec{r}_2,\vec{r}_3,\vec{r}_4\}.
$$

## Comparing the null space and column space

The null space and column space are both subspaces associated with $A$, but
they live in different dimensions and answer different questions. This
distinction is useful when interpreting a matrix equation.

### Example 6: identifying the ambient spaces

Let

$$
A=\begin{bmatrix}
2&4&-2&1\\
-2&-5&7&3\\
3&7&-8&6
\end{bmatrix}.
$$

The matrix has three rows and four columns. Therefore,

$$
\operatorname{Col} A\subseteq\mathbb{R}^3,
\qquad
\operatorname{Nul} A\subseteq\mathbb{R}^4.
$$

The columns have three entries, while solutions of $A\vec{x}=\vec{0}$ have
four coordinates.

### Example 7: finding nonzero vectors in each space

Use the matrix from Example 6. Any column of $A$ is a nonzero vector in
$\operatorname{Col} A$; for example,

$$
\vec{c}_1=\begin{bmatrix}2\\-2\\3\end{bmatrix}\in\operatorname{Col} A.
$$

To find a vector in $\operatorname{Nul} A$, row-reduce $[A\;\vec{0}]$:

$$
[A\;\vec{0}]
\sim
\left[\begin{array}{cccc|c}
1&0&9&0&0\\
0&1&-5&0&0\\
0&0&0&1&0
\end{array}\right].
$$

Here $x_1$, $x_2$, and $x_4$ are pivot variables, while $x_3$ is free. The
equations give $x_1=-9x_3$, $x_2=5x_3$, and $x_4=0$. Setting $x_3=1$ gives

$$
\vec{u}=\begin{bmatrix}-9\\5\\1\\0\end{bmatrix}
\in\operatorname{Nul} A.
$$

### Example 8: testing membership in the two spaces

With $A$ as in Example 6, let

$$
\vec{u}=\begin{bmatrix}3\\-2\\-1\\0\end{bmatrix},
\qquad
\vec{v}=\begin{bmatrix}3\\-1\\3\end{bmatrix}.
$$

First, $\vec{u}\in\mathbb{R}^4$ while $\operatorname{Col} A\subseteq\mathbb{R}^3$,
so $\vec{u}$ cannot be in $\operatorname{Col} A$. Check whether it is in the
null space by computing

$$
A\vec{u}
=\begin{bmatrix}
6-8+2\\
-6+10-7\\
9-14+8
\end{bmatrix}
=\begin{bmatrix}0\\-3\\3\end{bmatrix}
\ne\vec{0}.
$$

Thus $\vec{u}\notin\operatorname{Nul} A$.

The vector $\vec{v}$ is in $\mathbb{R}^3$, the ambient space of
$\operatorname{Col} A$. Row-reducing $[A\;\vec{v}]$ gives a consistent system,
so $\vec{v}\in\operatorname{Col} A$. The vector $\vec{v}$ cannot be in
$\operatorname{Nul} A$, whose vectors must be in $\mathbb{R}^4$.

### Summary of the differences

| Null space $\operatorname{Nul} A$ | Column space $\operatorname{Col} A$ |
|---|---|
| A subspace of $\mathbb{R}^n$. | A subspace of $\mathbb{R}^m$. |
| Defined implicitly by $A\vec{x}=\vec{0}$. | Defined explicitly as the span of the columns of $A$. |
| To find its vectors, solve $A\vec{x}=\vec{0}$ by row-reducing $[A\;\vec{0}]$. | Its displayed columns are vectors in the space; other vectors are their linear combinations. |
| There is no immediate description of its vectors from the entries of $A$. | Each column of $A$ is directly in the space. |
| A vector $\vec{v}$ is in it exactly when $A\vec{v}=\vec{0}$. | A vector $\vec{v}$ is in it exactly when $A\vec{x}=\vec{v}$ is consistent. |
| Membership of a given vector is checked by computing $A\vec{v}$. | Membership of a given vector may require row-reducing $[A\;\vec{v}]$. |
| $\operatorname{Nul} A=\{\vec{0}\}$ exactly when $A\vec{x}=\vec{0}$ has only the trivial solution. | $\operatorname{Col} A=\mathbb{R}^m$ exactly when $A\vec{x}=\vec{b}$ is solvable for every $\vec{b}\in\mathbb{R}^m$. |
| $\operatorname{Nul} A=\{\vec{0}\}$ exactly when $\vec{x}\mapsto A\vec{x}$ is one-to-one. | $\operatorname{Col} A=\mathbb{R}^m$ exactly when $\vec{x}\mapsto A\vec{x}$ maps onto $\mathbb{R}^m$. |

## Kernel and range of a linear transformation

Subspaces of vector spaces other than $\mathbb{R}^n$ are often described using
linear transformations. This generalizes the matrix descriptions of the null
space and column space.

::: {.callout-note title="Definition — Linear transformation"}

**Textbook reference:** §1.8, p.94

A **linear transformation** from a vector space $V$ into a vector space $W$ is
a rule that assigns to each vector $\vec{u}\in V$ a unique vector
$T(\vec{u})\in W$ and satisfies:

1. $T(\vec{u}+\vec{v})=T(\vec{u})+T(\vec{v})$ for all
   $\vec{u},\vec{v}\in V$;
2. $T(c\vec{u})=cT(\vec{u})$ for all $\vec{u}\in V$ and scalars $c$.

:::

The **kernel** (or null space) of $T$ is

$$
\ker T=\{\vec{u}\in V:T(\vec{u})=\vec{0}\},
$$

where $\vec{0}$ is the zero vector in $W$. The **range** of $T$ is

$$
\operatorname{range} T
=\{T(\vec{u}):\vec{u}\in V\}\subseteq W.
$$

::: {.callout-note title="The kernel and range are subspaces"}

The kernel of a linear transformation $T:V\to W$ is a subspace of $V$, and
the range of $T$ is a subspace of $W$.

:::

For the kernel, $T(\vec{0})=\vec{0}$, and if $\vec{u},\vec{v}\in\ker T$,
then

$$
T(\vec{u}+\vec{v})=T(\vec{u})+T(\vec{v})=\vec{0},
\qquad
T(c\vec{u})=cT(\vec{u})=\vec{0}.
$$

For the range, if $T(\vec{u})$ and $T(\vec{v})$ are in the range, then

$$
T(\vec{u})+T(\vec{v})=T(\vec{u}+\vec{v})
$$

is also in the range, and $cT(\vec{u})=T(c\vec{u})$ is in the range. Thus
both satisfy the subspace conditions.

If $T$ is a matrix transformation, so that $T(\vec{x})=A\vec{x}$, then

$$
\ker T=\operatorname{Nul} A,
\qquad
\operatorname{range} T=\operatorname{Col} A.
$$

## Summary

- $\operatorname{Nul} A$ is the set of solutions of $A\vec{x}=\vec{0}$ and is
  a subspace of $\mathbb{R}^n$.
- $\operatorname{Col} A$ is the span of the columns of $A$ and is a subspace
  of $\mathbb{R}^m$.
- $\operatorname{Row} A$ is the span of the rows of $A$ and is a subspace of
  $\mathbb{R}^n$.
- For a linear transformation, the kernel generalizes the null space and the
  range generalizes the column space.

## Exercises

These worked exercises are transcribed from the handwritten note
[`exercises-4-2.pdf`](../hand-written/exercises/exercises-4-2.pdf).

### Exercise 4.2.17: identifying the ambient spaces

Find $k$ such that $\operatorname{Nul} A$ is a subspace of $\mathbb{R}^k$ and
such that $\operatorname{Col} A$ is a subspace of $\mathbb{R}^k$, where

$$
A=\begin{bmatrix}
2&-8\\
-1&4\\
1&-4
\end{bmatrix}.
$$

The matrix is $3\times2$. Therefore,

$$
\operatorname{Nul} A\subseteq\mathbb{R}^2
\quad\text{and}\quad
\operatorname{Col} A\subseteq\mathbb{R}^3.
$$

Thus $k=2$ for the null space and $k=3$ for the column space.

### Exercise 4.2.19: identifying the ambient spaces

For

$$
A=\begin{bmatrix}
4&5&-2&6&0\\
1&1&0&1&0
\end{bmatrix},
$$

identify the ambient spaces containing $\operatorname{Nul} A$ and
$\operatorname{Col} A$.

This matrix is $2\times5$, so

$$
\operatorname{Nul} A\subseteq\mathbb{R}^5
\quad\text{and}\quad
\operatorname{Col} A\subseteq\mathbb{R}^2.
$$

### Exercise 4.2.23: testing membership in the null and column spaces

Let

$$
A=\begin{bmatrix}-6&12\\-3&6\end{bmatrix},
\qquad
\vec{w}=\begin{bmatrix}2\\1\end{bmatrix}.
$$

Determine whether $\vec{w}\in\operatorname{Col} A$ and whether
$\vec{w}\in\operatorname{Nul} A$.

To test null-space membership, compute

$$
A\vec{w}
=\begin{bmatrix}-6&12\\-3&6\end{bmatrix}
  \begin{bmatrix}2\\1\end{bmatrix}
=\begin{bmatrix}-12+12\\-6+6\end{bmatrix}
=\begin{bmatrix}0\\0\end{bmatrix}.
$$

Hence $\vec{w}\in\operatorname{Nul} A$.

To test column-space membership, solve $A\vec{x}=\vec{w}$ by row-reducing
$[A\;\vec{w}]$:

$$
\left[\begin{array}{cc|c}
-6&12&2\\
-3&6&1
\end{array}\right]
\sim
\left[\begin{array}{cc|c}
1&-2&-\tfrac13\\
0&0&0
\end{array}\right].
$$

The system is consistent, so $\vec{w}\in\operatorname{Col} A$. For example,
choosing $x_2=0$ gives $x_1=-\tfrac13$, and

$$
A\begin{bmatrix}-\tfrac13\\0\end{bmatrix}
=\begin{bmatrix}2\\1\end{bmatrix}
=\vec{w}.
$$

### Exercise 4.2.24: testing membership in the null and column spaces

Let

$$
A=\begin{bmatrix}
-8&-2&-9\\
6&4&8\\
4&0&4
\end{bmatrix},
\qquad
\vec{w}=\begin{bmatrix}2\\1\\-2\end{bmatrix}.
$$

Determine whether $\vec{w}\in\operatorname{Col} A$ and whether
$\vec{w}\in\operatorname{Nul} A$.

First, compute

$$
A\vec{w}
=\begin{bmatrix}
-16-2+18\\
12+4-16\\
8+0-8
\end{bmatrix}
=\begin{bmatrix}0\\0\\0\end{bmatrix}.
$$

Therefore, $\vec{w}\in\operatorname{Nul} A$.

For column-space membership, row-reduce the augmented matrix:

$$
\left[\begin{array}{ccc|c}
-8&-2&-9&2\\
6&4&8&1\\
4&0&4&-2
\end{array}\right]
\sim
\left[\begin{array}{ccc|c}
1&0&1&-\tfrac12\\
0&1&\tfrac12&1\\
0&0&0&0
\end{array}\right].
$$

The system is consistent, so $\vec{w}\in\operatorname{Col} A$. For example,
setting $x_3=0$ gives $x_1=-\tfrac12$ and $x_2=1$. In terms of the columns
of $A$,

$$
-\tfrac12\begin{bmatrix}-8\\6\\4\end{bmatrix}
+\begin{bmatrix}-2\\4\\0\end{bmatrix}
=\begin{bmatrix}2\\1\\-2\end{bmatrix}
=\vec{w}.
$$
