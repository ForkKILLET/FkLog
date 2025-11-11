#set page(margin: 1cm, paper: "iso-b5", numbering: "1")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
    #block(width: 100%, inset: 0em, [
        #set align(center)
        #el
    ])
]

#import "../typst/int.typ": *
#import "../typst/logic.typ": *
#import "../typst/dif.typ": *
#import "../typst/vec.typ": ve
#import "../typst/mat.typ": *

= 11 曲线积分与曲面积分

== 总习题

3. 计算下列曲线积分

(1) $oint_L sqrt(x^2 + y^2) dif s$，其中 $L$ 为圆周 $x^2 + y^2 = a x$

  圆的方程化为

  $ L : (x - a/2)^2 + y^2 = (a/2)^2 $

  设

  $ cases(
      x &= a / 2 cos t + a/2 \
      y &= a / 2 sin t
    ) quad (t in [0, 2π])
  $

  那么

  $ I
    &= oint_L sqrt(a (a/2 cos t + a/2)) sqrt((a/2 sin t)^2 + (a/2 cos t)^2) dif t \
    &= (sqrt(2) a^2) / 4 int_0^(2π) sqrt(cos t + 1) dif t \
    &= (sqrt(2) a^2) / 4 int_0^(2π) sqrt(2) lr(|cos t/2|) dif t \
    &= a^2/2 int_0^(2π) lr(|cos t/2|) dif t \
    &= a^2 int_0^π lr(|cos u|) dif u quad (u := t/2) \
    &= 2a^2 int_0^(π/2) cos u dif u \
    &= 2a^2 [sin u]_0^(π/2) \
    &= 2a^2
  $

#pagebreak()

(2) $oint_Γ z dif s$，其中 $Γ$ 为曲线 $x = t cos t, y = t sin t, z = t quad (t in [0, t_0])$

  $ I
    &= int_0^(t_0) t sqrt((cos t - t sin t)^2 + (sin t + t cos t)^2 + 1) dif t \
    &= int_0^(t_0) t sqrt(1 + t^2 + 1) dif t \
    &= 1/2 int_2^(t_0^2 + 2) sqrt(u) dif u quad (u := t^2 + 2) \
    &= 1/2 dot 2/3 [u^(3/2)]_2^(t_0^2 + 2) \
    &= 1/3 [(t^2 + 2)^(3/2)]_2^(t_0^2 + 2) \
    &= 1/3 [(t_0^2 + 2)^(3/2) - 2sqrt(2)]
  $

(3) $int_L (2a - y) dif x + x dif y$，其中 $L$ 为摆线 $x = a (t - sin t), y = a (1 - cos t) quad (t in [0, π])$

  $ int_L (2a - y) dif x
    &= int_0^(2π) (2a - a (1 - cos t)) a (1 - cos t) dif t \
    &= a^2 int_0^(2π) (1 - cos^2 t) dif t \

    int_L x dif y
    &= int_0^(2π) a (t - sin t) a sin t dif t \
    &= a^2 int_0^(2π) (t sin t - sin^2 t) dif t \

    I
    &= a^2 int_0^(2π) t sin t dif t \
    &= a^2 ([- t cos t]_0^(2π) - int_0^(2π) - cos t dif t) \
    &= a^2 [- t cos t + sin t]_0^(2π) \
    &= -2π a^2
  $

#pagebreak()

(4) $int_Γ (y^2 - z^2) dif x + 2 y z dif y - x^2 dif z$，其中 $Γ$ 为曲线 $x = t, y = t^2, z = t^3 quad (t in [0, 1])$

  $ I
    &= int_0^1 (t^4 - t^6) dif t + 2 t^2 t^3 dif (t^2) - t^2 dif (t^3) \
    &= int_0^1 (t^4 - t^6 + 4t^6 - 3t^4) dif t \
    &= int_0^1 (3t^6 -2t^4) dif t \
    &= [3/7 t^7 - 2/5 t^5]_0^1 \
    &= 1/35
  $

