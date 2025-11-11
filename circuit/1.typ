#set page(margin: 1cm, paper: "iso-b5", numbering: "1")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
  #block(width: 100%, inset: 0em, [
      #set align(center)
      #el
  ])
]

#import "@preview/zap:0.2.1"
#import "@preview/cetz:0.4.0"
#import "@preview/cetz-plot:0.1.2": plot
#import "../typst/basic.typ": *
#import "../typst/zapx.typ"
#import "../typst/plotx.typ"

#let jj = $upright(j)$

= 电路

= 1 电路模型和电路定律

== 1.1 电路和电路模型

== 1.2 电流和电压的参考方向

=== 参考方向的关联性

- 电流和电压参考方向相同：关联参考方向
- ～不同：非关联参考方向

== 1.3 电功率和能量

=== 电功率、电功的表达式

$ dif W &= u dif q \
  p &= dd(W, t) = u dd(q, t) = u i \
  W &= int dif W = int u dif q \
  &= int p dif t = int u i dif t
$

=== 电功率符号的意义

关联参考方向下，

$ p > 0 <=> "吸收功率" \
  p < 0 <=> "放出功率"
$

=== 功率平衡

任何时刻，电路中发出的功率总和等于吸收的功率总和，即

$ sum p = 0 $

或

$ sum_"放出" p = sum_"吸收" p $

== 1.4 电路元件

=== 集总元件

外部不存在电场和磁场的元件，这样流入流出电流相等，且电压为单值量

=== VCR

即电压电流关系

== 1.5 电阻元件

=== 特性

关联参考方向下，

$ u &= R i \
  i &= G u $

=== 电阻和电导

电阻 $R$，单位欧姆（欧，$Ω$）

电导 $G$，单位西门子（西，$S$）

=== 电阻的功率

关联参考方向下，

$ p &= u i \
  &= R i^2 \
  &= G u^2 \
  &>= 0 \

  W &= int p dif t \
  &= int R i^2 dif t \
$

说明电阻总是吸收功率，是无源元件

== 1.6 电压源和电流源

=== 特性

电压源

$ u &= U_"S" $

电流源

$ i &= I_"S" $

其中 $U_"S"$、$I_"S"$ 成为激励电压、激励电流，只和时间有关，和电路中其他元件无关

== 1.7 受控电源

=== 分类

线性受控源

#align(center, table(
  columns: (auto, auto),
  [VCVS], [$u = μ u_1$],
  [VCCS], [$i = g u_1$],
  [CCVS], [$u = r i_1$],
  [CCCS], [$i = β i_1$],
))

== 1.8 基尔霍夫定律

=== 基尔霍夫电流定律（KCL）

集总电路中，任何时刻，对任一节点，所有流入和流出节点的支路电流的代数和恒等于 $0$，即

$ sum_"节点" i = 0 $

其中，规定流出节点的电流为正，流入节点的电流为负

或说流入节点的支路电路之和等于流出节点的支路电流之和，即

$ sum_"流入节点" i = sum_"流出节点" i $

KCL 也可以扩展到闭合面中使用

=== 基尔霍夫电压定律（KVL）

集总电路中，任何时刻，沿任一回路，所有支路电压的代数和恒等于 $0$，即

$ sum_"回路" u = 0 $

其中，规定沿回路的电压为正，逆回路的电压为负

#pagebreak()

= 2 电阻电路的等效变换

== 2.1 电路的等效变换

=== 电阻电路

- 线性电路：由时不变线性无源元件、线性受控源和电源组成的电路
- 电阻电路（线性电阻性电路）：无源元件都是电阻元件的线性电路

=== 等效变换

电路中一部分替换成等效电路，其余部分电压电流不变

== 2.2 电阻的串联和并联

=== 串联

等效电阻

$ R_"eq" = sum R_i $

串联分压

$ u_i = R_i / R_"eq" u $

=== 并联

等效电导

$ 1/R_"eq" &= sum 1/R_i \
  G_"eq" &= sum G_i
$

并联分流

$ i_i = G_i / G_"eq" i = R_"eq" / R_i i $

== 2.3 电阻的 Y 形联结和 Δ 形联结的等效变换

$ dcases(
    sum_"cyc" i_a &= 0 \
    forall _a &= u_a / R_a \
    \
    sum_"cyc" u'_(a b) &= 0 \
    forall i'_(a b) &= u'_(a b) / R'_(a b) \
    forall i'_a &= i'_(c a) - i'_(a b) \
    \
    forall i_a &= i'_a \
    forall u_a &= u'_(b c)
  )
$

=== Y $->$ Δ

$ forall R'_(a b) &= (sum_"cyc" R_a R_b) / R_c \
  forall G'_(a b) &= (G_a G_b) / (sum_"cyc" G_a)
$

=== Δ $->$ Y

