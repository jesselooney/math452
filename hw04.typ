#import "@preview/numbly:0.1.0": numbly

#set enum(
  full:true, 
  numbering: numbly("({1:a})" )
)

#set page(
  header: smallcaps[
    // TODO: Update homework number!
    MATH 452: Differential Geometry --- Homework 4 #h(1fr) Jesse Looney
  ],
  numbering: "1",
)

#import "mathlib.typ": *
#import "reference.typ": *
#show: template-math

#set math.mat(delim: "[")

= 2-2-4

Since $z^2 = 0$ only when $z = 0$, that means $f^(-1)(0)$ is precisely the $x y$-plane, which we already proved is a regular surface. However, $0$ is a critical value of $f$. Consider the differential of $f$.
$
  d f = mat(0, 0, 2 z)
$
At $p = (0, 0, 0)$, the differential $d f_p$ is zero, so it is not surjective. Thus $p$ is a critical point of $f$, so $f(p) = 0$ is a critical value.

= 2-2-7

1. At any point $p = (x, y, z) in RR^3$, we have
  $
    d f_p = 2 mat(x + y + z - 1, x + y + z - 1, x + y + z - 1)
  $
  This matrix is not surjective exactly when all of its elements are zero. Thus $p$ is a critical point of $f$ exactly it lies in the plane $x + y + z - 1 = 0$. The image of this set under $f$ is simply ${0}$, so $0$ is the only critical value of $f$.

2. From (a), any $c != 0$ is a regular value of $f$. By the Inverse Function Theorem, $f^(-1)(c)$ is a regular surface in this case. Also, $f^(-1)(0)$ is the plane $x + y + z - 1 = 0$, which is a regular surface. Therefore, $f^(-1)(c)$ is a regular surface for all $c in RR$.

3. At any point $p = (x, y, z) in RR^3$, we have
  $
    d f_p = mat(y z^2, x z^2, 2 x y z)
  $
  This matrix is not surjective exactly when all of its elements are zero. Thus $p$ is a critical point of $f$ exactly when $p in {(x, y, z) mid(|) (x, y, z) in RR^3 and (x = y = 0 or z = 0)}$. Denote that set, the union of the $x y$-plane and the $z$-axis, by $S$. The image of $S$ under $f$ is clearly ${0}$, so the only critical value of $f$ is $0$.

  For any $c != 0$, $c$ is a regular value of $f$, so $f^(-1)(c)$ is a regular surface by the Inverse Function Theorem. We will show these are the only values of $c$ for which this is the case by showing $f^(-1)(0)$ is not a regular surface.

  Note that $f^(-1)(0)$ is the union of the $x y$-, $y z$-, and $x z$-planes. In particular, the set contains the $x$-, $y$-, and $z$-axes, considered as curves. Each passes through the origin, where their tangents are mutually orthogonal. Suppose $f^(-1)(0)$ is a regular surface. Then the tangent plane to the surface at the origin contains at least three orthogonal vectors. We know the tangent plane is the image $RR^2$ under the differential of some parametrization of the surface at the origin. In particular, it is a two-dimensional vector space (because the differential is linear). Hence, it cannot contain three orthogonal vectors, a contradiction.

#pagebreak()

= 2-2-17

We first prove the Graph Theorem for regular curves: Suppose $f: U -> RR$ and $g: U -> RR$ are smooth functions on an open set $U subset.eq RR$. Then $C = {(t, f(t), g(t)) | t in U}$ is a regular curve.

_Proof:_ Define $X: U -> C$ by $X(t) = (t, f(t), g(t))$. Since $f$ and $g$ are smooth, so is $X$. Moveover, there is clearly an inverse $X^(-1)(x, y, z) = x$, which is a projection and thus continuous. Finally, the differential is
$
  d X = mat(1; f_t; g_t)
$
which is clearly injective because of the constant $1$. Hence, $X$ is a parametrization of $C$, so $C$ is a regular curve.

Also, in this problem, we use the following notation in a few places. If $A = {(x_1, ..., x_n)}$ is a subset of $RR^n$, then $A_(x_i) = {x_i | (x_1, ..., x_i, ..., x_n) in A}$.

