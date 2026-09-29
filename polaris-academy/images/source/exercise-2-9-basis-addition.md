# Exercises 2.9.1 and 2.9.2

The two coordinate diagrams are clean vector redrawings of the constructions
in `exercises-2-9.pdf`. The light grid uses equal x and y scales. Component
arrows follow the handwritten solutions, and the darker arrow shows the
resultant vector.

The coordinates are exact:

- Exercise 2.9.1: $3\vec b_1=(3,3)$ and $2\vec b_2=(4,-2)$, so
  $\vec x=(7,1)$.
- Exercise 2.9.2: $-\vec b_1=(2,-1)$ and $3\vec b_2=(9,3)$, so
  $\vec x=(11,2)$.

The cropped original illustrations are retained in
`exercise-2-9-1-basis-coordinates-original-scan.png` and
`exercise-2-9-2-basis-coordinates-original-scan.png` for comparison.

Regenerate the raster assets from the SVG sources from the Academy root:

```sh
rsvg-convert -w 2400 -h 1560 -o images/exercise-2-9-1-basis-addition.png images/source/exercise-2-9-1-basis-addition.svg
rsvg-convert -w 2400 -h 1560 -o images/exercise-2-9-2-basis-addition.png images/source/exercise-2-9-2-basis-addition.svg
```
