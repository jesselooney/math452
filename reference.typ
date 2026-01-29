#import "mathlib.typ": *

#set heading(numbering: "I.1")

= Curves

== Parametrized Curves

#def[A _parametrized curve_ is a function $alpha: I -> RR^3$ where $I subset.eq RR$ is an open interval of the real line.]

== Regular Curves; Arc Length

#def[Let $alpha: I -> RR^3$ be a parametrized differentiable curve. We call a point $t in I$ a _singular point_ of $alpha$ if $alpha'(t) = 0$. A parametrized smooth curve with no singular points is called _regular_.]

#def[
  Given $t_0 in I$, the _arc length_ of a regular parametrized curve $alpha: I -> RR^3$ from the point $t_0$ to $t in I$ is
  $
    s(t) = integral_(t_0)^t abs(alpha'(t)) d t
  $
]
