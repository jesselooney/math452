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

The given condition says exatly that $v_1 = (a_1, b_1, c_1)$ is parallel to $v_2 = (a_2, b_2, c_2)$. But those vectors are the normal vectors for each plane (see Exercise 1-4-2), and two planes are parallel if and only if their normal vectors are parallel. Therefore, the condition holds if and only if the planes are parallel.

= 1-4-7

Notice that $v = (a, b, c)$ is the normal vector of the plane (see Exercise 1-4-2) and $u = (u_1, u_2, u_3)$ is the direction vector of the line. The given condition holds if and only if $v$ is orthogonal to $u$, which by definition happens if and only if $u$ lies in the plane normal to $v$. That is true if and only if the line is parallel to the plane.

#pagebreak()

= 1-5-1

1. We have
  $
    alpha'(s) &= (-a/c sin s/c, a/c cos s/c, b/c) \
    abs(alpha'(s)) &= sqrt(a^2/c^2 (sin^2 s/c + cos^2 s/c) + b^2/c^2) = sqrt((a^2 + b^2)/c^2) = sqrt(c^2/c^2) = 1
  $
  so $alpha$ must be parametrized by arc length.

2. We have
  $
    alpha''(s) &= (-a/c^2 cos s/c, -a/c^2 sin s/c, 0) \
    kappa(s) &= abs(alpha''(s)) = sqrt(a^2/c^4(cos^2 s/c + sin^2 s/c) + 0) = a/c^2 \
    t(s) &= alpha'(s) = (-a/c sin s/c, a/c cos s/c, b/c) \
    n(s) &= (alpha''(s)) / kappa(s) = (-cos s/c, -sin s/c, 0) \
    b(s) &= t(s) times n(s) = (b/c sin s/c, -b/c cos s/c, a/c) \
    b'(s) &= (b/c^2 cos s/c, b/c^2 sin s/c, 0) = -b/c^2 n(s) \
    tau(s) &= -b/c^2
  $
  In summary, the curvature and torsion are both constants given by $kappa = a slash c^2$ and $tau = -b slash c^2$.

3. The osculating plane of $alpha$ has normal $t times n = b$, so it is given by
  $
    b(s) dot [(x, y, z) - alpha(s)] = 0
  $

4. We first show these lines meet the $z$-axis at all by showing that their projections onto the $x y$-plane coincide with the same projections of the lines from the origin to $alpha(s)$. Since both sets of lines intersect at the projection of $alpha(s)$, it is enough to show that they are parallel---that is, that the projections $n_(x y)$ and $alpha_(x y)$ of $n(s)$ and $alpha(s)$ are parallel. Indeed
  $
    -a n_(x y)(s) = -a (-cos s/c, -sin s/c) = (a cos s/c, a sin s/c) = alpha_(x y)(s)
  $

  Now we show that the lines make a constant angle $pi slash 2$ with the $z$-axis. We need only show this is the angle between $n$ and $e_3 = (0, 0, 1)$. We know $n(s)$ and $e_3$ make an angle $theta(s) in [0, pi]$ given by
  $
    cos theta(s) = abs(n(s)) abs(e_3) cos theta(s) = n(s) dot e_3 = 0
  $
  Thus $theta(s) = pi slash 2$.

#pagebreak()

5. Suppose $theta(s) in [0, pi]$ is the angle between $t(s)$ and $e_3$ (which is also the angle between the tangent lines and the $z$-axis). Then
  $
    cos theta(s) = abs(t(s)) abs(e_3) cos theta(s) = t(s) dot e_3 = b/c
  $
  But $cos$ is injective on $[0, pi]$, so $cos theta(s)$ being constant implies $theta(s)$ is constant.

#pagebreak()

= 1-5-2

