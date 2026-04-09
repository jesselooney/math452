#import "@preview/numbly:0.1.0": numbly

#set enum(
  full:true, 
  numbering: numbly("({1:a})" )
)

#set page(
  header: smallcaps[
    // TODO: Update homework number!
    MATH 452: Differential Geometry --- Homework 7 #h(1fr) Jesse Looney
  ],
  numbering: "1",
)

#import "mathlib.typ": *
#import "reference.typ": *
#show: template-math

#set math.mat(delim: "[")

= 3-2-2

Suppose $p$ is a point on the curve (denoted by $alpha$). Without loss of generality, $p = alpha(0)$. Consider the curve $N(t) = N compose alpha(t)$. Since the surface is tangent to a plane along the whole curve, the normals of the surface at each point on the curve must all be equal (to the normal of the plane). Therefore, $N'(t) equiv 0$. Thus $d N_p (alpha'(0)) = N'(0) = 0$. Since $alpha'(0) != 0$, this means zero is an eigenvalue of $d N_p$, hence $K = det(d N_p) = 0$, which implies $p$ is parabolic or planar.

= 3-2-4

No. One such surface $S$ is the $x y$ plane (with $k_1 = k_2 = 0$ everywhere), but we know there are planar curves with arbitrarily large curvature (circles of small radius, for instance).

= 3-2-6

Suppose $u, v$ are orthogonal unit vectors in $T_p S$. If $u$ makes an angle $theta_u$ with the principal direction $e_1$, then $v$ must make an angle $theta_v = theta_u plus.minus pi slash 2$. Therefore, because $cos (theta plus.minus pi slash 2) = plus.minus sin theta$ (and likewise for $sin$), the sum of their normal curvatures is
$
  k_n^u + k_n^v
    &= k_1 cos^2 theta_u + k_2 sin^2 theta_u + k_1 cos^2 theta_v + k_2 sin^2 theta_v \
    &= k_1 cos^2 theta_u + k_2 sin^2 theta_u + k_1 sin^2 theta_u + k_2 cos^2 theta_u \
    &= k_1 + k_2
$
which is independent of the choice of $u$ and $v$.

= 3-2-8

1. The open northern hemisphere (assuming the orientation with $N(0, 0, 0) = (0, 0, 1)$). This is because the slope of the paraboloid gets arbitrarily large so the normals get arbitrarily close to horizontal.

2. The points of the sphere with inclination angle $theta in (pi slash 4, 3 pi slash 4)$. This is because the hyperboloid has vertical sides (horizontal normals) in the $x y$ plane, and then approaches positive and negative unit slope in either direction, allowing the normals to range up to $plus.minus 45 degree$. This works for either orientation of the surface due to its symmetry.

#pagebreak()

= 3-3-1

By the Graph Theorem, we have a parametrization $X: RR^2 -> RR^3$ given by $X(u,v) = (u, v, a u v)$. Thus we have
$
  X_u &= (1, 0, a v) \
  X_v &= (0, 1, a u) \
  X_(u v) &= (0, 0, a) \
  X_(u u) &= X_(v v) = 0
$
We take the orientation where $N(0, 0) = X_u times X_v = (0, 0, 1)$. At $(0, 0)$, we have
$
  E = X_u dot X_u = 1 \
  F = X_u dot X_v = 0 \
  G = X_v dot X_v = 1 \
  N = (0, 0, 1) \
  e = N dot X_(u u) = 0 \
  f = N dot X_(u v) = a \
  g = N dot X_(v v) = 0
$
Therefore, we have
$
  K = (e g - f^2)/(E G - F^2) = - a^2 wide H = 1/2 (e G - 2 f F + g E)/(E G - F^2) = 0
$

#pagebreak()

= 3-3-2

We naturally have a at each point a local parametrization given by $X(u,v) = (v cos u, v sin u, c u)$. Thus, we have
$
  X_u &= (- v sin u, v cos u, c) \
  X_v &= (cos u, sin u, 0) \
  X_(u u) &= (- v cos u, - v sin u, 0) \
  X_(u v) &= (- sin u, cos u, 0) \
  X_(v v) &= (0, 0, 0) \
$
We take
$
  N = (X_u times X_v)/abs(X_u times X_v) = ((c sin u, - c cos u, - v))/sqrt(c^2 + v^2)
$
giving us
$
  e &= N dot X_(u u) = 0 \
  f &= N dot X_(u v) = - c/sqrt(c^2 + v^2) \
  g &= N dot X_(v v) = 0 \
$
Any asymptotic curve given by $alpha(t) = X(u(t), v(t))$ must satisfy
$
  e (u')^2 + 2 f u' v' + g (v')^2 = 0
$
which in this case is
$
  - (2 c u' v')/sqrt(c^2 + v^2) = 0
$
Therefore, the asymptotic curves of the surface have either $u' = 0$ ($u$ constant; radial lines of fixed angle) or $v' = 0$ ($v$ constant; helical lines of fixed radius).

Since $F = X_u dot X_v = 0$, we have $e G - 2 f F + g E = 0$, so the mean curvature $H$ is zero.

#pagebreak()

= 3-3-4

By the Graph Theorem we have a parametrization $X: RR^2 -> RR^3$ given by $X(u,v) = (u, v, u v)$. Thus, we have
$
  X_u &= (1, 0, v) \
  X_v &= (0, 1, u) \
  X_(u u) &= (0, 0, 0) \
  X_(u v) &= (0, 0, 1) \
  X_(v v) &= (0, 0, 0) \
$
We take
$
  N = (X_u times X_v)/abs(X_u times X_v) = ((- v, - u, 1))/sqrt(1 + u^2 + v^2)