1. Suppose $U in RR^2$ is an open set and $f: U -> RR$ is a smooth function with a regular value $a in f(U)$. Suppose $p in f^(-1)(a)$. Since $a$ is a regular value of $f$, at most one of $f_x (p)$ and $f_y (p)$ can be zero. Assume without loss of generality that $f_y (p) != 0$. Define $F: U -> RR^2$ by $F(x, y) = (x, f(x, y))$. We have
  $
    d F_p = mat(1, 0; f_x (p), f_y (p))
  $
  so $det d F_p = f_y (p) != 0$. Thus, by the Inverse Function Theorem, there exist neighborhoods $V subset.eq U$ of $p$ and $W subset.eq F(U)$ of $F(p)$ such that $F: V -> W$ has a differentiable inverse. Write $F^(-1)(x, y) = (x, beta(x, y))$ and define $beta_1(x) = beta(x, a)$. Now
  $
    F(V sect f^(-1)(a)) = W sect {(x, a) | x in f^(-1)(a)_x}
  $
  Therefore,
  $
    V sect f^(-1)(a) = F^(-1)(W sect {(x, a) | x in f^(-1)(a)_x}) = {(x, beta_1(x)) | x in W_x sect f^(-1)(a)_x}
  $
  so $V sect f^(-1)(a)$ is the graph of the differentiable function $beta_1$. By the Graph Theorem for Regular Curves (with $g = 0$), $V sect f^(-1)(a)$ is a regular curve. Therefore, we have a system of local coordinates near $p$ for every $p in f^(-1)(a)$, so $f^(-1)(a)$ is a regular curve.

  An example of such a curve that is not connected is the hyperbola $x^2 - y^2 = 1$, because $1$ is a regular value of $x^2 - y^2$ ($2 x$ and $2 y$ cannot both be zero when $x^2 - y^2 = 1$).

#pagebreak()

2. Suppose $U subset.eq RR^3$ is an open set and $f: U -> RR^2$ is a smooth function with a regular value $(a, b) in f(U)$. Write $f(x, y, z) = (g(x, y, z), h(x, y, z))$. Suppose $p in f^(-1)(a,b)$. Since $(a, b)$ is a regular value of $f$, the differential
  $
    d f = mat(g_x, g_y, g_z; h_x, h_y, h_z)
  $
  is surjective at $p$. This requires that its rank is $dim RR^2 = 2$, so two of its columns must be linearly independent. Without loss of generality (by renaming axes), assume that the latter two columns are linearly independent. Define $F: U -> RR^3$ by $F(x,y,z) = (x, g(x,y,z), h(x,y,z))$, which has differential
  $
    d F = mat(1, 0, 0; g_x, g_y, g_z; h_x, h_y, h_z)
  $
  with
  $
    det d F = det mat(g_y, g_z; h_y, h_z)
  $
  so the determinant is not zero at $p$ because the submatrix is invertible (due to linearly independent columns) there. Therefore, by the Inverse Function Theorem, there exist neighborhoods $V subset.eq U$ of $p$ and $W subset.eq F(U)$ of $F(p)$ such that $F: V -> W$ has a differentiable inverse. Write $F^(-1)(x,y,z) = (x, beta(x,y,z), gamma(x,y,z))$. Define $beta_1 (x) = beta(x, a, b)$ and $gamma_1 (x) = gamma(x, a, b)$. Now
  $
    F(V sect f^(-1)(a,b)) = W sect {(x, a, b) | x in f^(-1)(a,b)_x}
  $
  Therefore,
  $
    V sect f^(-1)(a,b) &= F^(-1)(W sect {(x, a, b) | x in f^(-1)(a,b)_x}) \
    &= {(x, beta_1 (x), gamma_1 (x)) | x in W_x sect f^(-1)(a,b)_x}
  $
  so $V sect f^(-1)(a,b)$ is the graph of the differentiable functions $beta_1$ and $gamma_1$. By the Graph Theorem for Regular Curves, $V sect f^(-1)(a,b)$ is a regular curve. As above, we can conlude that $f^(-1)(a,b)$ is a regular curve.

  Note that $f(x,y,z) = (a, b)$ precisely when $g(x,y,z) = a$ and $h(x,y,z) = b$. We know $a$ and $b$ are regular values of their respective functions (or else at least one of the rows of $d f$ would be zero at $p$, making it not surjective), so $g=a$ and $h=b$ define regular surfaces, and $f = (a,b)$ consists of the points in their intersection. So the kind of curve in this problem is always the intersection of two surfaces.

