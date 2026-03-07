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

Suppose $f: W -> RR^3$ is differentiable at $p in W$ where $W subset.eq RR^3$ is open. Suppose $S subset.eq RR^3$ is a regular surface with $p in S$ and let $V = W sect S$. Then $f: V -> RR^3$ is differentiable at $p in V$. If $f$ is smooth and $f(V) subset.eq T$ for some regular surface $T$, then $f: V -> T$ is differentiable at $p$ as a map between surfaces.

Proof: Let $X: U -> V$ be a parametrization of $S$ such that $p in X(U) subset.eq V$. Let $q = X^(-1)(p)$. We have that $X$ is differentiable at $q$. Moreover, we have that $f: W -> RR^3$ is differentiable at $p = X(q) in W$. By the Chain Rule, then, $f compose X: U -> RR^3$ is differentiable at $q$.

Now suppose additionally that $f: W -> RR^3$ is smooth. Let $Y: U' -> V'$ be a parametrization of $T$ such that $f(p) in V'$. Without loss of generality assume $f(X(U)) subset.eq V'$ (we could restrict the domain of $X$ to $X^(-1)(f^(-1)(V'))$. *TODO: finish the proof. f should be a homeomorphism for this to work*.

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

Consider the point $(u, v, 0)$ on the surface. The surface is the preimage of 1 under $f(x,y,z) = x^2 + y^2 - z^2$, which has differential $[2x quad 2y quad -2z]$. In that preimage, not all of $x,y,z$ can be zero, so the differential is surjective. Hence, 1 is a regular value of $f$. Therefore, the result from Exercise 2-4-1 applies, and says that the tangent plane at the indicated point is
$
  2u (x - u) + 2v (y - v) = 0
$
The normal vector $[2u quad 2v quad 0]$ is orthogonal to $[0 quad 0 quad z]$ for any $z$, so the tangent plane is parallel to the $z$ axis.

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

