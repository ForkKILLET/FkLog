#set page(margin: 1cm, paper: "iso-b5")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
    #block(width: 100%, inset: 0em, [
        #set align(center)
        #el
    ])
]

#import "../typst/basic.typ": *

= 概率论与数理统计

= 1 随机事件及其概率

== 概率的性质

+ $P(A + B) = P(A) + P(B)$

+ $P(sum_(i=1)^n A_i) = sum_(i=1)^n P(A_i)$

+ $P(dash(A)) = 1 - P(A)$

+ $P(A - B) = P(A) - P(B) thick (A supset B)$

+ $P(A - B) = P(A) - P(A inter B)$

+ $P(A union B) = P(A) + P(B) - P(A inter B)$

+ $P(union.big_(i=1)^n A_i) = sum_(i=1)^n (-1)^(n - i) sum_(σ in "Perm"(n, i)) product_(j=1)^i P(A_(σ(j)))$

#pagebreak()

= 2 随机变量及其分布

== 分布函数

=== 定义

$ F(x) eq.def P {X <= x} thick (x in (-oo, +oo)) $

=== 性质

- 右连续性

- 单调增

- $lim_(x -> -oo) F(x) = 0$

- $lim_(x -> +oo) F(x) = 1$

- $P {X = a} = F(a) - F(a^-)$

  证明：

  $ P {X = a}
    &= P (inter.big_(n = 1)^oo {a - 1/n < X <= a}) \
    &= lim_(n -> +oo) P {a - 1/n < X <= a} \
    &= lim_(n -> +oo) [F(a) - F(a - 1/n)] \
    &= F(a) - F(a^-)
  $

- $P {X < a} = F(a^-)$

== 离散型随机变量

=== 泊松定理

设事件 $A$ 在 $n$ 次独立重复试验中发生的概率为 $p_n$，且 $lim_(n -> +oo) n p_n = λ$，则事件 $A$ 在 $n$ 次试验中恰好发生 $k$ 次的概率 $P_n (k)$ 满足

$ lim_(n -> +oo) P_n (k) = (λ^k / k!) e^(-λ) thick (k = 0, 1, 2, ...) $

== 连续型随机变量

=== 定义

随机变量 $X$ 是连续型随机变量，如果存在函数 $f(x)$，使得

$ forall x. f(x) >= 0. F(x) = P {X <= x} = int_(-oo)^(x) f(t) dif t $

其中，$f(x)$ 称为随机变量 $X$ 的概率密度函数.

=== 概率密度函数

=== 性质

- 连续性

- $forall x in D_F(x). F'(x) = f(x)$

- $P {X in G} = int_G f(x) dif x thick (G in cal(I)(RR))$

  例：$P {X in (a, b)} = P {X in [a, b]} = int_(a)^(b) f(x) dif x$

- $P {X = a} = 0$


=== 常见分布

- 均匀分布 $U[a, b]$

  $ f(x) &= cases(
      1 / (b - a) &quad x in [a, b] \
      0 &quad "otherwise"
    ) \

    F(x) &= cases(
      0 &quad x in (-oo, a) \
      (x - a) / (b - a) &quad x in [a, b] \
      1 &quad x in (b, +oo)
    )
  $

  性质

  $ forall (c, d) subset (a, b). P(X in (c, d)) = [(x - a) / (b - a)]_c^d = (d - c) / (b - a) = (|(c, d)|)/(|(a, b)|) $

#pagebreak()

= 3 二维随机变量及其分布

== 3.1

=== 常用的二维连续型随机变量

- 二维均匀分布

  若二维随机变量 $(X, Y)$ 的概率密度函数为

  $ f(x, y) = cases(
      1/A &quad (x, y) in G \
      0 &quad "otherwise"
    ) \
  $

  其中，$A$ 为区域 $G$ 的面积.

  则 $(X, Y)$ 服从 $G$ 上的二维均匀分布，记作 $(X, Y) ~ U(G)$

- 二维正态分布

  若二维随机变量 $(X, Y)$ 的概率密度函数为

  $ f(x, y) =
    1 / (2 π σ_1 σ_2 sqrt(1 - ρ^2))
    exp (
      -1 / (2(1 - ρ^2)) [
        (x - μ_1)^2 / σ_1^2 -
        2 ρ ((x - μ_1)(y - μ_2)) / (σ_1 σ_2) +
        (y - μ_2)^2 / σ_2^2
      ]
    )
  $

  其中，$σ_1, σ_2 > 0, -1 < ρ < 1$

  则 $(X, Y)$ 服从参数为 $μ_1, μ_2; σ_1^2, σ_2^2; ρ$ 的二维正态分布，记作 $(X, Y) ~ N(μ_1, μ_2; σ_1^2, σ_2^2; ρ)$

== 3.2 边缘分布

=== 边缘分布函数

$ F_X (x) &= P(X <= x) = P(X <= x and Y <= +oo) = F(x, +oo) \
  F_Y (y) &= P(Y <= y) = P(X <= +oo and Y <= y) = F(+oo, y)
$

- *例 1.* 设二维随机变量 $(X, Y)$ 的联合分布函数为

  $ F(x, y) = A (B + arctan x/2) (C + arctan y/2) $

  (1) 求 $A, B, C$ 的值；

  *解.*

  $ cases(
      F(+oo, +oo) &= 1 \
      F(-oo, +oo) &= 0 \
      F(-oo, -oo) &= 0
    ) \
    cases(
      A (B + π/2) (C + π/2) &= 1 \
      A (B - π/2) (C + π/2) &= 0 \
      A (B - π/2) (C - π/2) &= 0
    ) \
    cases(
      A &= 1 / π^2 \
      B &= π/2 \
      C &= π/2
    )
  $

  (2) 求 $X > 2$ 的概率；

  *解.*

  $ P(X > 2)
    &= 1 - P(X <= 2) \
    &= 1 - F_X (2) \
    &= 1 - F(2, +oo) \
    &= 1 - [1 / π^2 (π/2 + arctan 1) (π/2 + π/2)] \
    &= 1 - 3/4 = 1/4
  $

=== 二维离散型随机变量的边缘分布

$  $