$ forall R_a = (R'_(a b) R'_(c a)) / (sum_"cyc" R'_(a b)) $

当各电阻相等时，即

$ forall R'_(a b) = R_Δ <=> forall R_a = R_Y $

时，有

$ R_Y = 1/3 R_Δ $

== 2.4 电压源、电流源的串联和并联

=== 电压源

- 串联

  $ u_"eq" = sum u_i $

- 不同电压源不能并联

=== 电流源

- 并联

  $ i_"eq" = sum i_i $

- 不同电流源不能串联

== 2.5 实际电源的两种模型及其等效变换

=== 实际电源模型

- 电压源串联一个电阻

  $ u &= U_"S" - R i \
    u_"oc" &= at(u, i = 0) = U_"S"
  $

- 电流源并联一个电阻

  $ i &= I_"S" - G u \
    I_"sc" &= at(i, u = 0) = I_"S"
  $

=== 等效变换

$ G = 1 / R $

== 2.6 输入电阻

=== 端口

网络的端口是其向外引出的一对端子

=== 输入电阻（齐性定理）

任何不含独立源，仅含受控源和线性电阻的一端口网络，其端口的输入电压 $u_"i"$ 与输入电流 $i_"i"$ 成正比

并且，这端口的输入电阻

$ R_"i" = u_"i" / i_"i" $

就是其等效电阻

#pagebreak()

= 3 电阻电路的一般分析

== 3.1 电路的图

== 3.2 KCL 和 KVL 的独立方程数

=== KCL 独立方程数

$n$ 节点电路中，能写出 $n - 1$ 个独立 KCL 方程

=== 独立回路和网孔

有 $l$ 个独立回路的电路中，能写出 $l$ 个独立 KVL 方程

$n$ 节点、$b$ 支路的电路中有

$ l = b - (n - 1) = b - n + 1 $

平面电路中，独立回路数就是网孔数

== 3.3 支路电流法

$b$ 支路的电路中，有 $b$ 个未知电流和 $b$ 个未知电压

能列出 KCL 和 KVL 独立方程共

$ b + b - (n - 1) = 2b $

个，正好解出所有未知量

== 3.4 网孔电流法

平面电路中，假想每个网孔有一个网孔电流，这样有 $l$ 个未知网孔电流

正好能列出 $l$ 个独立 KVL 方程，解出所有网孔电流

由于网孔电流的性质，网孔电流法中的 KCL 方程是自动满足的

== 3.5 回路电流法

类似网孔电流法，选取 $l$ 个独立回路，列出 $l$ 个独立 KCL 方程求解回路电流

== 3.6 节点电压法

选取任意一个节点作为参考节点，其它节点和这个节点的电压差称之为节点电压，这样有 $n - 1$ 个未知节点电压

正好能列出 $n - 1$ 个独立 KCL 方程，解出所有节点电压

由于节点电压的性质，节点电压法中的 KVL 方程是自动满足的

#pagebreak()

= 4 电路定理

== 4.1 叠加定理

在线性电阻电路中，任意一处电压/电流都等同于各独立源单独作用（也即将其它独立源置零）时此处电压/电源的叠加

其中，电压源置零即短路，电流源置零即开路

$ x
  = ve(k)_x dot ve(x)_"S"
  = (sum_i ve(k)_x times.circle ve(e)_i) dot ve(x)_"S"
$

== 4.2 替代定理

两个一端口网络相连，已知端口电压 $u_"p"$、端口电流 $i_"p"$，则其中一个网络可以用激励电压为 $u_"S" = u_"p"$ 的电压源或激励电流为 $i_"S" = i_"p"$ 的电流源替代

== 4.3 戴维南定理和诺顿定理

不含独立源的线性一端口网络可以用一个电阻等效，戴维南定理和诺顿定理则说明含独立源的线性一端口网络如何等效

=== 戴维南定理

含源一端口可以等效为一个电压源与一个电阻的串联

将外电路等效为一个电流源 $i_"S"$，应用叠加定理，有

$ cases(
    u_1 &= u_"oc" &quad (i_"S" := 0) \
    u_2 &= - R_"eq" i &quad (u_"S" := 0)
  ) \
  => u = u_1 + u_2 = u_"oc" - R_"eq" i \
  => cases(
    R_"th" &= R_"eq" \
    u_"th" &= u_"oc"
  )
$

其中，$R_"eq"$ 是被等效端口中独立源置零后的等效电阻

=== 诺顿定理

含源一端口可以等效为一个电流源与一个电阻的并联

类似地，可以证明

$ cases(
    R_"no" &= R_"eq" \
    i_"no" &= i_"sc"
  )
$

=== 两种等效的关系

$ R_"th" = R_"no" = R_"eq" = U_"oc" / i_"sc" $

== 4.4 最大功率传输定理

设有电压源 $U_"S"$，内阻为 $R_"S"$，最大传输功率问题是说，负载 $R_"L"$ 取何值时，其吸收的功率最大

$ P_"L"
  &= I^2 R_"L" \
  &= (U_"S" / (R_"S" + R_"L"))^2 R_"L" \
  &= U_"S"^2 / (R_"S"^2 / R_"L" + 2 R_"S" + R_"L") \
  &>= U_"S"^2 / (4 R_"S") quad (R_"L" = R_"S")
$

该结论也适用于含源一端口接负载的情况，先应用戴维南定理即可

#pagebreak()

= 5 含有运算放大器的电阻电路

#pagebreak()

= 6 储能元件

== 6.1 电容元件

=== 特性

$ q &= C u \
  i &= dd(q, t) = C dd(u, t) \
  de u &= int dif u = 1/C int i dif t = (de q) / c
$

=== 电容的功率、功

$ p &= u i \
  &= C u dd(u, t) \
  W &= int p dif t \
  &= int C u dif u \
  &= de (1/2 C u^2)
$

这表明，对恒等的电容，电压增大即充电时吸收能量，电压减小即放电时放出能量

== 6.2 电感元件

=== 磁通、磁通链

磁通链定义为磁通乘上线圈匝数

$ Ψ = N Φ $

磁通和磁通链的参考方向由电流 $i$ 的参考方向以右手螺旋定则确定

=== 特性

$ Ψ &= L i \
  u &= dd(Ψ, t) = L dd(i, t) \
  de i &= int dif i = 1/L int u dif t = (de Ψ) / L
$

电感电压的符号问题：$u = dd(Ψ, t)$ 是电压降，与感应电动势 $cal(E) = - dd(Ψ, t)$ 符号相反

=== 电感的功率、功

$ p &= u i \
  &= L i dd(i, t) \

  W &= int p dif t \
  &= int L i dif i \
  &= de (1/2 L i^2)
$

这表明，对恒等的电感，电流增大即磁场能增大时吸收能量，电流减小即磁场能减小时放出能量

== 6.3 电容、电感元件的串联与并联

=== 电容串联

$  de u_i &= (int i dif t) / C_i \
  de u &= sum de u_i = (sum 1/C_i ) int i dif t \
  &= (int i dif t) / C_"eq" \
  1/C_"eq" &= sum 1/C_i
$

=== 电容并联

$ i_i &= dd(q_i, t) = C_i dd(u, t) \
  i &= sum i_i = (sum C_i) dd(u, t) \
  &= C_"eq" dd(u, t) \
  C_"eq" &= sum C_i
$

=== 电感串联

$ u_i &= dd(Ψ_i, t) = L_i dd(i, t) \
  u &= sum u_i = (sum L_i) dd(i, t) \
  &= L_"eq" dd(i, t) \
  L_"eq" &= sum L_i
$

=== 电感并联

$ de i_i &= 1/L_i int u dif t \
  de i &= sum de i_i = (sum 1/L_i) int u dif t \
  &= 1/L_"eq" int u dif t \
  1/L_"eq" &= sum 1/L_i
$

#pagebreak()

= 7 一阶电路和二阶电路的时域分析

== 7.1 动态电路的方程及其初始条件

=== 换路

电路结构或元件参数变化引起的电路变化称为换路

令换路时刻为 $t = 0$，换路前最终时刻为 $t = 0_-$，换路后最初时刻为 $t = 0_+$

#let sw(x) = $#x _(0_-)^(0_+)$

=== 电容开始/停止与电压源串联的方程与初始条件

- 当初始未储电的电容串联到理想电压源（即 $at(u_C, t = 0) = 0$，开始充电）

  $ U_"S" &= u_C = U_"S" ε(t) \
    i &= C dd(u_C, t) = C U_"S" δ(t) \
    sw([u_C]) &= 1/C sw(int) i dif t > 0
  $

  其中 $ε(t)$ 是单位阶跃函数

  $ ε(t) = cases(0 quad t < 0 \ 1 quad t >= 0) $

  或当初始储满电的电容从理想电压源断开（即 $at(u_C, t = 0) = U_"S"$，开始放电）

  $ U_"S" &= u_C = U_"S" (1 - ε(t)) \
    i &= C dd(u_C, t) = -C U_"S" δ(t) \
    sw([u_C]) &= 1/C sw(int) i dif t < 0
  $

  也就是说，换路时电流为无穷大即短路，且电容电压发生了跃变，说明电荷被瞬间搬运，是不符合实际物理规律的。因而，只能无限接近这种理想情况

- 而在实际情况中，即当电路中存在电阻时

  $ U_"S" &= u_R + u_C = U_"S" ε(t) \
    sw([u_C]) &= sw([U_"S" - u_R]) = 1/C sw(int) i dif t = 0 \
    at(u_C, t = 0_+) &= at(u_C, t = 0_-) \
  $

  即电阻电压补偿了电源电压的跃变，从而满足了电容电压的连续变化

=== 电感开始/停止与电流源并联的方程与初始条件

- 在实际情况中，与电容类似地

  $ I_"S" &= i_R + i_L = I_"S" ε(t) \
    sw([i_L]) &= sw([I_"S" - i_R]) = 1/L sw(int) u dif t = 0 \
    at(i_L, t = 0_+) &= at(i_L, t = 0_-)
  $

== 7.2 一阶电路的零输入响应

=== 电路的阶

用 $n$ 阶常微分方程描述的电路就称为 $n$ 阶电路

=== 零输入响应

储能元件在零输入（无外施激励）下的响应称为零输入响应

=== $R C$ 电路的零输入响应

$R C$ 电路即电阻与电容串联的电路

由 KVL 得

$ u_C &= u_R \
  &= - i R \
  &= - C dd(u_C, t) dot R
$

整理得 $R C$ 电路零输入响应的方程

$ dd(u_C, t) + 1 / (R C) u_C = 0 $

其通解为

$ u_C = U e^(-1 / (R C) t) $

代入初始条件 $at(u_C, t = 0_pm) = U_0$，得

$ u_C = U_0 e^(-1 / (R C) t) $

定义 $R C$ 电路的时间常数

$ τ = R C $

则

$ u_C &= U_0 e^(- t / τ) \
  i &= U_0 / R e^(- t / τ)
$

这说明电容的放电理论需要无穷的时间才能完成

而时间常数反映电容放电的快慢

$ at(u_C, t = t_0 + τ) / at(u_C, t = t_0) = 1/e $

即经过一个时间常数 $τ$ 后，电压降为原来的 $1/e$

=== $R L$ 电路的零输入响应

$R C$ 电路即电阻与电感并联的电路

$R L$ 电路零输入响应的方程

$ i_L &= i_R \
  &= - u / R \
  &= - L/R dd(i_L, t) \
  dd(i_L, t) + R/L i_L &= 0
$

初始条件 $at(i_L, t = 0) = I_0$ 下，其解为

$ i_L &= I_0 e^(- R/L t) $

定义 $R L$ 电路的时间常数

$ τ = L / R $

则

$ i_L &= I_0 e^(- t / τ) \
  u &= I_0 R e^(- t / τ)
$

== 7.3 一阶电路的零状态响应

=== 零状态响应

储能元件在零状态（零初始条件）下的响应称为零状态响应

=== $R C$ 电路的零状态响应

方程

$ U_"S" &= u_C + u_R \
  u_C &= U_"S" - u_R \
  &= U_"S" - R i \
  &= U_"S" - R C dd(u_C, t) \

  dd(u_C, t) + 1 / (R C) u_C &= 1 / (R C) U_"S"
$

解得

$ u_C &= U_"S" (1 - e^(- t / τ)) \
  i &= U_"S" / R e^(- t / τ)
$

=== $R L$ 电路的零状态响应

方程

$ I_"S" &= i_L + i_R \
  i_L &= I_"S" - i_R \
  &= I_"S" - u / R \
  &= I_"S" - L/R dd(i_L, t) \

  dd(i_L, t) + R/L i_L &= R/L I_"S"
$

解得

$
  i_L &= I_"S" (1 - e^(- t / τ)) \
  u &= I_"S" R e^(- t / τ)
$

=== 正弦激励下 $R L$ 电路的零状态响应

== 7.4 一阶电路的全响应

=== $R C$ 电路的全响应

全响应既有初始状态，又有外施激励

$ dcases(
    dd(u_C, t) + 1/(R C) u_C &= 1/(R C) U_"S" \
    at(u_C, t = 0_pm) &= U_0
  )
$

解得

$ u_C = U_"S" + (U_0 - U_"S") e^(- t / τ) $

可以从不同角度分析全响应解的结构

- $"全响应" = "强制分量" + "自由分量"$

  $"全响应" = "稳态分量" + "暂态分量"$

  $"全响应" = "特解" + "通解"$

  $ u_C = U_"S" - de U e^(- t / τ) quad (de U = U_"S" - U_0) $

- $"全响应" = "零输入响应" + "零状态响应"$

  $ u_C = U_0 e^(- t / τ) + U_"S" (1 - e^(- t / τ)) $

== 全响应的抽象形式

我们可以总结出一阶电路全响应的抽象形式

$ f(t) = f(oo) + [f(0) - f(oo)] e^(-t / τ) $

当激励随时间变化时，上式可以扩展为

$ f(t) = f_oo (t) + [ f(0) - f_oo (0) ] e^(- t / τ) $

== 7.5 二阶电路的零输入响应

=== $R L C$ 电路的微分方程

我们考虑这样的 $R L C$ 电路：$L$ 与 $C$ 串联，$C$ 串联有一个电阻 $R_1$，$L$ 并联有一个电阻 $R_2$

#align(center, zap.canvas(length: 0.5cm, {
  import zap: *
  import zapx: *

  let scale = (2.5, 5)
  let f(x, y) = vec.mul(scale, (x, y))

  vsource("U", f(0, 0), f(0, 1), label: $U_"S"$)
  resistor("R1", f(1, 0), f(1, 1), label: $R_1$)
  resistor("R2", f(3, 0), f(3, 1), label: $R_2$)
  inductor("L", f(1, 1), f(2, 1),
    variant: "pretty", label: $L$, label-angle: -180deg
  )
  capacitor("C", f(2, 0), f(2, 1), label: $C$)

  wire("U.in", "R1.in")
  switch("U.out", "R1.out")

  wire("R1.in", "C.in")
  wire("C.in", "R2.in")
  wire("C.out", "R2.out")

  terminals = terminals.with(scale: (0.8, 0.8))
  terminals("U", "lt")
  terminals("L", "tl")
  terminals("C", "lt")
  terminals("R1", "lb")
  terminals("R2", "lt")
}))

