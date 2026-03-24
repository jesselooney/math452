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

