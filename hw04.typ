#import "@preview/numbly:0.1.0": numbly

#set enum(
  full:true, 
  numbering: numbly("({1:a})" )
)

#set page(
  header: smallcaps[
    // TODO: Update homework number!
    MATH 452: Differential Geometry --- Homework 4 #h(1fr) Jesse Looney
  ],
  numbering: "1",
)

#import "mathlib.typ": *
#import "reference.typ": *
#show: template-math

#set math.mat(delim: "[")

= 2-2-4

Since $z^2 = 0$ only when $z = 0$, that means $f^(-1)(0)$ is precisely the $x y$-plane, which we already proved is a regular surface. However, $0$ is a critical value of $f$. Consider the differential of $f$.
$
  d f = mat(0, 0, 2 z)
$
At $p = (0, 0, 0)$, the differential $d f_p$ is zero, so it is not surjective. Thus $p$ is a critical point of $f$, so $f(p) = 0$ is a critical value.

= 2-2-7