对 $L-C-R_1$ 回路应用 KVL

$ u_L + u_C + u_R_1 &= 0 $

用电容电压 $u_C$ 表达出各个电压

$ i_C &= C dd(u_C, t) \
  i_R_2 &= u_R_2 / R_2 = u_C / R_2 \

  i_L &= i_C + i_R_2 \
  &= C dd(u_C, t) + u_C / R_2 \
  u_L &= L dd(i_L, t) \
  &= L C dd(u_C, t, t) + L/R_2 dd(u_C, t) \

  u_R_1 &= R_1 i_R_1 = R_1 i_L \
  &= R_1 C dd(u_C, t) + R_1/R_2 u_C
$

代入方程得

$ L C dd(u_C, t, t) + (L/R_2 + R_1 C) dd(u_C, t) + (1 + R_1/R_2) u_C &= 0 \
  dd(u_C, t, t) + (1/(R_2 C) + R_1/L) dd(u_C, t) + 1/(L C) (1 + R_1/R_2) u_C &= 0
$

=== $R L C$ 串联电路的零输入响应

考虑简单的 $R L C$ 串联电路

#align(center, zap.canvas(length: 0.5cm, {
  import zap: *
  import zapx: *
  import cetz: *
  import draw: *

  let scale = (2.5, 3)
  let f(x, y) = vec.mul(scale, (x, y))

  capacitor("C", f(0, 0), f(0, 1), label: $C$)
  resistor("R", f(1, 1), f(2, 1), label: $R$)
  inductor("L", f(2, 1), f(2, 0), variant: "pretty", label: $L$)
  wire("L.out", "C.in")
  switch("C.out", "R.in")

  terminals("C", "lt")
  terminals("R", "tl")
  terminals("L", "rt")
}))

