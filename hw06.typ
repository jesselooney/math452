#import "@preview/numbly:0.1.0": numbly

#set enum(
  full:true, 
  numbering: numbly("({1:a})" )
)

#set page(
  header: smallcaps[
    // TODO: Update homework number!
    MATH 452: Differential Geometry --- Homework 6 #h(1fr) Jesse Looney
  ],
  numbering: "1",
)

#import "mathlib.typ": *
#import "reference.typ": *
#show: template-math

#set math.mat(delim: "[")

= 2-5-1

1. We have
$
  X_u &= (a cos u cos v, b cos u sin v, - c sin u) \
  X_v &= (- a sin u sin v, b sin u cos v, 0) \
$
so the matrix of the first fundamental form in the coordinates of ${X_u, X_v}$ at the image of a point $(u, v)$ is
$
  [I] = mat(E, F; F, G)
$
where
$
  E &= X_u dot X_u = a^2 cos^2 u cos^2 v + b^2 cos^2 u sin^2 v + c^2 sin^2 u \
  F &= X_u dot X_v = (b^2 - a^2) sin u cos u sin v cos v \
  G &= X_v dot X_v = a^2 sin^2 u sin^2 v + b^2 sin^2 u cos^2 v \
$

2. As above, we compute
$
  X_u &= (a cos v, b sin v, 2 u) \
  X_v &= (- a u sin v, b u cos v, 0) \
  E &= a^2 cos^2 v + b^2 sin^2 v + 4 u^2 \
  F &= (b^2 - a^2) u sin v cos v \
  G &= a^2 u^2 sin^2 v + b^2 u^2 cos^2 v \
$

= 2-5-5

We know by the Graph Theorem that $X: U -> S$ given by $X(x,y) -> (x,y,f(x,y))$ is a parametrization of the surface. We have
$
  X_x &= (1, 0, f_x) \
  X_y &= (0, 1, f_y) \
  X_x times X_y &= (- f_x, - f_y, 1)
$
Also, the preimage of $R$ under $X$ is necessarily the projection $Q subset.eq U$. Therefore,
$
  A(R)
    = integral.double_(X^(-1)(R)) abs(X_x times X_y) thin d x thin d y
    = integral.double_Q sqrt(1 + f_x^2 + f_y^2) thin d x thin d y
$

= 

