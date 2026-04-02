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

*TODO: can we assume the curve is regular???*

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

= 3-3-1

= 3-3-2

= 3-3-4

= 3-3-5