列出方程

$ u_C &= u_R + u_L \
  u_R &= R i = - R C dd(u_C, t) \
  u_L &= L dd(i, t) = - L C dd(u_C, t, t) \
  dd(u_C, t, t) + R/L dd(u_C, t) + 1/(L C) u_C &= 0
$

则特征方程为

$ p^2 + R/L p + 1/(L C) = 0 $

设

$ δ &= R/(2L) \
  ω^2 &= 1/(L C) - (R/(2L))^2
$

则特征根

$ p_(1,2) &= - δ pm sqrt(- ω^2) \
  p_1 + p_2 &= - 2 δ = - R/L \
  p_1 p_2 &= δ^2 + ω^2 = 1/(L C)
$

+ 当 $ω^2 < 0 <=> p_(1,2) = - δ pm ω in RR^-$

  设

  $ u_C = A_1 e^(p_1 t) + A_2 e^(p_2 t) $

  代入零输入响应的初始条件求解待定参数

  $ dcases(
      at(u_C, t = 0_pm) &= U_0 \
      - C at(dd(u_C, t), t = 0_pm) &= I_0 = 0
    ) \
    dcases(
      A_1 + A_2 &= U_0 \
      p_1 A_1 + p_2 A_2 &= 0
    ) \
    dcases(
      A_1 &= p_2 / (p_2 - p_1) U_0 \
      A_2 &= - p_1 / (p_2 - p_1) U_0
    )
  $

  那么

  $ u_C &= p_2 / (p_2 - p_1) U_0 e^(p_1 t) - p_1 / (p_2 - p_1) U_0 e^(p_2 t) \
    &= U_0 / (p_2 - p_1) (p_2 e^(p_1 t) - p_1 e^(p_2 t)) \

    i &= - C dd(u_C, t) = - (C U_0 p_1 p_2) / (p_2 - p_1) (e^(p_1 t) - e^(p_2 t)) \
    &= - U_0 / (L (p_2 - p_1)) (e^(p_1 t) - e^(p_2 t)) \

    u_L &= L dd(i, t) \
    &= - U_0 / (p_2 - p_1) (p_1 e^(p_1 t) - p_2 e^(p_2 t)) \
  $

  令

  $ t_m = (ln (p_2 / p_1)) / (p_2 - p_1) $

  则 $i$ 在 $t_m$ 处取最大值，$u_L$ 在 $t_m$ 处取 $0$、在 $2 t_m$ 处取最小值

  作出图像（$U_0 = 5"V", R = 5"Ω", C = 1"F", L = 5"H"$）

  #{
    let U0 = 5
    let I0 = 0
    let R = 5
    let C = 1
    let L = 5
    let δ = R / (2 * L)
    let ω = calc.sqrt(δ * δ - 1 / (L * C))
    let p1 = -δ - ω
    let p2 = -δ + ω
    let uC(t) = U0 / (p2 - p1) * (p2 * calc.exp(p1 * t) - p1 * calc.exp(p2 * t))
    let i(t) = -U0 / (L * (p2 - p1)) * (calc.exp(p1 * t) - calc.exp(p2 * t))
    let uL(t) = -U0 / (p2 - p1) * (p1 * calc.exp(p1 * t) - p2 * calc.exp(p2 * t))

    let tm = calc.ln(p2 / p1) / (p1 - p2)
    let iM = i(tm)
    let uLm = uL(2 * tm)

    import plotx: *
    import plot: *

    align(center, canvas-fn(
      length: 0.7cm,
      x-tick-step: none,
      y-tick-step: none,
      axis-style: "school-book",
      (uC, (0, 10), (0, U0),    (style: (stroke: blue))),
      (i,  (0, 10), (0, U0),    (style: (stroke: green))),
      (uL, (0, 10), (uLm, U0),  (style: (stroke: orange))),
      extra: {
        add-point((tm, iM), color: green)
        add-point((tm, 0), color: orange)
        add-point((tm * 2, uLm), color: orange)
      }
    ))
  }

  图像表明，整个过程中电容持续放电，这称为*非振荡放电*或*过阻尼放电*

