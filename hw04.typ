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

1. At any point $p = (x, y, z) in RR^3$, we have
  $
    d f_p = 2 mat(x + y + z - 1, x + y + z - 1, x + y + z - 1)
  $
  This matrix is not surjective exactly when all of its elements are zero. Thus $p$ is a critical point of $f$ exactly it lies in the plane $x + y + z - 1 = 0$. The image of this set under $f$ is simply ${0}$, so $0$ is the only critical value of $f$.

2. From (a), any $c != 0$ is a regular value of $f$. By the Inverse Function Theorem, $f^(-1)(c)$ is a regular surface in this case. Also, $f^(-1)(0)$ is the plane $x + y + z - 1 = 0$, which is a regular surface. Therefore, $f^(-1)(c)$ is a regular surface for all $c in RR$.

3. At any point $p = (x, y, z) in RR^3$, we have
  $
    d f_p = mat(y z^2, x z^2, 2 x y z)
  $
  This matrix is not surjective exactly when all of its elements are zero. Thus $p$ is a critical point of $f$ exactly when $p in {(x, y, z) mid(|) (x, y, z) in RR^3 and (x = y = 0 or z = 0)}$. Denote that set, the union of the $x y$-plane and the $z$-axis, by $S$. The image of $S$ under $f$ is clearly ${0}$, so the only critical value of $f$ is $0$.

  For any $c != 0$, $c$ is a regular value of $f$, so $f^(-1)(c)$ is a regular surface by the Inverse Function Theorem. We will show these are the only values of $c$ for which this is the case by showing $f^(-1)(0)$ is not a regular surface.

  Note that $f^(-1)(0)$ is the union of the $x y$-, $y z$-, and $x z$-planes. In particular, the set contains the $x$-, $y$-, and $z$-axes, considered as curves. Each passes through the origin, where their tangents are mutually orthogonal. Suppose $f^(-1)(0)$ is a regular surface. Then the tangent plane to the surface at the origin contains at least three orthogonal vectors. We know the tangent plane is the image $RR^2$ under the differential of some parametrization of the surface at the origin. In particular, it is a two-dimensional vector space (because the differential is linear). Hence, it cannot contain three orthogonal vectors, a contradiction.

= 2-2-17

