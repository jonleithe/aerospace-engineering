---
title       : Vector Spaces and Subspaces
subject     : Linear Algebra
source      : Linear Algebra and Its Applications, 6th edition
author      : Jon Leithe
date        : 2026-09-29
---

Linear algebra becomes more useful when its ideas are separated from ordinary
arrows in two or three dimensions. A **vector space** is any collection of
objects that can be added and scaled while obeying the same consistent rules.
The objects may be coordinate vectors, polynomials, signals, or matrices.

These notes are based on the handwritten note
[`4-1-vector-spaces-and-subspaces.pdf`](../hand-written/4-1-vector-spaces-and-subspaces.pdf).

## Vector spaces

::: {.callout-note title="Definition — Vector space"}

**Textbook reference:** pp.226–227

A **vector space** is a nonempty set $V$ of objects, called vectors, on which
vector addition and multiplication by real scalars are defined. For all
$\vec{u},\vec{v},\vec{w}\in V$ and all scalars $c,d\in\mathbb{R}$, the
following ten axioms hold:

1. $\vec{u}+\vec{v}\in V$.
2. $\vec{u}+\vec{v}=\vec{v}+\vec{u}$.
3. $(\vec{u}+\vec{v})+\vec{w}=\vec{u}+(\vec{v}+\vec{w})$.
4. There is a zero vector $\vec{0}\in V$ such that
   $\vec{u}+\vec{0}=\vec{u}$.
5. For every $\vec{u}\in V$, there is a vector $-\vec{u}\in V$ such that
   $\vec{u}+(-\vec{u})=\vec{0}$.
6. $c\vec{u}\in V$.
7. $c(\vec{u}+\vec{v})=c\vec{u}+c\vec{v}$.
8. $(c+d)\vec{u}=c\vec{u}+d\vec{u}$.
9. $c(d\vec{u})=(cd)\vec{u}$.
10. $1\vec{u}=\vec{u}$.

:::

The familiar space $\mathbb{R}^n$ satisfies these axioms. The same reasoning
also applies to less visual spaces, such as sampled signals or polynomials.

### Examples of vector spaces

#### Example 1: coordinate spaces

For every integer $n\geq 1$, $\mathbb{R}^n$ is a vector space. The geometric
intuition developed for $\mathbb{R}^3$ helps visualize ideas that also apply
in higher and lower dimensions.

#### Example 2: arrows in $\mathbb{R}^3$

Consider directed arrows in three-dimensional space, treating two arrows as
equal when they have the same length and direction. Define addition by the
parallelogram rule and scalar multiplication by scaling an arrow. This gives
another way to represent the familiar vector operations.

#### Example 3: doubly infinite sequences

Let $\mathcal{S}$ be the set of all doubly infinite real sequences

$$
\mathbf{y}=(\ldots,y_{-2},y_{-1},y_0,y_1,y_2,\ldots).
$$

Add sequences componentwise and multiply each component by the scalar. For
example, if $\mathbf{z}\in\mathcal{S}$, then

$$
\mathbf{y}+\mathbf{z}=(\ldots,y_k+z_k,\ldots),
\qquad
c\mathbf{y}=(\ldots,cy_k,\ldots).
$$

These operations satisfy the vector-space axioms, just as they do for
coordinate vectors. Discrete-time measurements can be represented by such
sequences; their entries might describe electrical, mechanical, optical, or
audio signals.

#### Example 4: polynomials of bounded degree

For an integer $n\geq 0$, let $\mathcal{P}_n$ be the set of real polynomials
of degree at most $n$:

$$
p(t)=a_0+a_1t+a_2t^2+\cdots+a_nt^n,
\qquad a_0,\ldots,a_n\in\mathbb{R}.
$$

The zero polynomial is included in $\mathcal{P}_n$, even though its degree is
not defined. Addition and scalar multiplication act on the coefficients. For
example, if

$$
q(t)=b_0+b_1t+\cdots+b_nt^n,
$$

then

$$
(p+q)(t)=(a_0+b_0)+(a_1+b_1)t+\cdots+(a_n+b_n)t^n
$$

and

$$
(cp)(t)=ca_0+ca_1t+\cdots+ca_nt^n.
$$

#### Example 5: real-valued functions

Let $D$ be a nonempty domain and let $V$ be the set of all real-valued
functions defined on $D$. Define addition and scalar multiplication
pointwise:

