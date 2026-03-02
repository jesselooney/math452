#import "@preview/numbly:0.1.0": numbly

#set enum(
  full:true, 
  numbering: numbly("({1:a})" )
)

#set page(
  header: smallcaps[
    // TODO: Update homework number!
    MATH 452: Differential Geometry --- Homework 5 #h(1fr) Jesse Looney
  ],
  numbering: "1",
)

#import "mathlib.typ": *
#import "reference.typ": *
#show: template-math

#set math.mat(delim: "[")

= 2-3-1

Clearly, $A^(-1) = A$. Also, $A$ is clearly differentiable (so $A^(-1) = A$ is too). Therefore, $A$ is a diffeomorphism.

= 2-3-2



= 2-3-4

= 2-4-1

= 2-4-2

= 2-4-3
