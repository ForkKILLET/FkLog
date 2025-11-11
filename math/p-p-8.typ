#set page(margin: 1cm, paper: "iso-b5")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
  #block(width: 100%, inset: 0em, [
    #set align(center)
    #el
  ])
]

#import "../typst/basic.typ": *
#import "../typst/prob.typ": *

#let otherwise = [其它]

#let comment(content) = text(eastern, [#math.quad (#content)])

= 概率统计 作业 8

= 第 4 章

9. 设随机变量 $X$ 与 $Y$ 相互独立，且 $X ~ N(1, 2), Y ~ N(1, 4)$ 求 $D(X Y)$.

  *解：*

  $ D(X Y)
    &= E(X^2 Y^2) - E^2(X Y) \
    &= E(X^2) E(Y^2) - E^2(X) E^2(Y) #comment([$X$, $Y$ 独立]) \
    &= (D(X) + E^2(X)) (D(Y) + E^2(Y)) - E^2(X) E^2(Y) \
    &= (2 + 1^2) times (4 + 1^2) - 1^2 times 1^2 \
    &= 14
  $

13. 设随机变量 $(X, Y)$ 的概率分布为

  #distrib_2d(
    $X$,
    $Y$,
    (1, 2),
    (1, 2),
    (
      (0.25, 0.32),
      (0.08, 0.35),
    )
  )

  求 $E(X^2 + Y)$.

  *解：*

  #align(center, grid(
    columns: 2,
    column-gutter: 2em,
    distrib(
      $X$,
      (1, 2),
      (0.57, 0.43),
    ),
    distrib(
      $Y$,
      (1, 2),
      (0.33, 0.67),
    )
  ))

  $ E(X^2 + Y)
    &= E(X^2) + E(Y) \
    &= 1 times 0.57 + 4 times 0.43 + 1 times 0.33 + 2 times 0.67 \
    &= 3.96
  $

15. 设 $X, Y$ 相互独立，其密度函数分别为

  $ f_X (x) = cases(
      2x &quad 0 <= x <= 1,
      0 &quad otherwise
    ) \
    f_Y (y) = cases(
      ee^(-(y - 5)) &quad y > 5,
      0 &quad otherwise
    )
  $

  求 $E(X Y)$.

  *解：*

  $ E(X Y)
    &= E(X) E(Y) #comment([$X$, $Y$ 独立]) \
  $
  
  $ E(X)
    &= int_0^1 x dot 2x dif x \
    &= [2/3 x^3]_0^1 \
    &= 2/3 \
    \
    E(Y)
    &= int_5^(+oo) y ee^(-(y - 5)) dif y \
    &= int_0^(-oo) (t - 5) ee^t dif t #comment([$t := -(y - 5)$]) \
    &= [(t - 1 - 5) ee^t]_0^(-oo) \
    &= 6 \
    \
    E(X Y)
    &= 2/3 times 6 \
    &= 4
  $

24. 设随机变量 $(X, Y)$ 具有密度函数

  $ f(x, y) = cases(
      1/8 (x + y) &quad 0 <= x <= 2\, 0 <= y <= 2,
      0 &quad otherwise
    )
  $

  求 $E(X), E(Y), ρ_(X Y)$

  *解：*

  $ E(X)
    &= int_0^2 int_0^2 x dot 1/8 (x + y) dif x dif y \
    &= 1/8 int_0^2 [1/3 x^3 + 1/2 y x^2]_0^2 dif y \
    &= 1/8 int_0^2 (8/3 + 2y) dif y \
    &= 1/8 [8/3 y + y^2]_0^2 \
    &= 7/6 \
    \
    E(Y)
    &= 7/6 #comment([由对称性]) \
  $
  
  $ E(X Y)
    &= int_0^2 int_0^2 x y dot 1/8 (x + y) dif x dif y \
    &= 1/8 int_0^2 y (8/3 + 2y) dif y \
    &= 1/8 [4/3 y^2 + 2/3 y^3]_0^2 \
    &= 4/3 \
    \
    Cov(X, Y)
    &= E(X Y) - E(X) E(Y) \
    &= 4/3 - (7/6)^2 \
    &= -1/36 \
    \
    E(X^2)
    &= int_0^2 int_0^2 x^2 dot 1/8 (x + y) dif x dif y \
    &= 1/8 int_0^2 [1/4 x^4 + 1/3 y x^3]_0^2 dif y \
    &= 1/8 int_0^2 (4 + 8/3 y) dif y \
    &= 1/8 [4y + 4/3 y^2]_0^2 \
    &= 5/3 \
    \
    D(X)
    &= E(X^2) - E^2(X) \
    &= 5/3 - (7/6)^2 \
    &= 11/36 \
    \
    D(Y)
    &= 11/36 #comment([由对称性]) \
    \
    ρ_(X Y)
    &= Cov(X, Y) / sqrt(D(X) D(Y)) \
    &= (-1/36) / (11/36) \
    &= -1/11
  $

25. 设随机变量 $X$ 与 $Y$ 的相关系数为 $0.9$，若 $Z = X - 0.4$，求 $Y$ 与 $Z$ 的相关系数.

  *解：*

  $ ρ_(Y Z)
    &= Cov(Y, Z) / sqrt(D(Y) D(Z)) \
    \
    D(Z)
    &= D(X - 0.4) \
    &= D(X) \
    \
    Cov(Y, Z)
    &= Cov(Z, Y) \
    &= E(Z Y) - E(Z) E(Y) \
    &= E((X - 0.4) Y) - E(X - 0.4) E(Y) \
    &= E(X Y - 0.4 Y) - [E(X) - 0.4] E(Y) \
    &= E(X Y) - 0.4 E(Y) - E(X) E(Y) + 0.4 E(Y) \
    &= E(X Y) - E(X) E(Y) \
    &= Cov(X, Y) \
    \
    ρ_(Y Z)
    &= Cov(X, Y) / sqrt(D(Y) D(X)) \
    &= ρ_(X Y) \
    &= 0.9
  $

2025.11.06