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
where $a,b,c$ are nonzero scalar constants. Define $f: S_1 -> S_2$ by $f(x,y,z) = (a x, b y, c z)$. The codomain is correct here because if $(x,y,z) in S_1$, then $x^2 + y^2 + z^2 = 1$, so
$
  (a x)^2/a^2 + (b y)^2/b^2 + (c z)^2/c^2 = 1
$
and thus $f(x,y,z) in S_2$. Define $g: S_2 -> S_1$ by $g(x,y,z) = (x slash a, y slash b, z slash c)$. The codomain is correct here because if $(x,y,z) in S_2$, then
$
  x^2/a^2 + y^2/b^2 + z^2/c^2 = 1 \
  (x/a)^2 + (y/b)^2 + (z/c)^2 = 1
$
so $g(x,y,z) in S_1$. Moreover, because the scalars are nonzero, $f$ and $g$ are clearly inverses, and both functions are clearly differentiable. Therefore, $f$ is a diffeomorphism between the two surfaces.

= 2-4-1

The result will be true so long as $gradient f dot w$ is orthogonal to all nonzero vectors $w$ in the tangent plane. Suppose $w$ is such a vector, denote the surface by $S$, and let $p = (x_0, y_0, z_0)$. Then there exists a curve $alpha: (-epsilon, epsilon) -> S$ such that $alpha(0) = p$ and $alpha'(0) = w$. Write $alpha(t) = (x(t), y(t), z(t))$, and consider the composition $f compose alpha$, which must be identically zero since the trace of $alpha$ lies on $S$. By the Chain Rule,
$
  0 = d/(d t) (f compose alpha) = f_x x' + f_y y' + f_z z' = gradient f dot alpha'
$
In particular, at $t = 0$ we have $gradient f(p) dot w = 0$. Since $p$ is a regular point of $f$, the differential $gradient f(p)$ at $p$ must be surjective and hence nonzero in this case, so the vectors are indeed orthogonal.

= 2-4-2

Consider the point $(u, v, 0)$ on the surface. The surface is the preimage of 1 under $f(x,y,z) = x^2 + y^2 - z^2$, which has differential $[2x 2y -2z]$. In that preimage, not all of $x,y,z$ can be zero, so the differential is surjective. Hence, 1 is a regular value of $f$. Therefore, the result from Exercise 2-4-1 applies, and says that the tangent plane at the indicated point is
$
  2u (x - u) + 2v (y - v) = 0
$
The normal vector $[2u 2v 0]$ is orthogonal to $[0 0 z]$ for any $z$, so the tangent plane is parallel to the $z$ axis.

= 2-4-3

= Additional \#1

= Additional \#2

