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

= 1-5-5
