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

#pagebreak()

= 1-4-2

We assume that $a, b, c$ are not all zero.

We will show that $v != 0$ is perpendicular to every vector in the plane. Consider any two distinct points $A = (x_1, y_1, z_1)$ and $B = (x_2, y_2, z_2)$ in the plane, and let $u = B - A != 0$ be the vector between them. We have
$
  v dot u
    &= a (x_2 - x_1) + b (y_2 - y_1) + c (z_2 - z_1) \
    &= (a x_2 + b y_2 + c z_2) - (a x_1 + b y_1 + c z_1) \
    &= -d + d = 0
$
so $v perp u$.

Now we will show that the shortest distance between any point in the plane and the origin is $abs(d) slash abs(v)$. We use the method of Lagrange multipliers to minimize the square distance $f(u) = abs(u)^2$ between a point $u$ and the origin subject to $g(u) = v dot u + d = 0$. Suppose $u$ is an extremum of $f$ subject to $g = 0$. Then we must have $2 u = gradient f(u) = lambda gradient g(u) = lambda v$ for some $lambda in RR$. But then we have
$
  lambda/2 abs(v)^2 = v dot (lambda/2 v) = v dot u = g(u) - d = 0 - d = -d \
  lambda/2 = -d / abs(v)^2
$
Thus, the only extremum of $f$ subject to $g=0$ occurs when
$
  u = lambda/2 v = - (d v) / abs(v)^2
$
Clearly, the extrema of $f$ occur in the same places as the extrema of $sqrt(f)$, since $sqrt(dot)$ is monotonic. Moreover, $sqrt(f)$ clearly cannot have a maximum, even subject to $g=0$, since one can travel arbitrarily far away from the origin while remaining in the plane. Therefore, the found value of $u$ minimizes $sqrt(f)$ subject to $g=0$; it is the point on the plane closest to the origin, and thus the distance from the plane to the origin is
$
  sqrt(f(u)) = abs(- (d v) / abs(v)^2) = (abs(d) abs(v))/abs(v)^2 = abs(d) / abs(v) = abs(d) / sqrt(a^2 + b^2 + c^2)
$

= 1-4-4

Let $v_i = (a_i, b_i, c_i)$ for $i=1,2$. We will show that $v_1 = lambda v_2$ for some $lambda in RR$, which is clearly equivalent to (but much cleaner than) the given condition (e.g. let $lambda = a_1 slash a_2 = dots.c$)

= 1-4-7

= 1-5-1
= 1-5-2
= 1-5-4
= 1-5-6
= 1-5-8

1. 

#pagebreak()

= Additional \#1

*TODO: insert figures*

See Figures 1(a--b) for sketches of the examples in the corresponding problems.

1. Let
  $
    alpha(s)   &= (sin s, cos s, 0) \
    alpha'(s)  &= (cos s, -sin s, 0) \
    alpha''(s) &= (-sin s, -cos s, 0)
  $
  Observe that $abs(alpha'(s)) = sqrt(cos^2 s + sin^2 s + 0) = 1$ so $alpha$ is indeed parametrized by arc length. We have $kappa(s) = abs(alpha''(s)) = sqrt(sin^2 s + cos^2 s + 0) = 1$ as desired. Thus, we have
  $
    t(s)
      &= alpha'(s)
      &&= (#hide($-$) cos s, -sin s, 0) \
    n(s)
      &= (alpha''(s)) / kappa(s)
      &&= (-sin s, -cos s, 0) \
    b(s)
      &= t(s) times b(s)
      &&= (0, 0, -1) \
    b'(s)
      &= (0, 0, 0)
      &&= 0 dot n(s)
  $
  so $tau(s) = 0$ as desired.

2. Let
  $
    alpha(s)   =&& 1/2 & (#hide($-$) sin sqrt(2) s, #hide($-$) cos sqrt(2) s, sqrt(2) s) \
    alpha'(s)  =&& 1/sqrt(2) & (#hide($-$) cos sqrt(2) s, -sin sqrt(2) s, #hide($sqrt(2)$) 1) \
    alpha''(s) =&& & (-sin sqrt(2) s, -cos sqrt(2) s, #hide($sqrt(2)$) 0)
  $
  Observe that $abs(alpha'(s)) = sqrt(cos^2 sqrt(2) s + sin^2 sqrt(2) s + 1) slash sqrt(2) = 1$ so $alpha$ is indeed parametrized by arc length. We have $kappa(s) = abs(alpha''(s)) = sqrt(sin^2 sqrt(2) s + cos^2 sqrt(2) s + 0) = 1$ as desired. Thus, we have
  $
    t(s)
      &= alpha'(s)
      &&= 1/sqrt(2) & (#hide($-$) cos sqrt(2) s, -sin sqrt(2) s, #hide($-$) 1) \
    n(s)
      &= (alpha''(s)) / kappa(s)
      &&= & (-sin sqrt(2) s, -cos sqrt(2) s, #hide($-$) 0) \
    b(s)
      &= t(s) times n(s)
      &&= 1/sqrt(2) & (#hide($-$) cos sqrt(2) s, -sin sqrt(2) s, -1)
  $
  so
  $
    b'(s) = (-sin sqrt(2) s, -cos sqrt(2) s, 0) = 1 dot n(s) \
  $
  so $tau(s) = 1$ as desired.