+ 当 $ω^2 > 0 <=> p_(1,2) = -δ pm jj ω in CC$

  沿用 1 中的设法，那么

  $ u_C &= U_0 / (jj 2 ω) (p_2 e^(p_1 t) - p_1 e^(p_2 t)) \
    &= U_0 / (jj 2 ω) [(-δ + jj ω) e^((-δ - jj ω) t) - (-δ - jj ω) e^((-δ + jj ω) t)] \
    &= U_0 / (jj 2 ω) e^(-δ t) [(-δ + jj ω) (cos (- ω t) + jj sin (- ω t)) - (-δ - jj ω) (cos (ω t) + jj sin (ω t))] \
    &= U_0 / (jj 2 ω) e^(-δ t) [jj 2 ω cos (ω t) - jj 2 δ sin (ω t)] \
    &= U_0 / ω e^(-δ t) [ω cos(ω t) + δ sin(ω t)] \
  $

  令

  $ ω_0 &= sqrt(ω^2 + δ^2) = 1/sqrt(L C) \
    cos β &= δ / ω_0 \
    sin β &= ω / ω_0 \
  $

  则

  $ u_C &= (U_0 ω_0) / ω e^(-δ t) sin (ω t + β) \

    i &= - C dd(u_C, t) \
    &= - (C U_0 ω_0) / ω [- δ e^(-δ t) sin (ω t + β) + e^(-δ t) ω cos (ω t + β)] \
    &= (C U_0 ω_0) / ω e^(-δ t) [δ sin (ω t + β) - ω cos (ω t + β)] \
    &= (C U_0 ω_0^2) / ω e^(-δ t) sin (ω t) \
    &= U_0 / (ω L) e^(-δ t) sin (ω t) \

    u_L &= L dd(i, t) \
    &= U_0 / ω (-δ e^(-δ t) sin (ω t) + ω e^(-δ t) cos (ω t)) \
    &= - (U_0 ω_0) / ω e^(-δ t) sin (ω t - β) \
  $

  #colbreak()

  - $t = (k π - β) / ω quad (k in NN)$ 为 $u_C$ 的零点
  - $t = (k π) / ω quad (k in NN)$ 为 $i$ 的零点、$u_C$ 的极值点
  - $t = (k π + β) / ω quad (k in NN)$ 为 $u_L$ 的零点、$i$ 的极值点

  说明电容、电感电压和电流呈振荡衰减，电容和电感间周期性地交换能量，这称为*振荡放电*或*欠阻尼放电*

+ 当 $ω = 0 <=> p_(1,2) = - δ$

  设

  $ u_C &= (A_1 + A_2 t) e^(-δ t) $

  代入初始条件解得

  $ dcases(
      at(u_C, t = 0_pm) &= A_1 = U_0 \
      at(dd(u_C, t), t = 0_pm) &= (A_2 - δ A_1) e^(-δ t) = I_0 / C
    ) \
    dcases(
      A_1 &= U_0 \
      A_2 &= δ U_0
    )
  $

  那么

  $ u_C &= U_0 (1 + δ t) e^(-δ t) \

    i &= - C dd(u_C, t) \
    &= - C U_0 [δ - δ (1 + δ t)] e^(-δ t) \
    &= C δ^2 U_0 t e^(-δ t) \
    &= U_0 / L t e^(-δ t) quad (ω = 0 => δ^2 = 1/(L C)) \

    u_L &= L dd(i, t) \
    &= U_0 (1 - δ t) e^(-δ t)
  $

  此时为临界状态，而电压、电流不发生振荡，因此称为*临界非振荡过程*

  此时的电阻称为*临界电阻*

  $ ω &= 0 \
    1/(L C) &= (R/(2L))^2 \
    1/sqrt(L C) &= R/(2L) \
    R &= 2 sqrt(L/C)
  $

== 7.6 二阶电路的零状态响应和全响应

== 7.7 一阶电路和二阶电路的阶跃响应

阶跃激励等同于通断电源，在 7.1 中讨论过了

#pagebreak()

