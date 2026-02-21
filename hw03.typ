#import "@preview/numbly:0.1.0": numbly

#set enum(
  full:true, 
  numbering: numbly("({1:a})" )
)

#set page(
  header: smallcaps[
    // TODO: Update homework number!
    MATH 452: Differential Geometry --- Homework 3 #h(1fr) Jesse Looney
  ],
  numbering: "1",
)

#import "mathlib.typ": *
#import "reference.typ": *
#show: template-math

= 1-5-3

1. We have that $abs(d t slash d s) = abs(kappa(s))$ is never zero, so $d t slash d s$ is never zero. This says that $t(s)$ is regular.

#set math.mat(delim: "|")

2. We first show that $t(s) = (cos theta(s), sin theta(s))$. When $theta(s) in [0, pi]$, we have
  $
    cos theta(s) = abs(t(s)) abs(e_1) cos theta(s) = t(s) dot e_1 = t_1(s)
  $
  When $theta(s) in [pi, 2 pi]$, we have by the same reasoning that
  $
    t_1(s) = cos[2 pi - theta(s)] = cos[- theta(s)] = cos theta(s)
  $
  Now we have
  $
    abs(t_2) = sqrt(t_2^2) = sqrt(1 - t_1^2) = sqrt(sin^2 theta) = abs(sin theta)
  $
  It is clear enough that $t_2(s) = sin theta(s)$ rather than $- sin theta(s)$ (for example by considering the case when $theta = pi slash 2$.

  With that matter settled. We now show that $n(s) = (-sin theta(s), cos theta(s))$. This is because clearly $abs(n(s)) = 1$ and $t(s) dot n(s) = 0$, together with the fact that the basis ${t, n}$ has the same orientation as ${e_1, e_2}$ as we show below by computing the determinant of the change-of-basis matrix from the former to the latter:
  $
    mat(cos theta, - sin theta; sin theta, cos theta) = cos^2 theta + sin^2 theta = 1 > 0
  $

  Now we see that
  $
    (d t)/(d s) = d/(d s) (cos theta(s), sin theta(s)) = (d theta)/(d s) (-sin theta(s), cos theta(s)) = (d theta)/(d s) n
  $

#pagebreak()

= 1-5-5

1. Using Remark 2 and the given regularity of $alpha$, we assume without loss of generality that $alpha$ is parametrized by arc length. Denote the fixed point that the tangent lines pass through by $p$. At any point $s$ in the domain $I$ of $alpha$, we have that the tangent line to $alpha$ at $s$ passes through $p$ in addition to $alpha(s)$. If $alpha(s) != p$, then the tangent vector $t(s)$ must be parallel to $alpha(s) - p$. Thus, there is some number $lambda(s)$ such that $alpha(s) - p = lambda(s) t(s)$. The same is true even if $alpha(s) = p$, in which case $lambda(s) = 0$. Thus the equation holds for all $s in I$. Differentiating with respect to $s$, we obtain
  $
    t &= lambda' t + lambda t'
    0 &= (lambda' - 1) t + lambda t'
  $
  Suppose $t'(s) != 0$. We know that $t(s) != 0$ (by regularity, also implicit in the arc length parametrization). We also know that $t(s) dot t'(s) = 0$. Since neither vector is zero, they are orthogonal, so the only solution to the above equation is the trivial one: $lambda'(s) = 1$ and $lambda(s) = 0$. This is a contradiction, because $lambda$ cannot both be constant and have nonzero derivative at all points. Therefore, $t'(s) = 0$ and $t(s) = t_0$ is a constant. The above equation still requires $lambda'(s) = 1$ in this case, so $lambda(s) = s + c$ for some constant $c$.
  
  Now we have
  $
    alpha(s) = lambda(s) t(s) + p = s t_0 + (p + c t_0)
  $
  so the trace of $alpha$ is a line or line segment.

2. No. The statement does not even make sense, since $alpha$ does not have tangent lines at all points. Even ignoring that, $alpha$ could proceed linearly, then slow to a stop, then continue linearly in a new direction, and all its tangent lines (the ones that exist) would pass through the kink in the trace of $alpha$, which would nonetheless not be a line (segment).

#set math.mat(delim: "[")

= 2-2-1

We first parametrize the positive $y$ portion of the surface. Let $V = {(x, y, z) mid(|) x^2 + y^2 = 1, y > 0}$ and $U = (0, pi) times RR$. Define $X: U -> V$ by
$
  X(theta, z) = (cos theta, sin theta, z)
$
Clearly, $X$ is $C^infinity$ and $X(U) = V$. Moreover, since cosine is injective on $(0, pi)$, we can define
$
  X^(-1)(x, y, z) = (cos^(-1) x, z)
$
which is in fact the inverse of $X$ and is continuous because $cos^(-1)$ is continuous (in fact, differentiable) on $(0, pi)$. Finally, the differential at $q = (theta, z) in U$ is
$
  d X_q = mat(-sin theta&, 0; cos theta&, 0; 0&, 1)
$
which is injective since the columns are linearly independent. Since the cylinder has radial symmetry, we can just rotate our coordinate system about the $z$-axis and the "same" parametrization above will cover a different arc of length $pi$ on the surface. We only need two more parametrizations to cover the surface, one covering angles $theta$ in $(3 pi slash 4, 7 pi slash 4)$ and another covering angles in $(-3 pi slash 4, pi slash 4)$.

#pagebreak()

= 2-2-2

The first set (call it $S_1$) is not a regular surface. Consider the point $p = (1, 0) in S_1$. Suppose $V$ is an open neighborhood around $p$. Then $V sect S_1$ is not open, because $p in V sect S_1$ but any neighborhood of $p$ contains points not in $S_1$, so no neighborhood is contained in $V sect S_1$. For any choice of open set $U subset.eq RR^2$, there does not exist a homeomorphism $X: U -> V sect S_1$, because then $X(U) = V sect S_1$, so $X$ maps an open set to a non-open set, which contradicts the continuity of the inverse of $X$.

The second set, $S_2$, is a regular surface. Let $U = {(x, y) mid(|) x^2 + y^2 < 1} subset.eq RR^2$ be the open unit disk. Define the smooth function $f: U -> RR$ by $f(x, y) = 0$. Clearly, $S_2 = {(x, y, f(x, y)) mid(|) (x, y) in U}$. By the Graph Theorem, then, $S_2$ is a regular surface.

= 2-2-3

Denote the cone by $S$. Suppose $S$ is a regular surface. Consider the point $p = (0, 0, 0) in S$. There is an open neighborhood $V subset.eq RR^3$ containing $p$, an open set $U subset.eq RR^2$, and a map $X: U -> V sect S$ such that, in particular, $X$ is a homeomorphism. By a proposition from class, the induced map $accent(X, ~): U without {X^(-1)(p)} -> V sect S without {p}$ is a homeomorphism. But $V sect S without {p}$ is disconnected ($z$-values must change sign within the set but are never zero because we removed $p$). In contrast, $U without {X^(-1)(p)}$ must be connected because removing a single point from an open set in $RR^2$ cannot disconnect it (because some open interval around the point is contained in the set and can be used to go around the missing point). This contradicts that the two sets are homeomorphic. Hence, $S$ is not a regular surface.

#pagebreak()

= 2-2-5

Yes. We consider $X$ as $X: U -> P$. Clearly, $X$ is smooth. Moreover, at any point $q = (u, v) in U$, we have
$
  d X_q = mat(1, 1; 1, 1; v, u)
$
Since $u > v$, $u != 1 dot v$ while $1 = 1 dot 1$, so the column vectors of the differential are not parallel. They must then be linearly independent, so $d X_q$ is injective. Lastly, we show that $X$ has a continuous inverse $X^(-1): P -> U$. Define
$
  X^(-1)(s, s, t) = ((s + sqrt(s^2 - 4 t))/2, (s - sqrt(s^2 - 4 t))/2)
$
(which we can do since $x = y$ on $P$). Suppose $(s, s, t) in P$. Let $(u, v) = X^(-1)(s, s, t)$. Then
$
  u + v
    &= (s + sqrt(s^2 - 4 t))/2 + (s - sqrt(s^2 - 4 t))/2
    = s \
  u v
    &= (s + sqrt(s^2 - 4 t))/2 dot (s - sqrt(s^2 - 4 t))/2
    = (s^2 - (s^2 - 4 t))/4
    = t
$
So $X(X^(-1)(s, s, t)) = (s, s, t)$. Now suppose $(u, v) in U$ and let $(s, s, t) = X(u, v)$. Consider the quadratic polynomial
$
  (x - u)(x - v) = x^2 - (u + v) + u v = x^2 - s + t
$
with roots precisely at $u$ and $v$. Letting
$
  u' = (s + sqrt(s^2 - 4 t))/2 wide
  v' = (s - sqrt(s^2 - 4 t))/2
$
we know that $u'$ and $v'$ must be the roots of the quadratic. Moreover, $u' > v'$ and $u > v$ so it must be that $u' = u$ and $v' = v$. Hence, $X^(-1)(X(u, v)) = (u, v)$, so $X^(-1)$ is actually the inverse of $X$. Note that implicit in this argument is the fact that $X^(-1)$ is in fact well-defined on $P$ and gives outputs in $U$. Since the component functions of $X^(-1)$ are continuous wherever defined, $X^(-1)$ is continuous. Thus, $X$ is a parametrization of $P$.

#pagebreak()

= 2-2-8

Straight from the definition, we have that the column vectors of $d X_q$ are $diff X slash diff u$ and $diff X slash diff v$. The differential is injective iff its columns are linearly independent. Since there are only two columns, this happens iff the columns $diff X slash diff u$ and $diff X slash diff v$ are nonzero and non-parallel. But that is true iff their cross product is nonzero.

= 2-2-10

= Additional \#1

1. Suppose $x = (x_1, ..., x_n) in RR^n$. Let $y = (y_1, dots, y_m) = T x in RR^m$. Then
  $
    d T_x = mat(
      (diff y_1)/(diff x_1), ..., (diff y_1)/(diff x_n);
      dots.v, dots.down, dots.v;
      (diff y_m)/(diff x_1), ..., (diff y_m)/(diff x_n)
    )
  $
  Therefore, we want to show that $diff y_j slash diff x_i = T_(j i)$ for $i in {1, ..., n}$ and $j in {1, ..., m}$. Suppose $i$ and $j$ are such. We have
  $
    y_j
      = (T x)_j
      = [T (x_1 e_1 + dots.c + x_n e_n)]_j
      = (x_1 T e_1 + dots.c + x_n T e_n)_j
      = x_1 (T e_1)_j + dots.c + x_n (T e_n)_j
  $
  So $diff y_j slash diff x_i = (T e_i)_j = T_(j i)$.

2. Yes. Let $x = 0 in R^n$. Then we have $d T_x = T$, so $T$ is given by a matrix, and thus $T$ is a linear map.

= Additional \#2
