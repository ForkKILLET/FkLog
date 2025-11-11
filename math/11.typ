#set page(margin: 1cm, paper: "iso-b5", numbering: "1")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
    #block(width: 100%, inset: 0em, [
        #set align(center)
        #el
    ])
]

#import "../typst/basic.typ": *

= 11 曲线积分与曲面积分

== 11.1 对弧长的曲线积分

=== 第一类曲线积分（对弧长的曲线积分）

$L$ 是 $RR^m$ 中一段光滑曲线弧

设 $ve(γ) : [0, 1] -> RR^m$ 是 $L$ 的路径，即

$ ve(γ)([0, 1]) = L $

任取路径上不为端点的 $n - 1$ 个互异的点

$ (t_i | i in [[1, n - 1]]) quad (Forall(i_1 != i_2) t_i_1 != t_i_2 and forall i. t_i in.not {0, 1}) $

且令

$ t_0 = 0, t_n = 1 $

则 $L$ 被分为 $n$ 段：

$ (ve(γ_i) : [t_(i - 1), t_i] -> RR^m | i in [[1, n]]) $

设弧段 $ve(γ_i)$ 的弧长为

$ de s_i
  &= int_(t_(i - 1))^(t_i) sqrt(sum_(j = 1)^m dif x_j)
  &= int_(t_(i - 1))^(t_i) |ve(γ)'(t)| dif t
$

且设所有弧段的弧长最小值

$ λ = min { de s_i | i in [[1, n]] } $

再从每个弧段 $γ_i$ 中任意取一点

$ ve(x_i) in γ_i ([t_(i - 1), t_i]) $

则定义被积弧段 $L$ 上被积函数函数 $f : RR^m -> RR$ 的第一类曲线积分为：

$
  int_L f(ve(x)) dif s = lim_(λ -> 0) sum_(i = 1)^n f(ve(x_i)) de s_i
$

=== 弧长微元 $dif s$ 的计算

- 若曲线有关于 $t$ 的参数方程：

  $
    x &= phi(t) \
    y &= psi(t) \
    dif s
    &= sqrt(phi'(t)^2 + psi'(t)^2) dif t \
    &= sqrt(((dif x) / (dif t))^2 + ((dif y) / (dif t))^2) dif t \
    &= sqrt(dif x^2 + dif y^2)
  $