Recall that
$
  alpha' &= t \
  alpha'' &= t' = kappa n \
  alpha'''
    &= (kappa n)' = kappa' n + kappa (- kappa t - tau b)
    = (kappa n)' = - kappa^2 t + kappa' n - kappa tau b
$
Therefore,
$
    - (alpha' times alpha'' dot alpha''') / abs(kappa)^2
    &= - (t times kappa n dot (- kappa^2 t + kappa' n - kappa tau b)) / abs(kappa)^2
    = - (kappa b dot (- kappa^2 t + kappa' n - kappa tau b)) / abs(kappa)^2 \
    &= - (0 + 0 - kappa^2 tau dot 1) / abs(kappa)^2
    = (kappa^2 tau) / abs(kappa)^2
    = tau
$

= 1-5-4

Suppose $alpha: I -> RR^3$ is a regular curve parametrized by arc length whose normals all pass through a fixed point $p in RR^3$ (we assume $kappa(s)$ is never zero so that the normals are always well defined). Thus, the normal to $alpha$ at $s in I$ contains both the vector $n(s)$ and the points $alpha(s)$ and $p$. Therefore, $n(s) parallel alpha(s) - p$, so there exists some $lambda(s)$ such that
$
  alpha(s) - p = lambda(s) n(s) \
  alpha(s) - lambda(s) n(s) = p
$
Differentiating with respect to $s$, we have
$
  t - lambda' n - lambda (-kappa t - tau b) = 0 \
  (1 + lambda kappa) t - lambda' n + lambda tau b = 0
$
Since $t,n,b$ are orthogonal, we must have
$
  1 + lambda kappa &= 0 \
  - lambda' &= 0 \
  lambda tau &= 0
$
The second equation says $lambda(s)$ is constant. The first says that constant must be $lambda = -1 slash kappa != 0$. Hence, the third equation says $tau(s) = 0$ (everywhere). Thus, (since $kappa != 0$ anywhere) the trace of $alpha$ is contained in a plane.

Now we show that all points on the trace of $alpha$ are equidistant from $p$, which will force the trace to be contained in a circle. We have
$
  d/(d s) abs(alpha(s) - p)^2
    = 2 (alpha(s) - p) dot d/(d s) (alpha(s) - p)
    = 2 lambda(s) n(s) dot t(s)
    = 0
$
Since squaring is injective over the non-negative reals, we have shown that $abs(alpha(s) - p)$ is constant, as required.

#pagebreak()

= 1-5-6

1. Suppose $rho : RR^3 -> RR^3$ is an orthogonal transformation with positive determinant. Suppose $u in RR^3$. Then
  $
    abs(rho u)
      = sqrt(abs(rho u)^2)
      = sqrt(rho u dot rho u)
      = sqrt(u dot u)
      = sqrt(abs(u)^2)
      = abs(u)
  $
  so norms are preserved. Now suppose $u,v in RR^3$ differ by an angle $theta in [0, pi]$ (we assume $u,v != 0$). Let $theta_rho in [0, pi]$ be the angle between $rho u$ and $rho v$ (which must be nonzero because $u,v != 0$ and norms are preserved).
  $
    cos theta_rho
      = (rho u dot rho v) / (abs(rho u) abs(rho v))
      = (u dot v) / (abs(u) abs(v))
      = cos theta
  $
  Since $cos$ is injective on $[0, pi]$, we have $theta_rho = theta$, so angles are preserved.

2. Suppose $rho : RR^3 -> RR^3$ is an orthogonal transformation with positive determinant. We know that application of $rho$ is equivalent to multiplication by some fixed $3 times 3$ matrix. In the following, we treat $rho$ itself as that matrix. We note that since $rho$ is an orthogonal matrix with positive determinant, its determinant is in fact precisely $1$. Furthermore, since $rho$ has nonzero determinant, $rho$ is invertible with inverse $rho^(-1)$.

  Now suppose $u,v in RR^3$. All vector variables are assumed to represent column vectors, and we will sometimes represent a matrix as a row of column vectors or a column of row vectors.

  Invariant is a strange choice of word in this problem. We will show that $rho (u times v) = rho u times rho v$ using the definition of the vector product. That is, we will show that, for all $w in RR^3$, we have
  $
    rho (u times v) dot w = det(rho u, rho v, w)
  $
  Suppose $w in RR^3$. Since $rho$ is an orthogonal transformation, we have
  $
    rho (u times v) dot w
      = rho (u times v) dot rho rho^(-1) w
      = (u times v) dot rho^(-1) w
      = det(u, v, rho^(-1) w)
  $
  using the definition of vector product. Observe that
  $
    mat((rho u)^T; (rho v)^T; w^T)
      = mat(rho u, rho v, w)^T
      = mat(rho u, rho v, rho rho^(-1) w)^T
      = (rho mat(u, v, rho^(-1) w))^T
      = mat(u^T; v^T; (rho^(-1) w)^T) rho^T
  $
  Since $det(rho^T) = det(rho) = 1$, taking determinants on either side of the previous equation gives
  $
    det(rho u, rho v, w)
      = det(u, v, rho^(-1) w)
  $
  so $rho (u times v) dot w = det(rho u, rho v, w)$, as required.

  If we drop the requirement that $rho$ have positive determinant, then the proposition does not hold. For example, $rho(u) = -u$ is an orthogonal transformation because it is clearly a linear map and also $-u dot -u = u dot u$ for all $u in RR^3$. But then
  $
    - (e_1 times e_2) = - e_3 != e_3 = -e_1 times -e_2
  $

#pagebreak()

3. Suppose $rho: RR^3 -> RR^3$ is an orthogonal transformation with positive determinant and $v in RR^3$, so that $T(u) = rho u + v$ is a rigid motion. Suppose $alpha: I -> R^3$ is a parametrized curve. Let $beta = T alpha$. We have
  $
    beta'(t)   &= rho alpha'(t) \
    beta''(t)  &= rho alpha''(t) \
    beta'''(t) &= rho alpha'''(t) \
  $
  Let $t_0 in I$. We use the invariance of norms from part (a) to find that
  $
    s_beta (t)
      &= integral_(t_0)^t abs(beta'(t)) thin d t
      = integral_(t_0)^t abs(alpha'(t)) thin d t
      = s_alpha (t) \

    kappa_beta (t)
      &= abs(beta''(t))
      = abs(alpha''(t))
      = kappa_alpha (t)
  $
  Using the torsion formula from Exercise 1-5-2 (\#6 on this homework), together with the fact from part (b), we find
  $
    tau_beta (t)
      &= - (beta'(t) times beta''(t) dot beta'''(t)) / abs(kappa_beta (t))^2 \
      &= - (rho alpha'(t) times rho alpha''(t) dot rho alpha'''(t)) / abs(kappa_alpha (t))^2 \
      &= - (rho [alpha'(t) times alpha''(t)] dot rho alpha'''(t)) / abs(kappa_alpha (t))^2 \
      &= - (alpha'(t) times alpha''(t) dot alpha'''(t)) / abs(kappa_alpha (t))^2 \
      &= tau_alpha (t)
  $

#pagebreak()

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

#pagebreak()

= Additional \#2

Write $u(t) = (a(t), b(t), c(t))$ and $v(t) = (x(t), y(t), z(t))$.

1.
  $
    [u(t) dot v(t)]'
      &= [a(t) x(t) + b(t) y(t) + c(t) z(t)]' \
      &= [a'(t) x(t) + a(t) x'(t)] + [b'(t) y(t) + b(t) y'(t)] + [c'(t) z(t) + c(t) z'(t)] \
      &= [a'(t) x(t) + b'(t) y(t) + c'(t) z(t)] + [a(t) x'(t) + b(t) y'(t) + c(t) z'(t)] \
      &= u'(t) dot v(t) + u(t) dot v'(t)
  $

2. 
  $
    [u(t) times v(t)]'
      &= &&(b(t) z(t) - c(t) y(t), c(t) x(t) - a(t) z(t), a(t) y(t) - b(t) x(t))' \
      &= &&(b'(t) z(t) + b(t) z'(t) - c'(t) y(t) - c(t) y'(t), \
         &&& #hide($($) c'(t) x(t) + c(t) x'(t) - a'(t) z(t) - a(t) z'(t), \
         &&& #hide($($) a'(t) y(t) + a(t) y'(t) - b'(t) x(t) - b(t) x'(t)) \
      &= && (b'(t) z(t) - c'(t) y(t), c'(t) x(t) - a'(t) z(t), a'(t) y(t) - b'(t) x(t)) \
      && +& (b(t) z'(t) - c(t) y'(t), c(t) x'(t) - a(t) z'(t), a(t) y'(t) - b(t) x'(t)) \
      &= && u'(t) times v(t) + u(t) times v'(t)
  $