#pagebreak()

3. We prove that 

= Additional \#1

1.
  $
    d f = mat(2 x, 2 y) wide d f_((1,0)) = mat(2, 0)
  $
2.
  $
    d f = mat(2 x, 2 y, 2 z) wide d f_((1,1,1)) = mat(2, 2, 2)
  $
3.
  $
    d f = mat(2 x, 0; 0, 2 y) wide d f_((1,2)) = mat(2, 0; 0, 4)
  $
4.
  $
    d f = mat(-r sin theta, cos theta; r cos theta, sin theta; 0, 1)
      wide d f_((pi slash 4, 1)) = mat(-1 / sqrt(2), 1 / sqrt(2); 1 / sqrt(2), 1 / sqrt(2); 0, 1)
  $

= Additional \#2

Suppose $S$ is a regular surface and $T$ is a rigid motion. Write $T(u) = rho u + a$ where $rho: RR^3 -> RR^3$ is an orthogonal transformation with positive determinant and $a in RR^3$. Since $T$ is linear, $T$ is $C^infinity$. Moreover, $T$ is invertible with a linear inverse (wich must itself by $C^infinity$), so $T$ is homeomorphic.

Let $R = T(S)$ and suppose $p in R$. Let $q = T^(-1)(p) in S$. There exists a local parametrization $X: U -> V sect S$ of the surface, where $U subset.eq RR^2$ is open and $V subset.eq RR^3$ is a neighborhood around $q$. Since $T$ is injective, we have $T(V sect S) = T(V) sect T(S)$. Let $W = T(V)$, which is an open set containing $p$. Intuitively, $W$ should still be a neighborhood, since $T$ is a rigid motion, but regardless we could choose some open ball around $p in T(V)$ and replace $V$ and $U$ by the appropriate preimages to preserve bijectivity in this argument. Without loss of generality, we assume $W$ is a neighborhood around $p$. Now define $Y: U -> W sect R$ by $Y = T compose X$. We prove that $Y$ is a local parametrization of $R$.

Since $T$ and $X$ are $C^infinity$, $Y$ is $C^infinity$ by the Chain Rule. Since $T$ and $X$ are homeomorphic, their composition $Y$ (with appropriately set codomain) is clearly homeomorphic. Lastly, let $r = Y^(-1)(p) in U$. Since $Y(u,v) = rho X(u,v) + a$, we have
$
  d Y_r = mat(Y_u (r), Y_v (r)) = [rho X_u (r), rho X_v (r)]
$
where we represent the matrix by its column vectors. Since $r = X^(-1)(q)$, we have that
$
  d X_r = mat(X_u (r), X_v (r))
$
is injective, so $X_u (r)$ and $X_v (r)$ are linearly independent. Since $rho$ is invertible, that means $Y_u (r)$ and $Y_v (r)$ are linearly independent, because
$
  b Y_u (r) + c Y_v (r) = 0 ==> b rho X_u (r) + c rho X_v (r) = 0 ==> b X_u (r) + c X_v (r) = 0
$
Hence, $d Y_r$ is injective. Therefore, $R = T(S)$ is a regular surface.

= Additional \#3

One of my favorite regular surfaces is the open unit square translated to height $pi$. It is one of my favorites because squares have a beautiful simplicity and this one is located at height $pi$, which is a nice number. Oh and also it happens to be the graph of the differentiable function $f(x,y) = pi$ over the open unit square, so it is immediately a regular surface by the Graph Theorem. See the figure on the next page for a sketch.

*TODO* attach figure
