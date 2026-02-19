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


