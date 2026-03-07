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

We implicitly use the following Proposition to justify that differentiable functions are still differentiable when restricted to surfaces (under appropriate conditions).

*Proposition:* Suppose $f: W -> RR^3$ is differentiable at $q in W$ where $W subset.eq RR^3$ is open. Suppose $S_1 subset.eq RR^3$ is a regular surface with $q in S_1$ and let $V_1 = W sect S_1$. Then $f: V_1 -> RR^3$ is differentiable at $q in V_1$. Moreover, if $f$ is smooth and $d f_q$ is an isomorphism and $f(V_1) subset.eq S_2$ for some regular surface $S_2$, then $f: V_1 -> S_2$ is differentiable at $q$ as a map between surfaces.

_Proof:_ Let $X: U_1 -> V_1$ be a parametrization of $S_1$ such that $q in X(U_1) subset.eq V_1$. Let $p = X^(-1)(q)$. We have that $X$ is differentiable at $p$. Moreover, we have that $f: W -> RR^3$ is differentiable at $q = X(p) in W$. By the Chain Rule, then, $f compose X: U_1 -> RR^3$ is differentiable at $p$. This says that $f: V_1 -> RR^3$ is differentiable at $q in V_1$.

Now suppose additionally that $f: W -> RR^3$ is smooth and $d f_q$ is an isomorphism. Let $r = f(q) in S_2$. Let $Y: U_2 -> V_2$ be a parametrization of $S_2$ such that $r in V_2$. Since $d f_p$ is an isomorphism, the Inverse Function Theorem guarantees that there exist open sets $U subset.eq W$ and $V subset.eq RR^3$ such that $f(p) in V$ and $f: U -> V$ is a diffeomorphism (implicitly, $f(U) = V$). Let $V'_2 = V_2 sect V$ be an open set on $S_2$. We can redo the first part of this proof with $f$ restricted to the open set $f^(-1)(V'_2)$ in order to get $X: U'_1 -> V'_1$ where $V'_1 subset.eq f^(-1)(V'_2)$ such that $f compose X: U'_1 -> V'_2$ is differentiable at $p$. Since $U'_2 = Y^(-1)(V'_2)$ is open, we can restrict $Y$ to be $Y: U'_2 -> V'_2$, with inverse $Y^(-1): V'_2 -> U'_2$. Now we can compose $Y^(-1)$ with $f compose X$.

We can see that $f compose X$ is a parametrization of $S_2$ near $r$. This is because $f compose X$ is $C^infinity$ by virtue of being a composition of such functions. Moreover, $d(f compose X)_p = (d f_q) (d X_p)$ by the chain rule. Both differentials are injective at the appropriate points (by hypothesis for $f$ and definition for $X$). Since $S_2$ is a regular surface, we need not prove condition 2 (by a proposition from the book). Another proposition from the book says that $Y$ is locally a diffeomorphism, so $Y^(-1)$ is differentiable (on $S_2$). By definition, then the composition with a particular parametrization $Y^(-1) compose f compose X$ must be differentiable in the usual sense. This says that $f$ is differentiable at $q$ when considered as a map between surfaces.

= 2-3-1

Clearly, $A^(-1) = A$. Also, $A$ is clearly smooth (so $A^(-1) = A$ is too) with an isomorphic differential. Therefore, $A$ is a diffeomorphism.

= 2-3-2

Yes. Consider the extension of $pi$ to all of $RR^3$, $pi': RR^3 -> RR^2$ given by $(x,y,z) |-> (x,y,0)$. Being a projection, $pi'$ is linear, and thus differentiable on $RR^3$. As noted in Example 1, since $pi$ is just the restriction of a differentiable function $pi'$ to $S$, $pi$ is differentiable on $S$.

#pagebreak()

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
so $g(x,y,z) in S_1$. Moreover, because the scalars are nonzero, $f$ and $g$ are clearly inverses, and both functions are clearly smooth with isomorphic differentials. Therefore, $f$ is a diffeomorphism between the two surfaces.

#pagebreak()

= 2-4-1