$
giving us
$
  e &= N dot X_(u u) = 0 \
  f &= N dot X_(u v) = 1/sqrt(1 + u^2 + v^2) \
  g &= N dot X_(v v) = 0 \
$
Any asymptotic curve given by $alpha(t) = X(u(t), v(t))$ must satisfy
$
  e (u')^2 + 2 f u' v' + g (v')^2 = 0
$
which in this case is
$
  (2 u' v')/sqrt(1 + u^2 + v^2) = 0
$
Thus the asymptotic curves of the surface have either $u' = 0$ ($u$ constant) or $v' = 0$ ($v$ constant).

#pagebreak()

= 3-3-5

We have
$
  X &= (u - u^3/3 + u v^2, v - v^3/3 + v u^2, u^2 - v^2) \
  X_u &= (1 - u^2 + v^2, 2 v u, 2 u) \
  X_v &= (2 u v, 1 - v^2 + u^2, - 2 v) \
  X_(u u) &= (- 2 u, 2 v, 2) \
  X_(u v) &= (2 v, 2 u, 0) \
  X_(v v) &= (2 u, - 2 v, - 2) \
$

This yields
$
  E &= X_u dot X_u = (1 - u^2 + v^2)^2 + 4 v^2 u^2 + 4 u^2 &&= (1 + u^2 + v^2)^2 \
  F &= X_u dot X_v = (1 - u^2 + v^2)(2 u v) + (1 - v^2 + u^2)(2 v u) - 4 u v &&= 0 \
  G &= X_v dot X_v = 4 u^2 v^2 + (1 - v^2 + u^2)^2 + 4 v^2 &&= (1 + u^2 + v^2)^2 \
$

We take
$
  N = (X_u times X_v)/abs(X_u times X_v)
    = ((- 2 u - 2 u v^2 - 2 u^3, 2 v + 2 v u^2 + 2 v^3, 1 - u^4 - v^4 - 2 u^2 v^2))/abs((- 2 u - 2 u v^2 - 2 u^3, 2 v + 2 v u^2 + 2 v^3, 1 - u^4 - v^4 - 2 u^2 v^2)) \
    = ((1 + u^2 + v^2) (- 2 u, 2 v, 1 - u^2 - v^2))/abs((1 + u^2 + v^2) (- 2 u, 2 v, 1 - u^2 - v^2))
    = ((- 2 u, 2 v, 1 - u^2 - v^2))/(1 + u^2 + v^2)
$
giving us
$
  e &= N dot X_(u u) = 2 \
  f &= N dot X_(u v) = 0 \
  g &= N dot X_(v v) = -2 \
$

Now
$
  K &= (e g - f^2)/(E G - F^2) = - 4/(1 + u^2 + v^2)^4 \
  H &= 1/2 (e G - 2 f F + g E)/(E G - F^2) = 0 \
  k_1 &= H + sqrt(H^2 - K) = 2/(1 + u^2 + v^2)^2 \
  k_2 &= H - sqrt(H^2 - K) = -2/(1 + u^2 + v^2)^2 \
$

Any asymptotic curve given by $alpha(t) = X(u(t), v(t))$ must satisfy
$
  e (u')^2 + 2 f u' v' + g (v')^2 = 0 \
  ==> 2 (u')^2 - 2 (v')^2 = 0
$
so $u' = plus.minus v'$. Thus asymptotic curves either have $u - v$ constant or $u + v$ constant.

= Additional \#1

Parametrize the cylinder $S$ by $X: (0, 2 pi) times (0, h) -> S$ given by $X(u, v) = (r cos u, r sin u, v)$, which covers the whole cylinder except for a vertical line. We have
$
  X_u = (- r sin u, r cos u, 0) wide X_v = (0, 0, 1) \
  E = r^2 wide F = 0 wide G = 1
$
Let $Q_epsilon = {(u, v) | u in [epsilon, 2 pi - epsilon], v in (0, h)}$ for $epsilon > 0$. Let $R_epsilon = X(Q_epsilon)$. Then
$
  A(R_epsilon)
    = integral.double_(Q_epsilon) sqrt(E G - F^2) thin d u thin d v
    = integral_0^h integral_epsilon^(2 pi - epsilon) r thin d u thin d v
    = (2 pi - 2 epsilon) r h
$
Hence,
$
  A(S) = lim_(epsilon->0) A(R_epsilon) = 2 pi r h
$

= Additional \#2

This is a cylinder of radius $2$, which we can parametrize with $X: (0, 2 pi) times RR -> S$ given by $X(u, v) = (2 cos u, 2 sin u, v)$ (which contains the point $(0, 2, 0)$). We have
$
  X_u = (- 2 sin u, 2 cos u, 0) wide X_v = (0, 0, 1) \
  X_(u u) = (- 2 cos u, - 2 sin u, 0) wide X_(u v) = (0, 0, 0) wide X_(v v) = (0, 0, 0) \
  E = 4 wide F = 0 wide G = 1 \
$
giving us the coefficients of the first fundamental form. We choose
$
  N = (X_u times X_v)/abs(X_u times X_v) = (cos u, sin u, 0)
$
and obtain
$
  e = N dot X_(u u) = -2 wide f = N dot X_(u v) = 0 wide g = N dot X_(v v) = 0
$
giving us the coefficients of the second fundamental form. From these, we can obtain the Gaussian and mean curvature:
$
  K &= (e g - f^2)/(E G - F^2) = 0 wide
  H &= 1/2 (e G - 2 f F + g E)/(E G - F^2) = - 1/4 \
$
Therefore, the principal curvatures are
$
  k_1 = H + sqrt(H^2 - K) = 0 wide k_2 = H - sqrt(H^2 - K) = - 1/2
$