- 若曲线有函数表达式：

  $
    y &= y(x) \
    dif s
    &= sqrt(1 + y'(x)^2) dif x \
    &= sqrt(1 + ((dif y) / (dif x))^2) dif x \
    &= sqrt(dif x^2 + dif y^2)
  $

== 11.2 对坐标的曲线积分

=== 第二类曲线积分（对坐标的曲线积分）

与对弧长积分类似地，可以定义对坐标的积分

$ int_L F (ve(r)) dif r_i $

设 $ve(F) : RR^n -> RR^n$

$ ve(F)(ve(r)) = (F_i (ve(r)) | i in [[1, n]]) $

则可将对各分量坐标积分之和写为向量积分的形式：

$ int_L ve(F)(ve(r)) dot dif ve(r)
  &= int_L (F_i (ve(r)) | i in [[1, n]]) dot (dif r_i | i in [[1, n]]) \
  &= sum_(i = 1)^n int_L F_i (ve(r)) dif r_i
$

=== 第二类曲线积分的计算

若 $RR^n$ 中曲线 $L$ 有关于 $t$ 的参数方程 $r_i = r_i (t)$，且有 $L$ 的路径

$ ve(γ) : [α, β] -> RR^n $

那么

$ sum_(i = 1)^n int_L F_i (ve(r)) dif r_i
  &= int_α^β sum_(i = 1)^n F_i (ve(γ)(t)) dd(r_i, t) dif t
$

=== 第二类曲线积分的性质

- *线性性*：

  $ int_L [ λ_1 ve(F_1) (ve(r)) + λ_2 ve(F_2) (ve(r)) ] dot dif ve(r)
    &= λ_1 int_L ve(F_1) (ve(r)) dot dif ve(r) + λ_2 int_L ve(F_2) (ve(r)) dot dif ve(r)
  $

- *可加性*：

  若 $L$ 可由 $L_1, L_2$ 两段光滑有向曲线弧，则

  $ int_L ve(F)(ve(r)) dot dif ve(r) = int_L_1 ve(F)(ve(r)) dot dif ve(r) + int_L_2 ve(F)(ve(r)) dot dif ve(r) $

- *有向性*：

  若 $L^-$ 是 $L$ 的反向曲线，则

  $ int_(L^-) ve(F)(ve(r)) dot dif ve(r) = - int_L ve(F)(ve(r)) dot dif ve(r) $

=== 两类曲线积分的联系

$
  int_L ve(F)(ve(r)) dot dif ve(r)
  &= int_L ve(F)(ve(r)) dot hat(ve(r)) dif r
$

其中，$dif ve(r) = hat(ve(r)) dif r$ 称为有向曲线元.

== 11.3 格林公式及其应用

=== 单连通区域

- 若区域 $D$ 中任意闭曲线所围的区域都包含于 $D$，则称 $D$ 为单连通区域.

- 区域 $D$ 的边界 $par D$ 的正方向：$D$ 的内部在左侧的前进方向.

=== 格林公式

设闭区域 $D$ 由分段光滑的边界曲线 $par D$ 围成，若函数 $P(x, y)$ 和 $Q(x, y)$ 在 $D$ 内有一阶连续偏导数，则

$ iint_D (pp(Q, x) - pp(P, y)) dif x dif y
  = oint_(par D) P dif x + Q dif y
$

其中 $L$ 的方向取 $par D$ 的正方向.

=== 平面上曲线积分与路径无关的条件

- 路径无关：

  若对单连通区域 $G$ 内任意两条相同起点、终点的光滑曲线 $L_1, L_2$ 有

  $ int_L_1 P dif x + Q dif y = int_L_1 P dif x + Q dif y $

  则曲线积分 $int_L P dif x + Q dif y$ 在 $G$ 内与路径无关.

- *充要条件*：

  将 $L_1$ 与 $L_2$ 的反向曲线弧拼接，得

  $ int_(L_1 + L_2^-) P dif x + Q dif y = 0 $

  即对 $G$ 内任意闭曲线 $C$ 有

  $ oint_C P dif x + Q dif y = 0 $

  由格林公式，

  $ iint_D (pp(Q, x) - pp(P, y)) dif x dif y = 0 $

  由于 $pp(Q, x), pp(P, y)$ 的连续性和 $C$ 的任意性，有

  $ pp(Q, x) - pp(P, y) equiv 0 $

  反向易证，所以曲线积分 $int_L P dif x + Q dif y$ 在 $G$ 内与路径无关当且仅当

  $ Forall((x, y) in G) pp(Q, x) = pp(P, y) $

=== 二元函数的全微分求积

- *充要条件*：

  单连通区域 $G$ 内，函数 $u(x, y)$ 的全微分

  $ dif u = P dif x + Q dif y $

  当且仅当

  $ Forall((x, y) in G) pp(Q, x) = pp(P, y) $

== 11.4 对面积的曲面积分

=== 第一类曲面积分（对面积的曲面积分）

$ iint_Σ f(x, y, z) dif S
  &= iint_(D_(x y)) f(x, y, z(x, y)) sqrt(1 + z_x^2(x, y) + z_y^2(x, y)) dif x dif y \
$

== 11.5 对坐标的曲面积分

=== 第二类曲面积分（对坐标的曲面积分）

$ iint_Σ P dif y dif z + Q(x, y, z) dif z dif x + R(x, y, z) dif x dif y $

=== 两类曲面积分的联系

$ iint_Σ ve(A) dot dif ve(S) = iint_Σ ve(A) dot ve(n) dif S $

== 11.6 高斯公式

=== 高斯公式

$ iiint_Ω (pp(P, x) + pp(Q, y) + pp(R, z)) dif x dif y dif z
  = oiint_(par Ω) P dif y dif z + Q dif z dif x + R dif x dif y
$

== 11.7 斯托克斯公式

$ iint_Σ (pp(R, y) - pp(Q, z)) dif y dif z + (pp(P, z) - pp(R, x)) dif z dif x + (pp(Q, x) - pp(P, y)) dif x dif y \
  = oint_(par Σ) P dif x + Q dif y + R dif z
$

或写成

$ iint_Σ nabla times ve(A) dot dif ve(S) = oint_(par Σ) ve(A) dot dif ve(r) 
$