$$
(\vec{f}+\vec{g})(t)=\vec{f}(t)+\vec{g}(t),
\qquad
(c\vec{f})(t)=c\vec{f}(t).
$$

For example, on $D=\mathbb{R}$, if
$\vec{f}(t)=1+\sin(2t)$ and $\vec{g}(t)=2+\frac{1}{2}t$, then

$$
(\vec{f}+\vec{g})(t)=3+\sin(2t)+\frac{1}{2}t,
\qquad
(2\vec{g})(t)=4+t.
$$

Two functions are equal when their values agree at every point in $D$. The
zero vector is the function that is identically zero, and the additive
inverse of $\vec{f}$ is $-\vec{f}$. Each function is one vector in this space,
not a collection of separate vectors indexed by its input.

## Subspaces

A **subspace** is a vector space contained inside another vector space. The
ambient vector space already supplies the ten axioms, so only three properties
need to be checked.

::: {.callout-note title="Definition — Subspace"}

**Textbook reference:** p.229

A subset $H$ of a vector space $V$ is a **subspace of $V$** if:

1. $\vec{0}\in H$;
2. for every $\vec{u},\vec{v}\in H$, the sum
   $\vec{u}+\vec{v}\in H$;
3. for every $\vec{u}\in H$ and every scalar $c$,
   $c\vec{u}\in H$.

:::

The origin is essential. A plane in $\mathbb{R}^3$ that does not pass through
the origin is not a subspace because it fails the first condition. Likewise, a
line in $\mathbb{R}^2$ that misses the origin is not a subspace.

### Examples of subspaces and non-subspaces

#### Example 6: the zero subspace

For any vector space $V$, the set containing only its zero vector,
$\{\vec{0}\}$, is a subspace. It contains zero, and adding or scaling its sole
element always gives zero.

#### Example 7: bounded-degree polynomials

The space $\mathcal{P}_n$ is a subspace of $\mathcal{P}$, the vector space of
all real polynomials. It contains the zero polynomial, and the sum or scalar
multiple of polynomials of degree at most $n$ still has degree at most $n$.

#### Example 8: finitely supported signals

Let $\mathcal{S}_f$ be the subset of $\mathcal{S}$ containing sequences with
only finitely many nonzero entries. The zero sequence belongs to
$\mathcal{S}_f$. The sum of two such sequences and any scalar multiple of one
still have only finitely many nonzero entries, so $\mathcal{S}_f$ is a
subspace of $\mathcal{S}$.

#### Example 9: a coordinate plane in $\mathbb{R}^3$

The space $\mathbb{R}^2$ is not itself a subspace of $\mathbb{R}^3$: its
vectors have two entries, while vectors in $\mathbb{R}^3$ have three. However,
the set

$$
H=
\left\{
\begin{bmatrix}
s\\
t\\
0
\end{bmatrix}
:s,t\in\mathbb{R}
\right\}
$$

is a subset of $\mathbb{R}^3$ that behaves like $\mathbb{R}^2$. It contains
the zero vector, and addition and scalar multiplication preserve the zero
third component. Thus $H$ is a subspace of $\mathbb{R}^3$; geometrically, it
is the $x_1x_2$-plane.

#### Example 10: a plane that misses the origin

A plane in $\mathbb{R}^3$ that does not pass through the origin is not a
subspace because it does not contain the zero vector. For the same reason, a
line in $\mathbb{R}^2$ that misses the origin is not a subspace.

## A subspace spanned by a set

::: {.callout-note title="Theorem 1 — Every span is a subspace"}

If $\vec{v}_1,\ldots,\vec{v}_p$ belong to a vector space $V$, then

$$
\operatorname{span}\{\vec{v}_1,\ldots,\vec{v}_p\}
$$

is a subspace of $V$.

:::

To see why, first note that zero coefficients produce $\vec{0}$. Let

$$
\vec{u}=s_1\vec{v}_1+\cdots+s_p\vec{v}_p,
\qquad
\vec{w}=t_1\vec{v}_1+\cdots+t_p\vec{v}_p
$$

be vectors in the span. Then

$$
\vec{u}+\vec{w}
=(s_1+t_1)\vec{v}_1+\cdots+(s_p+t_p)\vec{v}_p,
$$

