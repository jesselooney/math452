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

= 2-2-17

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


