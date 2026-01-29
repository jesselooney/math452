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

Let $f(t) = abs(alpha(t))^2$. Since $abs(alpha(t_0))$ is a point on the trace of $alpha$ closest to the origin, we know that $abs(alpha(t))$ is minimized at $t_0$, so $f$ is also minimized at $t_0$. Hence, $f'(t_0) = 0$ (see below). We have
$
  0 = f'(t_0) = 2 alpha(t_0) dot alpha'(t_0)
$
so $alpha(t_0) dot alpha'(t_0) = 0$. Since neither vector is zero (the former because the curve never passes through the origin, the latter because we are told so), this establishes that the vectors are orthogonal.

_Proof that $f'(t_0) = 0$:_ We are given that $alpha'(t_0) != 0$, which I take to imply that $alpha$ is differentiable at $t_0$. Hence, writing $f(t) = alpha(t) dot alpha(t)$ makes it clear that $f$ is differentiable at $t_0$ (with $f'(t_0) = 2 alpha(t_0) dot alpha'(t_0)$). Clearly, we have
$
  f'(t_0) = lim_(h->0) (f(t_0 + h) - f(t_0)) / h >= lim_(h->0) 0 = 0
$
because $f(t) >= f(t_0)$ for all $t$, since $f$ is minimized at $t_0$.

Now suppose for contradiction that $f'(t_0) > 0$, and denote $f'(t_0)$ by $a$. Let $d(h) = [f(t_0 + h) - f(t_0)] slash h$. We have $lim_(h->0) d(h) = a$. Let $epsilon = a slash 2 > 0$. There exists $delta > 0$ such that $abs(d(h) - a) < epsilon$ whenever $0 < abs(h) < delta$. Let $h_0 = -delta slash 2$, which satisfies $0 < abs(h_0) < delta$. Hence, $d(h_0) > a - epsilon = a slash 2 > 0$. Therefore,
$
  (f(t_0) - f(t_0 - delta slash 2)) / (delta slash 2) = d(h_0) > 0
$
implying $f(t_0) > f(t_0 - delta slash 2)$ which contradicts that $f$ is minimized at $t_0$. Consequently, $f'(t_0) <= 0$, so in fact $f'(t_0) = 0$.

= 1-2-3

= 1-2-5