which is another vector in the span. For any scalar $c$,

$$
c\vec{u}=(cs_1)\vec{v}_1+\cdots+(cs_p)\vec{v}_p
$$

is also in the span. Thus all three subspace conditions hold.

### Example 11: a span of two vectors

Let

$$
H=\operatorname{span}\{\vec{v}_1,\vec{v}_2\}.
$$

Every vector in $H$ is a linear combination of $\vec{v}_1$ and
$\vec{v}_2$. The argument above proves that $H$ is a subspace of the ambient
space $V$. Geometrically, if the two vectors are independent in
$\mathbb{R}^3$, their span is a plane through the origin.

### Example 12: recognizing a subspace from its description

Let $H$ be the set of all vectors of the form

$$
H=
\left\{
\begin{bmatrix}
a-3b\\
b-a\\
a\\
b
\end{bmatrix}
:a,b\in\mathbb{R}
\right\}.
$$

Writing a general vector as a linear combination gives

$$
\begin{bmatrix}
a-3b\\
b-a\\
a\\
b
\end{bmatrix}
=
a\begin{bmatrix}1\\-1\\1\\0\end{bmatrix}
+b\begin{bmatrix}-3\\1\\0\\1\end{bmatrix}.
$$

Therefore,

$$
H=
\operatorname{span}\left\{
\begin{bmatrix}1\\-1\\1\\0\end{bmatrix},
\begin{bmatrix}-3\\1\\0\\1\end{bmatrix}
\right\}.
$$

By Theorem 1, $H$ is a subspace of $\mathbb{R}^4$.

## Testing whether a vector lies in a span

To determine whether a vector $\vec{y}$ belongs to
$\operatorname{span}\{\vec{v}_1,\ldots,\vec{v}_p\}$, solve

$$
x_1\vec{v}_1+\cdots+x_p\vec{v}_p=\vec{y}.
$$

Equivalently, row-reduce the augmented matrix

$$
\left[
\begin{array}{cccc|c}
\vec{v}_1 & \vec{v}_2 & \cdots & \vec{v}_p & \vec{y}
\end{array}
\right].
$$

### Example 13: a membership condition

For which values of $h$ is

$$
\vec{y}=
\begin{bmatrix}-4\\3\\h\end{bmatrix}
$$

in the subspace of $\mathbb{R}^3$ spanned by

$$
\vec{v}_1=
\begin{bmatrix}1\\-1\\-2\end{bmatrix},
\qquad
\vec{v}_2=
\begin{bmatrix}5\\-4\\-7\end{bmatrix},
\qquad
\vec{v}_3=
\begin{bmatrix}-3\\1\\0\end{bmatrix}?
$$

Row-reducing the augmented matrix gives

$$
\begin{aligned}
\left[
\begin{array}{ccc|c}
1&5&-3&-4\\
-1&-4&1&3\\
-2&-7&0&h
\end{array}
\right]
&\xrightarrow[\displaystyle R_3\leftarrow R_3+2R_1]
{\displaystyle R_2\leftarrow R_2+R_1}
\left[
\begin{array}{ccc|c}
1&5&-3&-4\\
0&1&-2&-1\\
0&3&-6&h-8
\end{array}
\right] \\
&\xrightarrow{\displaystyle R_3\leftarrow R_3-3R_2}
\left[
\begin{array}{ccc|c}
1&5&-3&-4\\
0&1&-2&-1\\
0&0&0&h-5
\end{array}
\right].
\end{aligned}
$$

The system is consistent precisely when $h-5=0$. Therefore,

$$
\vec{y}\in\operatorname{span}\{\vec{v}_1,\vec{v}_2,\vec{v}_3\}
\qquad\Longleftrightarrow\qquad h=5.
$$

## Engineering interpretation

A vector space describes all allowable signals or states under a chosen linear
model. A subspace describes a restricted family that remains meaningful after
signals are added or scaled. For example, the span of a set of vibration modes
contains every response constructed from those modes, while the membership
test determines whether a measured response can be represented by them.

## Summary

- A vector space is closed under addition and scalar multiplication and
  satisfies the ten vector-space axioms.
- A subspace contains zero and is closed under addition and scalar
  multiplication.
- The span of any finite set of vectors is a subspace.
- Membership in a span is tested by solving a matrix equation or row-reducing
  an augmented matrix.
