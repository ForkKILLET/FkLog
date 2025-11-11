#set page(margin: 1cm, paper: "iso-b5")
#set text(font: "Microsoft YaHei", lang: "zh")
#import "../typst/int.typ": *

= 10 重积分

== 三重积分

==== 例 1：计算 $integral.triple_Omega x z dif x dif y dif z$

== 重积分的应用

曲面面积

$
  A
  &= iint_D dif A \
  &= iint_D 1 / (cos gamma) dif sigma \

  cos gamma
  &= 1 / (sqrt(1 + f_x^2(x, y) + f_y^2(x, y))) \

  A
  &= iint_D sqrt(1 + f_x^2(x, y) + f_y^2(x, y)) dif sigma \
  &= limits(iint)_D sqrt(1 + ((partial f) / (partial x))^2 + ((partial f) / (partial y))^2) dif sigma \
$

对比：弧长

$
  s
  &= int dif s \
  &= int sqrt(1 + f'^2(x)) dif x \
  &= int sqrt(1 + ((dif f) / (dif x))^2) dif x
$

==== 例 1：求半径为 $R$ 的球面面积

设上半球面的方程：

$
  z(x, y) = sqrt(R^2 - x^2 - y^2)
$

偏导数：

$
  (partial z) / (partial x) = -x / sqrt(R^2 - x^2 - y^2) \
  (partial z) / (partial y) = -y / sqrt(R^2 - x^2 - y^2)
$

对应区域：

$
  D = {(x, y) | x^2 + y^2 <= R^2} \
$

夹角 $gamma$ 余弦的倒数：

$
  1 / (cos gamma)
  &= sqrt(1 + ((partial z) / (partial x))^2 + ((partial z) / (partial y))^2) \
  &= R / (sqrt(R^2 - x^2 - y^2)) \
$

这函数在 $D$ 上无界，所以取：

$
  D_r &= {(x, y) | x^2 + y^2 <= r^2} \
  lim_(r -> R) D_r &= D \
$

则上半球面面积 $A_1$ 为：

$
  A_1 &= lim_(r -> R) A_(1r) \
  A_(1r)
  &= iint_D_r R / sqrt(R^2 - x^2 - y^2) dif x dif y \
  &= iint_D_r R / sqrt(R^2 - rho^2) rho dif rho dif theta \
  &= 2 pi R int_0^r rho / sqrt(R^2 - rho^2) dif rho \
  &= 2 pi R int_0^r - (-2rho) / (2sqrt(R^2 - rho^2)) dif rho \
  &= - 2 pi R int_0^r dif sqrt(R^2 - rho^2) \
  &= - 2 pi R [sqrt(R^2 - rho^2)]_0^r \
  &= 2 pi R (R - sqrt(R^2 - r^2)) \

  A_1
  &= lim_(r -> R) 2 pi R (R - sqrt(R^2 - r^2)) \
  &= 2 pi R^2
$

完整球面面积 $A$ 为：

$
  A = 2 A_1 = 4 pi R^2
$