The result will be true so long as $gradient f dot w$ is orthogonal to all nonzero vectors $w$ in the tangent plane. Suppose $w$ is such a vector, denote the surface by $S$, and let $p = (x_0, y_0, z_0)$. Then there exists a curve $alpha: (-epsilon, epsilon) -> S$ such that $alpha(0) = p$ and $alpha'(0) = w$. Write $alpha(t) = (x(t), y(t), z(t))$, and consider the composition $f compose alpha$, which must be identically zero since the trace of $alpha$ lies on $S$. By the Chain Rule,
$
  0 = d/(d t) (f compose alpha) = f_x x' + f_y y' + f_z z' = gradient f dot alpha'
$
In particular, at $t = 0$ we have $gradient f(p) dot w = 0$. Since $p$ is a regular point of $f$, the differential $gradient f(p)$ at $p$ must be surjective and hence nonzero in this case, so the vectors are indeed orthogonal.

= 2-4-2

Consider the point $(u, v, 0)$ on the surface. The surface is the preimage of 1 under $f(x,y,z) = x^2 + y^2 - z^2$, which has differential $[2x quad 2y quad -2z]$. In that preimage, not all of $x,y,z$ can be zero, so the differential is surjective. Hence, 1 is a regular value of $f$. Therefore, the result from Exercise 2-4-1 applies, and says that the tangent plane at the indicated point is
$
  2u (x - u) + 2v (y - v) = 0
$
The normal vector $[2u quad 2v quad 0]$ is orthogonal to $[0 quad 0 quad z]$ for any $z$, so the tangent plane is parallel to the $z$ axis.

#pagebreak()

= 2-4-3

Let $g(x,y,z) = f(x,y) - z$, with differential $d g = [f_x quad f_y quad -1]$ which is everywhere surjective (hence all values of $g$ are regular values). Now the surface is the inverse image under $g$ of the regular value 0, so the tangent plane at $p_0$ is
$
  f_x (p_0) (x - x_0) + f_y (p_0) (y - y_0) - (z - f(p_0)) = 0
$
which reduces to the desired equation.

The differential of $f$ at $p$ is $d f_p_0 = [f_x (p_0) quad f_y (p_0)]$. Hence $d f_p_0 (x, y) = f_x (p_0) x + f_y (p_0) y$. Therefore, if $(x, y, d f_p_0 (x,y))$ is a point on the graph of $d f_p_0$, then (considering the point as a vector) it lies in the tangent plane since
  $
    f_x x + f_y y - d f_p_0 (x,y) = 0
  $
  Conversely, if $(x,y,z)$ is a vector in the tangent plane, we have
  $
    f_x x + f_y y - z = 0
  $
  so $z = d f_p_0 (x,y)$ and the vector is a point on the graph of $d f_p_0$.


= Additional \#1

1. Suppose $A,B,X,Y in #[Mat] (n, RR)$ and $lambda, mu in RR$. Then
  $
    [A + lambda X, B + mu Y]
      &= (A + lambda X) (B + mu Y) - (B + mu Y) (A + lambda X) \
      &= A B + mu A Y + lambda X B + lambda mu X Y - B A - lambda B X - mu Y A - lambda mu Y X \
      &= (A B - B A) + mu (A Y - Y A) + lambda (X B - B X) + lambda mu (X Y - Y X) \
      &= [A, B] + mu [A, Y] + lambda [X, B] + lambda mu [X, Y] \
  $
  Setting $lambda = 0$ or $mu = 0$ shows the linearity in each argument, so $[,]$ is a $(2, 1)$ tensor. Moreover,
  $
    [A, B] = A B - B A = - (B A - A B) = - [B, A]
  $
  so $[,]$ is antisymmetric.

2. Suppose $A,B,C in #[Mat] (n, RR)$. Then
  $
    [A, [B, C]] + [C, [A, B]] + [B, [C, A]]
      &= A[B,C] - [B,C]A + C[A,B] - [A,B]C + B[C,A] - [C,A]B \
      &= A B C - A C B + C B A - B C A \
      &+ C A B - C B A + B A C - A B C \
      &+ B C A - B A C + A C B - C A B \
      &= 0
  $

#pagebreak()

= Additional \#2

Since $B$ is a symmetric tensor, we have
$
  q_B (x+y)
    &= B(x+y,x+y) \
    &= B(x,x) + B(x,y) + B(y,x) + B(y,y) \
    &= B(x,x) + 2 B(x,y) + B(y,y) \
    &= q_B (x) + 2 B(x,y) + q_B (y) \
$
so 
$
  q_B (x+y) - q_B (x) + q_B (y) = 2 B(x,y)
$
and the result follows.