= 8 相量法

== 8.1 复数

$ z &= a + jj b = r e^(jj θ) = r angle θ \
  a &= Re z \
  b &= Im z \
  r &= |z| = sqrt(a^2 + b^2) \
  θ &= Arg z = arctan(b/a) \
  z^* &= a - jj b = r e^(-jj θ) = r angle (-θ) \
$

== 8.2 正弦量

=== 正弦量的定义

随时间按正弦规律变化的电压或电流称为正弦量，下面用余弦函数表示

例如以下电流正弦量

$ i = I_m cos(ω t + ϕ_i) $

其中

- $I_m$ 是振幅，即

  $ i_"max" &= I_m \
    i_"min" &= -I_m
  $

- $ω$ 是角频率，即

  $ ω = dd(t)(ω t + ϕ_i) $

  角频率和频率、周期有如下关系

  $ ω = (2 pi) / T = 2 π f $

- $ϕ_i in [-π, π]$ 是初相位，即

  $ ϕ_i = at((ω t + ϕ_i), t = 0) $

振幅、角频率和初相位是正弦量的三要素

=== 正弦量的有效值

仍以电流正弦量为例，考虑在一个周期 $T$ 内用恒定电流 $I$ 等效代替正弦电流（等效指的是做功相同），有

$ I^2 R T &= int_0^T i^2 R dif t \
  I^2 &= 1 / T int_0^T i^2 dif t \
  &= I_m^2 / T int_0^T cos^2(ω t + ϕ_i) dif t \
  &= I_m^2 / T int_0^T 1/2 (1 + cos(2(ω t + ϕ_i))) dif t \
  &= I_m^2 / T [1/2 t + 1/(2(2ω)) cos(2(ω t + ϕ_i))]_0^T \
  &= 1/2 I_m^2 \
  I &= I_m / sqrt(2)
$

即正弦量有效值和振幅有 $sqrt(2)$ 关系

现在，也可以用有效值、角频率和初相位来表示正弦量

$ i = sqrt(2) I cos(ω t + ϕ_i) $

=== 相位差

对于一组频率相同的电流和电压正弦量

$ i &= sqrt(2) I cos(ω t + ϕ_i) \
  u &= sqrt(2) U cos(ω t + ϕ_u)
$

定义它们的相位差

$ φ_(i u) &= (ω t + ϕ_i) - (ω t + ϕ_u) \
  &= ϕ_i - ϕ_u
$

相位差的取值

- $φ_(i u) > 0$ 时，$i$ 超前 $u$
- $φ_(i u) < 0$ 时，$i$ 滞后 $u$
- $φ_(i u) = 0$ 时，$i$ 和 $u$ 同相
- $|φ_(i u)| = π/2$ 时，$i$ 和 $u$ 正交
- $|φ_(i u)| = π$ 时，$i$ 和 $u$ 反相

#pagebreak()

#align(center, plotx.canvas-fn(
  length: 0.6cm,
  x-tick-step: none,
  y-tick-step: none,
  axis-style: "school-book",
  ((t => 3 * calc.sin(t + 1/3*calc.pi)), (0, 10), (-3, 3)),
  ((t => 2 * calc.sin(t + 2/3*calc.pi)), (0, 10), (-1, 1)),
  extra: {
    import plotx: *
    add-point((1/3*calc.pi, 0), color: red)
    add-point((2/3*calc.pi, 0), color: blue)
  }
))

波形上，两个正弦量在同一周期中，先到达零点的为超前（如上图中红色正弦量为超前）

== 8.3 相量法的基础

=== 含正弦量微分方程的求解

以 7.5 中 $R L C$ 串联电路施加正弦激励为例

列出方程

$ u_R + u_L + u_C = u_"S" $

若将三个元件的电压都用电流表示，则有

$ R i + L dd(i, t) + 1/C int i dif t = u_"S" $

那么，$i$ 的特解即稳态电流将是与 $u_"S"$ 同频的正弦量，这一特解表示的状态称为*正弦稳态*

若给定激励电压的正弦量

$ u_"S" = sqrt(2) U_"S" cos(ω t + ϕ_u) $

那么可以设稳态电流

$ i = sqrt(2) I cos(ω t + ϕ_i) $

将正弦量变形为指数形式

$ dcases(
    u_"S" = sqrt(2)/2 U_S [e^(jj (ω t + ϕ_u)) + e^(-jj (ω t + ϕ_u))] \
    i = sqrt(2)/2 I [e^(jj (ω t + ϕ_i)) + e^(-jj (ω t + ϕ_i))]
  )
$

发现每个正弦量被拆成了两个共轭的分量，因而我们可以将其中一组对应的分量代入微分方程求解，简化计算

$ R I e^(jj (ω t + ϕ_i)) + jj ω L I e^(jj (ω t + ϕ_i)) + 1/(jj ω C) I e^(jj (ω t + ϕ_i)) &= U_S e^(jj (ω t + ϕ_u)) \
  R I e^(jj ϕ_i) + jj ω L I e^(jj ϕ_i) - jj 1/ (ω C) I e^(jj ϕ_i) &= U_S e^(jj ϕ_u) \
  I e^(jj ϕ_i) &= U_S e^(jj ϕ_u) / (R + jj ω L - jj 1/(ω C)) \
$

=== 相量的引入

定义相量为以有效值为幅值，初相角为辐角的复数，用大写字母加一点表示

$ dot(I) &= I e^(jj ϕ_i) &&= I angle ϕ_i \
  dot(U) &= U e^(jj ϕ_u) &&= U angle ϕ_u
$

另外，也可以用振幅定义相量，称为振幅相量

$ dot(I)_m &= I_m e^(jj ϕ_i) &&= I_m angle ϕ_i \
  dot(U)_m &= U_m e^(jj ϕ_u) &&= U_m angle ϕ_u
$

注意到相量中不含角频率，因而相比正弦量丢失了信息

不同频率的相量间运算或比较是没有意义的

== 8.4 电路定律的相量形式

=== KCL 的相量形式

