
# Math Lingo

This is a collection of math lingo used throughout the book.

The examples below use the notation and conventions introduced throughout the
linear algebra chapters. In a Markdown table, a vertical bar is escaped as
`\|`; inside a mathematical expression, use `\mid` for “such that” and
`\lvert` and `\rvert` for absolute value or cardinality.

| Symbol | Symbol Name | Meaning | Example |
|---|---|---|---|
| $=$ | equality | has the same value as | $2+3=5$ |
| $\ne$ | not equal to | does not have the same value as | $2\ne3$ |
| $<$ | less than | is smaller than | $2<5$ |
| $>$ | greater than | is larger than | $5>2$ |
| $\le$ | less than or equal to | is smaller than or equal to | $x\le4$ |
| $\ge$ | greater than or equal to | is larger than or equal to | $x\ge0$ |
| $\pm$ | plus or minus | either addition or subtraction | $x=\pm2$ |
| $\approx$ | approximately equal to | close in value to, but not exactly equal to | $\pi\approx3.14$ |
| $\propto$ | proportional to | changes by a constant factor | $y\propto x$ |
| $\infty$ | infinity | an unbounded quantity or process | $x\to\infty$ |
| $\{\,\}$ | set | a collection of objects | $A=\{1,2,3\}$ |
| $\varnothing$ | empty set | a set with no elements | $A=\varnothing$ |
| $\mid$ | such that / given that | separates a condition from the object satisfying it | $\{x\in\mathbb{R}\mid x>0\}$ |
| $:$ | such that / satisfying | separates a condition from the object satisfying it; often used instead of $\mid$ | $\operatorname{Nul}(A)=\{\vec{x}\in\mathbb{R}^n:A\vec{x}=\vec{0}\}$ |
| $\in$ | belongs to / is an element of | is a member of a set | $3\in\{1,2,3\}$ |
| $\notin$ | does not belong to | is not a member of a set | $4\notin\{1,2,3\}$ |
| $\subseteq$ | subset of | every element of one set is in another | $\{1,2\}\subseteq\{1,2,3\}$ |
| $\subset$ | proper subset of | a subset that is not equal to the larger set | $\{1,2\}\subset\{1,2,3\}$ |
| $\cup$ | union | elements in either set, or in both | $\{1,2\}\cup\{2,3\}=\{1,2,3\}$ |
| $\cap$ | intersection | elements shared by both sets | $\{1,2\}\cap\{2,3\}=\{2\}$ |
| $A\setminus B$ | set difference | elements in $A$ but not in $B$ | $\{1,2,3\}\setminus\{2\}=\{1,3\}$ |
| $\lvert A\rvert$ | cardinality | number of elements in a finite set | $\lvert\{1,2,3\}\rvert=3$ |
| $\mathbb{N}$ | natural numbers | usually $\{1,2,3,\ldots\}$; conventions may include $0$ | $3\in\mathbb{N}$ |
| $\mathbb{Z}$ | integers | whole numbers, positive, negative, and zero | $-2\in\mathbb{Z}$ |
| $\mathbb{Q}$ | rational numbers | numbers that can be written as a fraction of integers | $\frac{2}{3}\in\mathbb{Q}$ |
| $\mathbb{R}$ | real numbers | all numbers on the real number line | $\sqrt{2}\in\mathbb{R}$ |
| $\mathbb{C}$ | complex numbers | numbers of the form $a+bi$ | $2+3i\in\mathbb{C}$ |
| $\forall$ | for all | applies to every object in a stated collection | $\forall x\in\mathbb{R},\ x^2\ge0$ |
| $\exists$ | there exists | at least one object satisfies a condition | $\exists x\in\mathbb{R}\text{ such that }x^2=4$ |
| $\implies$ | implies | if the left statement is true, the right statement follows | $x=2\implies x^2=4$ |
| $\iff$ | if and only if | both statements imply each other | $x^2=0\iff x=0$ |
| $\therefore$ | therefore | introduces a conclusion | $a=b\text{ and }b=c\therefore a=c$ |
| $\vec{v}$ | vector | a quantity with magnitude and direction | $\vec{v}=\begin{bmatrix}2\\1\end{bmatrix}$ |
| $\lVert\vec{v}\rVert$ | norm / magnitude | length of a vector | $\left\lVert\begin{bmatrix}3\\4\end{bmatrix}\right\rVert=5$ |
| $\vec{a}\cdot\vec{b}$ | dot product | scalar product of two vectors | $\begin{bmatrix}1\\2\end{bmatrix}\cdot\begin{bmatrix}3\\4\end{bmatrix}=11$ |
| $\vec{a}\times\vec{b}$ | cross product | vector perpendicular to two vectors in $\mathbb{R}^3$ | $\hat{\imath}\times\hat{\jmath}=\hat{k}$ |
| $\operatorname{span}(S)$ | span | all linear combinations of the elements of $S$ | $\operatorname{span}(\vec{v},\vec{w})=\{c_1\vec{v}+c_2\vec{w}\mid c_1,c_2\in\mathbb{R}\}$ |
| $\mathbf{0}$ | zero vector | vector whose components are all zero | $\vec{v}+\mathbf{0}=\vec{v}$ |
| $A^T$ | transpose | matrix obtained by exchanging rows and columns | $\begin{bmatrix}1&2\\3&4\end{bmatrix}^T=\begin{bmatrix}1&3\\2&4\end{bmatrix}$ |
| $\det(A)$ | determinant | scalar associated with a square matrix | $\det\begin{bmatrix}2&7\\3&0\end{bmatrix}=-21$ |
| $\sum$ | summation | adds a sequence of terms | $\sum_{i=1}^{3}i=1+2+3=6$ |
| $\prod$ | product | multiplies a sequence of terms | $\prod_{i=1}^{3}i=1\cdot2\cdot3=6$ |
| $f\colon A\to B$ | function | maps each element of $A$ to one element of $B$ | $f(x)=x^2\colon\mathbb{R}\to\mathbb{R}$ |
| $f'(x)$ | derivative | rate of change of a function | $f(x)=x^2\implies f'(x)=2x$ |
| $\int f(x)\,dx$ | integral | accumulation or an antiderivative | $\int 2x\,dx=x^2+C$ |

: {tbl-colwidths="[12,23,30,35]"}

The symbols and names are adapted from [RapidTables' mathematical symbols
index](https://www.rapidtables.com/math/symbols/index.html) and its [set
theory symbols](https://www.rapidtables.com/math/symbols/Set_Symbols.html).
