#import "@preview/numbly:0.1.0": numbly

#set enum(
  full:true, 
  numbering: numbly("({1:a})" )
)

#set page(
  header: smallcaps[
    MATH 452: Differential Geometry --- Homework 1 #h(1fr) Jesse Looney
  ],
  numbering: "1",
)

#import "mathlib.typ": *
#import "reference.typ": *
#show: template-math

= 1-2-1

$
  alpha: RR -> RR^2 wide "given by" wide alpha(t) = (sin t, cos t)
$

= 1-2-2

Let $f(t) = abs(alpha(t))^2$. Since $abs(alpha(t_0))$ is a point on the trace of $alpha$ closest to the origin, we know that $abs(alpha(t))$ is minimized at $t_0$, so $f$ is also minimized at $t_0$. I take $alpha'(t_0) != 0$ to imply that $alpha$ is differentiable at $t_0$. Hence, writing $f(t) = alpha(t) dot alpha(t)$ makes it clear that $f$ is differentiable at $t_0$ (with $f'(t_0) = 2 alpha dot alpha'(t)$). Since $f$ is both minimized and differentiable at $t_0$, we must have $f'(t_0) = 0$. Therefore,
$
  2 alpha(t_0) dot alpha'(t_0) = 0
$
so $alpha(t_0) dot alpha'(t_0) = 0$. Since neither vector is zero (the former because the curve never passes through the origin, the latter because we are told so), this establishes that the vectors are orthogonal.

= 1-2-3

Since the $alpha''$ is identically zero, $alpha'$ must be constant. Hence, the trace of $alpha$ is a line or line segment.

= 1-2-5