对于流入流出电流都是同频率正弦电流的节点

$ sum_"节点" dot(I) = 0 $

=== KVL 的相量形式

对于其中电压都是同频率正弦电压的回路

$ sum_"回路" dot(U) = 0 $

=== 电阻、电容、电感 VCR 的相量形式

- 电阻

  $ u &= R i \
    sqrt(2) U_R cos (ω t + ϕ_u) &= sqrt(2) I_R cos (ω t + ϕ_i) R \
    dot(U)_R &= R dot(I)_R
  $

- 电容

  $ u_C &= 1/C int i_C dif t \
    sqrt(2) U_C cos (ω t + ϕ_u) &= sqrt(2) I_C / (ω C) sin (ω t + ϕ_i) \
    U_C (e^(jj (ω t + ϕ_u)) + e^(-jj (ω t + ϕ_u))) &= I_C / (j ω C) (e^(jj (ω t + ϕ_i)) - e^(-jj (ω t + ϕ_i))) \
    U_C e^(jj ϕ_u) &= - jj I_C / (ω C) e^(jj ϕ_i) \
    dot(U)_C &= - jj 1/(ω C) dot(I)_C \
  $

  - 幅值方面

    $ U_C = 1 / (ω C) I_C $

    其中，$[- 1 / (ω C)] = [R]$，称为容抗；$[ω C] = [G]$，称为容纳

  - 相位方面

    $ φ_(i u) = Arg 1 / (- jj) = Arg jj = π/2 $

    即电流超前电压 $π/2$

- 电感

  $ u_L &= L dd(i_L, t) \
    sqrt(2) U_L cos (ω t + ϕ_u) &= - sqrt(2) I_L ω L sin (ω t + ϕ_i) \
    U_L (e^(jj (ω t + ϕ_u)) + e^(-jj (ω t + ϕ_u))) &= - I_L (ω L) / jj (e^(jj (ω t + ϕ_i)) - e^(-jj (ω t + ϕ_i))) \
    U_L e^(jj ϕ_u) &= jj I_L ω L e^(jj ϕ_i) \
    dot(U)_L &= jj ω L dot(I)_L
  $

  - 幅值方面

    $ U_L = ω L I_L $

    其中，$[ω L] = [R]$，称为感抗；$[- 1 / (ω L)] = [G]$，称为感纳

  - 相位方面

    $ φ_(i u) = Arg 1 / jj = Arg - jj = - π/2 $

    即电流滞后电压 $π/2$

=== 容抗、容纳、感抗、感纳的符号

是由阻抗和导纳的定义决定的，见 9.1

#pagebreak()

= 9 正弦稳态电路的分析

== 9.1 阻抗和导纳

=== 阻抗

定义阻抗

$ Z &= dot(U) / dot(I) = (U angle ϕ_u) / (I angle ϕ_i) \
  &= U/I angle (ϕ_u - ϕ_i) = |Z| angle φ_Z
$

那么就有欧姆定律（VCR）的相量形式

$ dot(U) = Z dot(I) $

将阻抗的复数形式拆分

$ Z = R + jj X $

其中，$R = Re Z$ 称为*电阻*，$X = Im Z$ 称为*电抗*

- 当 $X < 0$ 时，$Z$ 称为*容性阻抗*，$X$ 称为*容性电抗*（*容抗*）

  可用等效电容的容抗表示

  $ X = - 1 / (ω C_"eq") $

- 当 $X > 0$ 时，$Z$ 称为*感性阻抗*，$X$ 称为*感性电抗*（*感抗*）

  可用等效电感的感抗表示

  $ X = ω L_"eq" $

- 当 $X = 0$ 时，$Z = R$ 就是纯电阻

=== 导纳

与阻抗完全对偶地，定义导纳

$ Y &= dot(I) / dot(U) = (I angle ϕ_i) / (U angle ϕ_u) \
  &= I/U angle (ϕ_i - ϕ_u) = |Y| angle φ_Y
$

欧姆定律的相量形式

$ dot(I) = Y dot(U) $

将导纳的复数形式拆分

$ Y = G + jj B $

其中，$G = Re Y$ 称为*电导*，$B = Im Y$ 称为*电纳*

- 当 $B < 0$ 时，$Y$ 称为*容性导纳*，$B$ 称为*容性电纳*（*容纳*）

  可用等效电容的容纳表示

  $ B = ω C_"eq" $

- 当 $B > 0$ 时，$Y$ 称为*感性导纳*，$B$ 称为*感性电纳*（*感纳*）

  可用等效电感的感纳表示

  $ B = - 1 / (ω L_"eq") $

- 当 $B = 0$ 时，$Y = G$ 就是纯电导

== 9.2 电路的相量图

== 9.3 正弦稳态电路的分析

== 9.4 正弦稳态电路的功率

=== 周期量的功率

与正弦电流有效值推导过程中相同地，对于以周期 $T$ 变化的瞬时功率 $p$，定义（平均）功率

$ P = 1/T int_0^T p dif t $

=== 正弦电流下 $R L C$ 串联电路中的功率

不失一般性设初相位为 $0$

- 电容功率

  $ p_C &= u i \ 
    &= 1 / C i int i dif t \
    &= 1/(ω C) dot sqrt(2) I cos (ω t) dot sqrt(2) I sin (ω t) \
    &= 1 / (ω C) I^2 sin (2ω t)  \

    P_C &= ω / (2 π) int_0^((2 π)/ω) p_C dif t = 0
  $

  这是因为电容在一个周期内完成两次充放电，平均功率为 $0$，反映了电容的储能特性

- 电感功率

  类似地

  $ p_L &= - ω L I^2 sin (2 ω t) \
    P_L &= 0
  $

- 电阻功率

  $ p_R &= 2 R I^2 cos^2 (ω t) \
    &= R I^2 (1 + cos(2 ω t)) \
    P_R &= R I^2
  $

