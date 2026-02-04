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

The trace of $alpha$ is a line or an open line segment (or empty). 

Let $I$ be the domain of $alpha$. If $I = emptyset$, then the trace of $alpha$ is empty, and we are done. Otherwise, we let $t_0 in I$. We know that $alpha'$ is continuous and constant (say, $alpha'(t) = v$ for all $t in I$) because $alpha''$ is identically zero. Suppose $t in I$. Since $alpha'$ is continuous, the Fundamental Theorem of Calculus gives
$
  integral_(t_0)^t alpha'(t') thin d t' = alpha(t) - alpha(t_0)
$
That is,
$
  alpha(t)
    = alpha(t_0) + integral_(t_0)^t v thin d t'
    = alpha(t_0) + v (t - t_0)
    = u + v t
$
where $u = alpha(t_0) - v t_0$. Since $t$ was arbitrary, we have found a general formula for $alpha$. This identifies the trace of $alpha$ as a line (if $I = RR$) or an open line segment (if $I$ is a bounded open interval).

= 1-2-5

Recall that the derivative of $abs(alpha(t))^2 = alpha(t) dot alpha(t)$ is $2 alpha(t) dot alpha'(t)$. We have
$
  abs(alpha(t)) "constant"
    &iff abs(alpha(t))^2 "constant" && "(because" abs(alpha(t)) >= 0 ")" \
    &iff d/(d t) abs(alpha(t))^2 = 0 thick forall t in I \
    &iff 2 alpha(t) dot alpha'(t) = 0 thick forall t in I \
    &iff alpha(t) dot alpha'(t) = 0 thick forall t in I \
$
Therefore, if $abs(alpha(t))$ is a _nonzero_ constant, then not only do we have $alpha(t) dot alpha'(t) = 0$ for all $t in I$, but we also have that $alpha(t)$ and $alpha'(t)$ are nonzero for all $t in I$ (the latter by hypothesis). Hence, $alpha(t)$ and $alpha'(t)$ are orthogonal for all $t in I$.

Conversely, if $alpha(t)$ and $alpha'(t)$ are orthogonal for all $t in I$, then $alpha(t)$ is never zero and $alpha(t) dot alpha'(t) = 0$ for all $t in I$, so $abs(alpha(t))$ is a nonzero constant.

#pagebreak()

= 1-3-1

The tangent lines to $alpha$ are
$
  alpha'(t) = (3, 6t, 6t^2) \
  abs(alpha'(t)) = 3 sqrt(1 + 4t^2 + 4t^4) = 3 (2t^2 + 1) = 6 t^2 + 3
