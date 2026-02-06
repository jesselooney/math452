#import "@preview/numbly:0.1.0": numbly

#set enum(
  full:true, 
  numbering: numbly("({1:a})" )
)

#set page(
  header: smallcaps[
    // TODO: Update homework number!
    MATH 452: Differential Geometry --- Homework 2 #h(1fr) Jesse Looney
  ],
  numbering: "1",
)

#import "mathlib.typ": *
#import "reference.typ": *
#show: template-math

= 1-4-1

#set math.mat(delim: "[")

1. We can write
  $
    (1, 3) &= 1 e_1 + 3 e_2 \
    (4, 2) &= 4 e_1 + 2 e_2
  $
  so the change-of-basis matrix from the given basis to the natural basis is
  $
    A = mat(1, 4; 3, 2)
  $
  with $det A = 2 - 12 = -10 < 0$. Therefore, the basis is negative.

2. We can write
  $
    (1, 3, 5) &= 1 e_1 + 3 e_2 + 5 e_3 \
    (2, 3, 7) &= 2 e_1 + 3 e_2 + 7 e_3 \
    (4, 8, 3) &= 4 e_1 + 8 e_2 + 3 e_3
  $
  so the change-of-basis matrix from the given basis to the natural basis is
  $
    B = mat(1, 2, 4; 3, 3, 8; 5, 7, 3)
  $
  with
  $
    det B
      &= 1 (9 - 56) - 2 (9 - 40) + 4 (21 - 15) \
      &= 1(-47) -2 (-31) + 4 (6) \
      &= -47 + 62 + 24 = 39 > 0
  $
  Therefore, the basis is positive.

= 1-4-2

= 1-4-4

= 1-4-7