(5) $int_L (e^x sin y - 2y) dif x + (e^x cos y - 2) dif y$，其中 $L$ 为上半圆周 $(x - a)^2 + y^2 = a^2 quad (y >= 0)$，方向逆时针

  添加有向线段 $L : y = 0 quad (x in [0, 2a])$，方向向右

  #align(center, image("./img/11-ex-1.png", width: 30%))

  在 $L, L'$ 围成的区域 $D$ 使用由格林公式，

  $ oint_(L + L')
    &= iint_D (pp(x) (e^x cos y - 2) - pp(y) (e^x sin y - 2y)) dif x dif y \
    &= iint_D (e^x cos y - e^x cos y + 2) dif x dif y \
    &= iint_D 2 dif x dif y \
    &= 2 dot 1/2 pi a^2 \
    &= pi a^2
  $

  在 $L'$ 上 $y equiv 0$，所以

  $ int_L' (e^x sin y - 2y) dif x + (e^x cos y - 2) dif y = 0
  $

  那么原积分

  $ I = π a^2 - 0 = π a^2 $

#pagebreak()

(6) $oint_Γ x y z dif z$，其中 $Γ$ 为平面 $y = z$ 截球面 $x^2 + y^2 + z^2 = 1$ 的截痕，从 $z$ 轴正方向看，方向为逆时针

  #align(center, image("./img/11-ex-2.png", width: 40%))

  设

  $ cases(
      x &= cos t \
      y &= sqrt(2)/2 sin t \
      z &= sqrt(2)/2 sin t
    ) quad (t in [0, 2π])
  $

  那么

  $ I
    &= int_0^(2π) cos t (sqrt(2)/2 sin t)^2 (sqrt(2)/2 cos t) dif t \
    &= sqrt(2)/4 int_0^(2π) sin^2 t cos^2 t dif t \
    &= sqrt(2)/16 int_0^(2π) sin^2(2t) dif t \
    &= sqrt(2)/16 int_0^(2π) (1 - cos t) / 2 dif t \
    &= sqrt(2)/32 [t - sin t]_0^(2π) \
    &= sqrt(2)/16 π
  $

#pagebreak()

5. 证明 $(x dif x + y dif y) / (x^2 + y^2)$ 在整个 $x O y$ 平面去除 $y$ 负半轴及原点的区域 $G$ 是某个二元函数的全微分，并求出这样的二元函数

设

$ P &= x / (x^2 + y^2) \
  Q &= y / (x^2 + y^2)
$

由二元函数全微分存在的充要条件，即证

$ pp(Q, x) = pp(P, y) $

计算得

$
  pp(Q, x) = - (2x y) / (x^2 + y^2)^2 = pp(P, y)
$

$qed$

然后求原函数 $f(x, y)$，因为 $pp(P, y) = 0$，所以

$ f(x, y)
  &= int x / (x^2 + y^2) dif x \
  &= 1/2 int 1 / (x^2 + y^2) dif (x^2 + y^2) \
  &= 1/2 ln (x^2 + y^2) + C
$

取 $C = 0$，有

$ f(x, y) = 1/2 ln (x^2 + y^2) + C $

#pagebreak()

6. 设半平面 $x > 0$ 内有力 $ve(F) = - k/ρ^3 (x ve(i) + y ve(j))$ 构成的力场，其中 $ρ = sqrt(x^2 + y^2)$，证明在此力场中 $ve(F)$ 做的功与路径无关

即证半平面 $x > 0$ 中以下积分与路径无关

$ I = int_L -(k x) / (ρ^3) dif x - (k y) / ρ^3 dif y $

设

$ P &= - (k x) / ρ^3 \
  Q &= (- (k y) / ρ^3)
$

因为

$ pp(x)  = - (3k x y) / ρ^5 = pp(y) (- (k x) / ρ^3) $

且 $P, Q$ 有一阶连续偏导数，半平面 $x > 0$ 是单连通区域，所以其中 $I$ 与路径无关，

即 $ve(F)$ 做的功与路径无关

$qed$
