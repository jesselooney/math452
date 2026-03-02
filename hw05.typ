#import "@preview/numbly:0.1.0": numbly

#set enum(
  full:true, 
  numbering: numbly("({1:a})" )
)

#set page(
  header: smallcaps[
    // TODO: Update homework number!
    MATH 452: Differential Geometry --- Homework 5 #h(1fr) Jesse Looney
  ],
  numbering: "1",
)

#import "mathlib.typ": *
#import "reference.typ": *
#show: template-math

#set math.mat(delim: "[")

= 2-3-1

Clearly, $A^(-1) = A$. Also, $A$ is clearly differentiable (so $A^(-1) = A$ is too). Therefore, $A$ is a diffeomorphism.

= 2-3-2

Yes. Consider the extension of $pi$ to all of $RR^3$, $pi': RR^3 -> RR^2$ given by $(x,y,z) |-> (x,y,0)$. Being a projection, $pi'$ is linear, and thus differentiable on $RR^3$. As noted in Example 1, since $pi$ is just the restriction of a differentiable function $pi'$ to $S$, $pi$ is differentiable on $S$.

= 2-3-4

Let $S_1 = {(x,y,z) mid(|) x^2 + y^2 + z^2 = 1}$ and
$
  S_2 = {(x,y,z) mid(|) x^2/a^2 + y^2/b^2 + z^2/c^2 = 1}
$
where $a,b,c$ are nonzero scalar constants. Define $f: S_1 -> S_2$ by $f(x,y,z) = (a x, b y, c z)$, which is clearly differentiable. Moreover, because the scalars are nonzero, there is clearly an inverse $f^(-1): S_2 -> S_1$ given by $f^(-1)(x,y,z) = (x slash a, y slash b, z slash c)$, which is also differentiable. Therefore, $f$ is a diffeomorphism between the two surfaces.

= 2-4-1

= 2-4-2

= 2-4-3