- 电阻、电容、电感的总功率

  $ p_R + p_C + p_L &= R I^2 (1 + cos(2 ω t)) + (1/(ω C) - ω L) I^2 sin (2 ω t) \
    &= |Z| I^2 cos φ_Z (1 + cos(2 ω t)) + |Z| i^2 sin φ_Z sin (2 ω t) \
  $

=== 有功功率

有功功率（即平均功率）定义为

$ P = 1/T int_0^T p dif t = U I cos φ_Z $

即瞬时功率不可逆部分的恒等分量（或其变动部分的振幅），因为其它分量为周期量，积分后都为 $0$，对平均功率无贡献

单位：$"瓦"$（$"W"$）

=== 无功功率

无功功率定义为

$ Q = U I sin φ_Z $

即瞬时功率的可逆部分的振幅，其表示电路中储能元件与外部电路（电源）能量交换的功率

单位：$"乏"$（$"var"$）

=== 视在功率

视在功率定义为电压、电流有效值的乘积

$ S &= U I $

它和有功功率、无功功率的关系为

$ S &= sqrt(P^2 + Q^2) \
  P &= S cos φ_Z \
  Q &= S sin φ_Z
$

其中，$cos φ_Z$ 称为*功率因数*

其反映电路所需要的功率容量，或承载能力（输出有功功率的最大能力）

单位：$伏 dot 安$（$"V" dot "A"$）

== 9.5 复功率

=== 复功率的定义

复功率定义为

$ dash(S) &= dot(U) dot(I)^* = U I angle (ϕ_u - ϕ_i) \
  &= S angle φ_Z \
  &= S cos φ_Z + jj S sin φ_Z \
  &= P + jj Q
$

单位：$"伏" dot "安"$（$"V" dot "A"$）

=== 复功率守恒

$ sum dash(S) = 0 <=> sum P = 0 and sum Q = 0 $

#pagebreak()

= 10 含有耦合电感的电路

== 10.1 互感

=== 磁耦合

载流线圈之间通过彼此的磁场相互作用，称为*磁耦合*

=== 互感的定义

和自感磁通链一样，互感磁通链与施感电流成正比，比值为互感。可以证明两个耦合线圈间互感相同

$ Ψ_12 &= M_12 i_2 \
  Ψ_21 &= M_21 i_1 \
  M &= M_12 = M_21
$

线圈的磁通链为自感磁通链与互感磁通链之和

$ Ψ_1 &= Ψ_11 pm |Ψ_12| \
  &= L_1 i_1 pm |M i_2| \
  Ψ_2 &= Ψ_22 pm |Ψ_21| \
  &= L_2 i_2 pm |M i_1|
$

=== 耦合方向

上式中的正负号是说，同向/反向耦合的线圈磁场会得到加强/减弱

具体来说

- 若两线圈的电流是从*同名端*流入，则称为*同向耦合*，互感磁通链的符号为正，总磁通链大于自感磁通链
- 若两线圈的电流是从*异名端*流入，则称为*反向耦合*，互感磁通链的符号为负，总磁通链小于自感磁通链

=== 耦合因数

用 $(|Ψ_12|) / Ψ_11$ / $(|Ψ_21|) / Ψ_22$ 可衡量线圈 1/2 耦合的紧疏程度

定义耦合因数为这两个比值的几何平均

$ k &= sqrt((|Ψ_12|) / Ψ_11 dot (|Ψ_21|) / Ψ_22) \
  &= M / sqrt(L_1 L_2) \
  &<= 1
$

== 10.2 含有耦合电感电路的计算

== 10.3 耦合电感的功率

== 10.4 变压器原理

== 10.5 理想变压器

$ n = Ψ_1 / Ψ_2 = N_1 / N_2 = u_1 / u_2 = - i_2 /i _1 $

#pagebreak()

= 11 电路的频率响应

== 11.1 网络函数

对 $j$ 端口上的激励函数 $E_"S"_j (jj ω)$ 和 $k$ 端口上的响应函数 $R_k (jj ω)$，定义网络函数

$ H(jj ω) = (R_k (jj ω)) / (E_"S"_j (jj ω)) $

阻抗和导纳是同一端口上的网络函数

== 11.2 $R L C$ 串联电路的谐振

考虑使得感抗和容抗抵消的频率 $ω_0$

$ X(jj ω_0) = ω_0 L - 1/(ω_0 C) = 0 \
  ω_0 = 1/sqrt(L C) 
$

此频率下 $R L C$ 电路有以下特性：

=== 谐振

$ φ(jj ω_0) = 0 $

=== 阻抗最小

$ Z (jj ω_0) = R = Z_"min" $

=== 电抗电压为 $0$

$ U_X (jj ω_0) = 0 $

=== 无功功率为 $0$

$ Q (jj ω_0) = 0 $

== 11.3 $R L C$ 串联电路的频率响应

== 11.4 $R L C$ 并联谐振电路

== 11.5 波特图

== 11.6 滤波器简介

#pagebreak()

= 12 三相电路

== 12.1 三相电路

=== 对称三相电源

对称三相电源是三个同赋值、同频率、相位差相等，以 $Y$ 或 $Δ$ 形连接的电源

其中

$ dot(U)_A &= U angle 0 \
  dot(U)_B &= U angle -1/3 π \
  dot(U)_C &= U angle 1/3 π \
$

令 $a = 1 angle 1/3 π$ 则

$ dot(U)_B &= a^2 dot(U)_A \
  dot(U)_C &= a dot(U)_A
$

以上相序称为正序，若改为 $B$ 相超前 $A$ 相，$C$ 相滞后 $A$ 相，则称为负序或逆序

=== 我国的三相电源

$ f &= 50 "Hz" $

=== 对称三相负载

对称三相负载是三个阻抗相同，以 $Y$ 或 $Δ$ 形连接的负载

== 12.2 线电压（电流）与相电压（电流）的关系

$ dot(U)_(A B) + dot(U)_(B C) + dot(U)_(C A) &= 0 \
  dot(I)_(A B) + dot(I)_(B C) + dot(I)_(C A) &= 0
$

== 12.3 对称三相电路的计算

== 12.4 不对称三相电路的概念

== 12.5 三相电路的功率



