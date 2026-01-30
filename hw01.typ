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

= 1-3-1

The tangent lines to $alpha$ are
$
  alpha'(t) = (3, 6t, 6t^2) \
  "with" \
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



= 1-3-4

= 1-3-5