$
and one direction vector for the described line is $v = (1, 0, 1)$ with $abs(v) = sqrt(2)$. Suppose $t$ is in the domain of $alpha$. We consider the angle $theta in [0, pi]$ between $alpha'(t)$ and $v$. Since $alpha$ is regular, $alpha'(t) != 0$, so $abs(alpha'(t)) != 0$, so we can write
$
  cos theta
    = (abs(alpha'(t)) abs(v) cos theta) / (abs(alpha'(t)) abs(v))
    = (alpha'(t) dot v) / ((6t^2 + 3) sqrt(2))
    = (6t^2 + 3) / ((6t^2 + 3) sqrt(2))
    = 1/sqrt(2)
$
It follows that $theta = pi slash 4$ because $theta in [0, pi]$. Since $t$ was arbitrary, we have shown that all the tangent lines of $alpha$ make a constant angle $pi slash 4$ with the given line.

= 1-3-2

1. One such parametrization is
  $
    alpha(t) &= (t + cos(t + pi slash 2), 1 - sin(t + pi slash 2)) \
    alpha'(t) &= (1 - sin(t + pi slash 2), - cos(t + pi slash 2))
  $
  where $t$ is the distance (or angle) rolled. The parametrized curve has singular points when $sin(t + pi slash 2) = 1$ and $cos(t + pi slash 2) = 0$. Clearly, such is the case if and only if $t = 2 pi k$ for some $k in ZZ$. Thus, the singular points are just the set $2 pi ZZ$.

2. The arc length from $t = 0$ to $t = 2 pi$ (one full rotation) is
  $
    integral_0^(2 pi) abs(alpha'(t)) thin d t
      &= integral_0^(2 pi) sqrt([1 - 2 sin(t + pi slash 2) + sin^2(t + pi slash 2)] + cos^2(t + pi slash 2)) thin d t \
      &= integral_0^(2 pi) sqrt(2 - 2 sin(t + pi slash 2)) thin d t \
      &= sqrt(2) integral_0^(2 pi) sqrt(1 - sin(t + pi slash 2)) thin d t \
      &= sqrt(2) integral_0^(2 pi) sqrt(1 - 2 sin((2 t + pi) / 4) cos((2 t + pi) / 4)) thin d t \
      &= sqrt(2) integral_0^(2 pi) sqrt(sin^2((2 t + pi) / 4) + cos^2((2 t + pi) / 4) - 2 sin((2 t + pi) / 4) cos((2 t + pi) / 4)) thin d t \
      &= sqrt(2) integral_0^(2 pi) [sin((2 t + pi) / 4) - cos((2 t + pi) / 4)] thin d t \
      &= 2 sqrt(2) [-cos((2 t + pi) / 4) - sin((2 t + pi) / 4)]_0^(2 pi) \
      &= 2 sqrt(2) [cos(pi/4) + sin(pi/4) - cos((5pi)/4) - sin((5pi)/4)] \
      &= 2 sqrt(2) [1/sqrt(2) + 1/sqrt(2) + 1/sqrt(2) + 1/sqrt(2)] \
      &= 8
  $

#pagebreak()

= 1-3-4

1. $alpha$ is differentiable because its derivative exists via the usual rules of differentiation:
  $
    alpha'(t) = (cos t, -sin t + 1/2 cot t/2 sec^2 t/2)
  $
  Suppose $t in (0, pi)$ such that $alpha'(t) = 0$. Then $cos t = 0$, so $t = pi slash 2$ (because $t in (0, pi)$). Hence, singular points can only occur at $t = pi slash 2$. Indeed, $t = pi slash 2$ is a singular point, because, in addition to $cos pi slash 2 = 0$, we have
  $
    -sin pi/2 + 1/2 cot pi/4 sec^2 pi/4 = -1 + 1/2 dot 1 dot 2 = 0
  $
  Thus, we may say that $alpha$ is regular except at $t = pi slash 2$.

2. In Figure 1-9 in the textbook, connect the point labeled $alpha(t)$ (denote this point by $P$) to the closest point $Q$ on the y-axis using a horizontal line segment. This line segment must have length $overline(P Q) = alpha_x (t) = sin t$. This line segment also completes a right triangle $Delta P Q R$ where $R$ is the unlabeled point in the figure where the tangent to $alpha$ at $t$ intersects the y-axis. Denote the length of $P R$, the desired segment of the tangent of the tractrix, by $ell$. From the figure and the statement of the problem ($t$ is the angle made by the y-axis with $alpha'(t)$), we have that the measure of the angle $P R Q$ is $t$. Therefore, $sin t = overline(P Q) slash overline(P R)$, or $ell = sin t slash sin t = 1$.


= 1-3-5
We first compute
$
  alpha'(t)
    &= ((3 a (1 + t^3) - 3 a t dot 3 t^2)/(1 + t^3)^2,
        (6 a t (1 + t^3) - 3 a t^2 dot 3 t ^2)/(1 + t^3)^2) \
    &= ((3 a + 3 a t^3 - 9 a t^3)/(1 + t^3)^2,
        (6 a t + 6 a t^4 - 9 a t^4)/(1 + t^3)^2) \
//    &= ((3 a - 6 a t^3)/(1 + t^3)^2,
//        (6 a t - 3 a t^4)/(1 + t^3)^2) \
    &= ((3 a - 6 a t^3)/(1 + 2 t^3 + t^6),
        (6 a t - 3 a t^4)/(1 + 2 t^3 + t^6))
$
for use in the subsequent problems.

1. We have $alpha(0) = (0, 0)$, so $alpha$ touches the x-axis at $t = 0$. Moreover, $alpha'(0) = (3 a, 0)$, which is parallel to the x-axis (assuming $a != 0$). These two facts together say that $alpha$ is tangent to the x-axis at $t = 0$. (If $a = 0$, then the trace of $alpha$ consists only of the single point $(0, 0)$, in which case $alpha$ is not tangent to the x-axis at $t = 0$.)

2. 

