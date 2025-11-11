#import "@preview/cetz:0.4.0": canvas, draw
#import "@preview/cetz-plot:0.1.2": plot
#import "../typst/plotx.typ": plot-env
#import "../typst/vec.typ" as vec
#import "../typst/basic.typ": angleof, Proj, dd, de, int, oint, dcases, at

#set page(margin: 1cm, paper: "iso-b5", numbering: "1")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
  #block(width: 100%, inset: 0em, [
      #set align(center)
      #el
  ])
]

#let ve(x) = $bold(upright(#x))$
#let avg(x) = $overline(#x)$
#let vi = $ve(i)$
#let vj = $ve(j)$
#let vk = $ve(k)$

= 普通物理学 笔记（上）

= 1 运动和力

== 1.1 质点运动的描述

=== 质点

=== 参考系

=== 坐标系

=== 位矢

$ ve(r) &= x vi + y vj + z vk \
  r &= |ve(r)| = sqrt(x^2 + y^2 + z^2)
$

=== 方向余弦

$ cos α &= x/r \
  cos β &= y/r \
  cos γ &= z/r
$

方向自由度为 $2$，因为

$ cos^2 alpha + cos^2 beta + cos^2 gamma = 1 $

=== 运动学方程

$ ve(r) &= ve(r)(t) \
  &= x(t) vi + y(t) vj + z(t) vk \
$

=== 位移

$ de ve(r) $

=== 平均速度

$ avg(ve(v)) = (de ve(r)) / (de t) $

=== 瞬时速度

$ ve(v) &= lim_(de t -> 0) (de ve(r)) / (de t) \
  &= dd(ve(r), t) \
  &= dd(x, t) vi + dd(y, t) vj + dd(z, t) vk \
  &= v_x vi + v_y vj + v_z vk \
$

#colbreak()

速度大小

$ v &= |ve(v)| \
  &= sqrt(v_x^2 + v_y^2 + v_z^2)
$

=== 平均加速度

$ avg(ve(a)) = (de ve(v)) / (de t) $

=== 瞬时加速度

$ ve(a) &= dd(ve(v), t) \
  &= a_x vi + a_y vj + a_z vk \
  &= dd(v_x, t) vi + dd(v_y, t) vj + dd(v_z, t) vk \
  &= dd(v_x, t, t) vi + dd(v_y, t, t) vj + dd(v_z, t, t) vk \
$

=== 运动学问题

+ 已知质点运动学方程，求某时刻其位矢、速度、加速度——微分法
+ 已知质点某时刻的位矢、速度、加速度，求其运动学方程——积分法

#pagebreak()

== 1.2 抛体运动

=== 模型

- 以抛射点为原点，抛出的水平方向为 $x$ 轴正方向，竖直向上为 $y$ 轴正方向
- 初速度 $ve(v)_0$
- 初始角度 $θ_0$

#align(center, canvas({
  let v = 5
  let g = 9.8
  let θ = 30deg
  let xm = calc.pow(v, 2) * calc.sin(2 * θ) / g
  let ym = calc.pow(v * calc.sin(θ), 2) / (2 * g)
  let traj = x => (
    x * calc.tan(θ)
    - 0.5 * g * calc.pow(x / (v * calc.cos(θ)), 2)
  )

  let (plotx, add-vector, scale) = plot-env(
    (10, 3),
    (xm, ym),
  )
  let descale(x, y) = vec.div((x, y), scale)

  let v_v0 = vec.from-polar(0.5, θ)

  plotx({
    import plot: *
    import draw: *
    add(domain: (0, xm), traj)
    add-vector((0, 0), v_v0)
    annotate(content(vec.add(v_v0, descale(0, 0.2)), $ve(v)_0$))
  })
}))

=== 运动学方程

$ v_(0x) &= v_0 cos θ_0 \
  v_(0y) &= v_0 sin θ_0 \
  ve(v)_0 &= v_(0x) vi + v_(0y) vj \
  ve(a) &= ve(g) \
  ve(v) &= ve(v)_0 + ve(a) t \
  &= v_(0x) vi + (v_(0y) - g t) vj \
  ve(r) &= int_0^t ve(v) dif t \
  &= (v_(0x) t) vi + (v_(0y) t - 1/2 g t^2) vj \
  &= (v_0 cos θ_0 t) vi + (v_0 sin θ_0 t - 1/2 g t^2) vj \
  &= ve(v)_0 t + 1/2 ve(g) t^2 \
$

=== 轨迹

$ y &= v_0 sin θ_0 t - 1/2 g t^2 \
  &= x tan θ_0 - 1/2 g (x / (v_0 cos θ_0))^2
$

=== 射程

$ y &= 0 \
  x (tan θ_0 - 1/2 g x / (v_0 cos θ_0)^2) &= 0 \
  x_m &= (2 tan θ_0 (v_0 cos θ_0)^2) / g \
  &= (v_0^2 sin(2 θ_0)) / g
$

=== 最大高度

$ x &= 1/2 x_m \
  y_m &= 1/2 x_m tan θ_0 - 1/2 g ((1/2 x_m) / (v_0 cos θ_0))^2 \
  &= (v_0^2 sin^2 θ_0) / (2 g)
$

== 1.3 圆周运动和一般曲线运动

=== 自然坐标系

- 切向单位矢量 $ve(e_"t")$
- 法向单位矢量 $ve(e_"n")$

=== 速度

$ ve(v) = v ve(e_"t") $

=== 加速度

$ ve(a) &= dd(ve(v), t) \
  &= dd((v ve(e_"t")), t) \
  &= dd(v, t) ve(e_"t") + v dd(ve(e_"t"), t)
$

其中，切向加速度

$ ve(a_"t") &= dd(v, t) ve(e_"t") \
  &= a_"t" ve(e_"t")
$
#colbreak()

法向加速度

$ ve(a_"n") &= v dd(ve(e_"t"), t) \
  &= v (ve(e_"n") sin (dif θ)) / (dif t) \
  &= v dd(θ, t) ve(e_"n") \
  &= v dd(s, t) dd(θ, s) ve(e_"n") \
  &= v^2 / ρ ve(e_"n") \
  &= a_"n" ve(e_"n")
$

整理得加速度表达式

$ ve(a) &= ve(a_"t") + ve(a_"n") \
  &= a_"t" ve(e_"t") + a_"n" ve(e_"n") \
  &= dd(v, t) ve(e_"t") + v^2 / ρ ve(e_"n")
$

特殊情况

- 匀速圆周运动：速度大小不变，即 $a_"t" = dd(v, t) = 0$，加速度仅改变速度方向
- 直线运动：曲率半径可视为无穷大，即 $ρ = ∞, a_"n" = 0$，加速度仅改变速度大小

=== 角位移 $de θ$

=== 角速度

$ ve(ω) = dd(θ, t) $

=== 角加速度

$ ve(α) = dd(ω, t) = dd(θ, t, t) $

=== 圆周运动中角量和线量的关系

$ v &= ω R \
  a_"t" &= α R \
  a_"n" &= v^2 / R = v ω = ω^2 R 
$

== 1.4 相对运动

=== 2 参考系
- 模型

  $K$, $K'$ 是 2 参考系，认为 $K$ 静止，$K'$ 相对于 $K$ 运动

- 位矢

  $ ve(r_"KP") = ve(r_"KK'") + ve(r_"K'P") $

- 速度

  $ ve(v_"KP") &= dd(ve(r_"KP"), t) \
    &= dd(t) (ve(r_"KK'") + ve(r_"K'P")) \
    &= dd(ve(r_"KK'"), t) + dd(ve(r_"K'P"), t) \
    &= ve(v_"KK'") + ve(v_"K'P") \
  $

  其中，$ve(v_"KP")$ 称为绝对速度，$ve(v_"K'P")$ 称为相对速度，$ve(v_"KK'")$ 称为牵连速度

- 加速度

  $ ve(a_"KP") = ve(a_"KK'") + ve(a_"K'P") $

  当 $K'$ 相对于 $K$ 匀速运动，即 $ve(a_"KK'") = 0$ 时有

  $ ve(a_"KP") = ve(a_"K'P") $

  说明惯性系中加速度是绝对的

== 1.5 牛顿运动定律

#pagebreak()

= 2 运动的守恒量和守恒定律

== 2.1 质点系的内力和外力 质心 质心运动定理

=== 质点系 $(m_i, ve(r)_i)$

=== 内力和外力

- 内力：质点系内各质点之间的相互作用力，记 $m_i$ 受 $m_j$ 的作用力为 $ve(F_(i j))$
- 外力：作用在质点系上的外部力，记 $m_i$ 所受的外力为 $ve(F)_i$

=== 质心

=== 质心位矢

对离散的质点系

$ ve(r_"c") = (sum m_i ve(r)_i) / (sum m_i) $

将连续物体看作质点系，则有

$ ve(r_"c") = (int ve(r) dif m) / m $

=== 质心速度

$ ve(v_"c") &= dd(ve(r_"c"), t) \
  &= dd(t) ((sum m_i ve(r)_i) / (sum m_i)) \
  &= (sum m_i dd(ve(r)_i, t)) / (sum m_i) \
  &= (sum m_i ve(v)_i) / (sum m_i)
$

=== 质心加速度

$ ve(a_"c") = (sum m_i ve(a)_i) / (sum m_i) $

=== 质心运动定理

各质点的运动方程为

$ m_i ve(a)_i = ve(F)_i + sum_(j != i) ve(F_(i j)) $

求和得

$ sum m_i ve(a)_i = sum ve(F)_i + sum sum_(j != i) ve(F_(i j)) $

由牛顿第三定律，$sum sum_(j != i) ve(F_(i j)) = 0$，那么

$ sum m_i ve(a)_i &= sum ve(F)_i \
  sum ve(F)_i &= ve(a_"c") m_c
$

即物体的运动等同于所有外力施加在质心上的运动

== 2.2 动量定理 动量守恒定律

=== 动量

$ ve(p) = m ve(v) $


=== 冲量

$ ve(I) = int ve(F) dif t $

表示力 $ve(F)$ 在一段时间内的积累，其中 $ve(F) dif t = dif ve(p)$ 称为元冲量

=== 动量定理

由牛顿第二定律，力可以用动量表示为

$ ve(F) = m ve(a) = m dd(ve(v), t) = dd((m ve(v)), t) = dd(ve(p), t) $

$ ve(I) = int ve(F) dif t = int dif ve(p) = de ve(p) $

说明质点受和外力的冲量等于动量的变化量

=== 冲力

可用 $de t$ 时间内的冲量大小 $I$ 估算冲力的平均大小 $avg(F)$

$ avg(F) = I / (de t) $

=== 质点系的动量定理

考虑各质点所受合力的元冲量

$ (ve(F)_i + sum_(j != i) ve(F_(i j))) dif t = dif ve(p)_i = dif (m_i ve(v)_i)
$

求和得（仍消去内力）

$ sum ve(F)_i dif t &= sum dif (m_i ve(v)_i)
  = dif (sum m_i ve(v)_i)
  = dif (m_"c" ve(v_"c")) = dif ve(p_"c")
$

积分得

$ int sum ve(F)_i dif t = sum int ve(F)_i dif t = de ve(p_"c") $

=== 动量守恒定律

质点（系）在不受外力作用，即合外力为零时，有

$ sum ve(F)_i = dd(ve(p), t) &= ve(0) \
  ve(p) &= "const"
$

== 2.3 质点的角动量定理和角动量守恒定律

=== 角动量

质点对于某参考点的角动量 $L$ 为

$ ve(L) = ve(r) times ve(p) $

其中，$ve(r)$ 是质点到参考点的位矢（后同）

圆周运动中，对圆心的位矢 $ve(r) perp ve(p)$，因此

$ L = r p $

=== 力矩

$ ve(M) = ve(r) times ve(F) $

=== 角动量定理

$ dd(ve(L), t)
  &= dd(t) (ve(r) times ve(p)) \
  &= dd(ve(r), t) times ve(p) + ve(r) times dd(ve(p), t) \
  &= ve(v) times m ve(v) + ve(r) times ve(F) \
  &= ve(r) times ve(F) \
  &= ve(M)
$

即力矩是角动量的变化率

$ ve(M) = dd(ve(L), t) $

=== 质点系的角动量定理

与质点系的动量定理类似地，有

$ sum ve(M)_i = dd(ve(L_"c"), t) $

=== 角动量守恒定律

质点（系）在不受外力矩作用，即合外力矩为零时，有

$ sum ve(M)_i = dd(ve(L), t) &= ve(0) \
  ve(L) &= "const"
$

== 2.4 功 动能 动能定理

=== 功

恒力 $ve(F)$ 在位移 $de ve(r)$ 上做的功为

$ A = ve(F) dot de ve(r) $

对于变力做功的情况，考虑微小位移元 $dif ve(r)$ 上的元功

$ dif A = ve(F) dot dif ve(r) $

则变力 $ve(F)$ 做功可用第二类曲线积分表示为

$ A
  &= int ve(F) dot dif ve(r) \
  &= int ve(F) dot hat(ve(r)) dif r \
  &= int F cos θ dif r quad (θ = angleof(ve(F), ve(r)))
$

=== 功率

$ P
  &= dd(A, t) \
  &= (ve(F) dif ve(r)) / (dif t) \
  &= ve(F) dot ve(v)
$

=== 动能

$ E_"k" = 1/2 m v^2 $

=== 动能定理

$ A
  &= int ve(F) dot dif ve(r) \
  &= int m dd(ve(v), t) dot dif ve(r) \
  &= int m ve(v) dif ve(v) \
  &= int m 1/2 dif (v^2) \
  &= de (1/2 m v^2) \
  &= de E_"k"
$

即质点的动能变化量等于合外力做功，这结论称为动能定理

== 2.5 保守力 成对力的做功 势能

=== 保守力

保守力是做功与路径无关的力，即对任何闭合路径 $L$， 有

$ oint_L ve(F) dot dif ve(r) = 0 $

非保守力也称为耗散力

=== 成对力的做功

对物体 1、2 间的作用力 $ve(F)_12$ 与其反作用力 $ve(F)_21$，有

$ dif A
  &= dif A_1 + dif A_2 \
  &= ve(F)_12 dot dif ve(r)_1 + ve(F)_21 dot dif ve(r)_2 \
  &= ve(F)_12 dot dif ve(r)_1 - ve(F)_12 dot (dif ve(r)_1 + dif ve(r)_12) \
  &= - ve(F)_12 dot dif ve(r)_12
$

这表明，系统受成对力的总功与参考系无关

- 保守力做功与势能

由于保守力的性质，我们能够定义关于位置的系统的势能函数 $E_"p"$，其与保守力 $ve(F)$ 做功有如下关系：

$ A = de E_"p" $

- 重力的功和势能

  $ dif A &= ve(F) dot dif ve(r) = - m g dif h \
    A &= - m g de h = - de (m g h) \
    E_"p" &= m g h
  $

- 弹性力的功和势能

  $ dif A
    &= ve(F) dot dif ve(x) \
    &= - k ve(x) dot dif ve(x) \
    &= - 1/2 k dif (x^2) \
    A &= - de (1/2 k x^2) \
    E_"p" &= 1/2 k x^2
  $

- 万有引力的功和势能

  $ dif A
    &= ve(F) dot dif ve(r) \
    &= G (m m') / r^2 hat(ve(r)) dot dif ve(r) \
    &= - G (m m') / r^2 dif r \
    A &= - de (- G (m m') / r) \
    E_"p" &= - G (m m') / r
  $

=== 势能曲线

- 势能曲线：$E_"p" "-" r_i$ 图像，其中 $r_i$ 是质点位矢的分量

- 势能曲线在直线 $E_p = E$ 下方的部分是质点的可达区域

- 势能曲线在某点处的斜率反映此处保守力大小和方向：保守力在某方向的分量等于该方向势能对位矢的变化率的相反数，或保守力等于势能对位移的负梯度

  $ dif A &= - dif E_"p" \
    ve(F) dot dif ve(r) &= - dif E_"p" \
    ve(F) &= - nabla_r E_"p"
  $

== 2.6 质点系的功能原理 机械能守恒定律

=== 质点系的动能定理

外力做功与内力做功之和等于动能变化量

$ A_"e" + A_"i" = de E_"k" $

=== 质点系的功能原理

内力做功可分为保守力做功和耗散力做功

$ A_"i" &= A_"ic" + A_"id" $

由于势能是系统内部的属性，势能变化量即保守力内力做功的相反数

$ de E_"p" = A_"ic" $

结合质点系的动能定理，得

$ A_"e" + A_"id" = de E_"k" + de E_"p" = de E $

这结论称为质点系的功能原理

=== 机械能守恒定律

对于一个系统，若仅有保守内力作功，即

$ A_"e" = A_"id" = 0 $

则系统机械能守恒

$ de E &= 0 \
  E &= "const"
$

== 2.7 碰撞

=== 恢复系数

两物体正碰（对心碰撞）时，定义分离速度 $v_2' - v_1'$ 与接近速度 $v_1 - v_2$ 的比值为恢复系数

$ e = (v_2' - v_1') / (v_1 - v_2) $

实验表明对相同材质的球，恢复系数为定值

=== 碰撞的分类

- 完全弹性碰撞：$e = 1$，分离速度等于接近速度，动能守恒

- 非完全弹性碰撞：$0 < e < 1$，动能有损失

- 完全非弹性碰撞：$e = 0$，动能全部损失，碰撞后物体粘在一起

#pagebreak()

= 3 刚体和流体的运动

== 3.1 刚体模型及其运动

=== 刚体

=== 自由度

自由度是指确定一物体在空间中位置需要的独立坐标数目

自由刚体有 $6$ 个自由度：$3$ 个平动自由度和 $3$ 个转动自由度

== 3.2 力矩 转动惯量 定轴转动定律

=== 刚体的力矩

和质点力矩相同地，定义刚体的力矩

$ ve(M) = ve(r) times ve(F) $

=== 对转轴的力矩

若刚体绕转轴 $l$ 作定轴转动，只有垂直于转轴的力矩对刚体运动有影响

因此作用在刚体上力 $F$ 对 $l$ 的力矩

$ ve(M)_l = ve(r) times ve(F)_perp $

其中，$ve(r)$ 是 $ve(F)$ 相对 $l$ 的位矢，$ve(F)_perp$ 是 $ve(F)$ 在转轴垂直方向的分量

$ ve(F)_perp = ve(F) - ve(F)_parallel = ve(F) - Proj_ve(l) ve(F) $

=== 力臂与力矩大小

设夹角

$ φ = angleof(ve(r), ve(F)_perp) $

定义力臂 $d$ 为转轴 $l$ 到力作用线的距离，即

$ d = r sin φ $

则力矩大小

$ M_l &= r F_perp sin φ = F_perp d $

=== 力矩的合成

对同一转轴 $l$ 的力矩可直接相加

$ (sum ve(M_i))_l = sum ve(M)_(i l) $

=== 角速度、角加速度矢量

$ ve(ω) &= ω hat(ve(l)) \
  ve(α) &= α hat(ve(l))
$

=== 角速度与线速度

$ ve(v) = ve(ω) times ve(r) $

=== 转动惯量

$ J = int r^2 dif m $

=== 常见刚体的转动惯量

=== 定轴转动定律

$ ve(M)_l = J ve(α) $

== 3.3 定轴转动中的功能关系

=== 力矩的功

考虑定轴转动的刚体上 $ve(F) perp ve(l)$ 所做的功

$ #let a1 = $angleof(ve(r), ve(F))$
  #let a2 = $angleof(ve(F), dif ve(s))$

  dif A
  &= ve(F) dot dif ve(s) \
  &= F cos #a2 dif s \
  &= F r cos #a2 dif θ \

  #a1 + #a2
  &= angleof(ve(r), dif ve(s)) = π/2 \

  M
  &= F r sin #a1 \
  &= F r cos #a2 \

  dif A &= M dif theta \
  A &= int M dif theta
$

=== 刚体的转动动能

$ E_"k"
  &= int 1/2 v_i^2 dif m \
  &= int 1/2 r^2 (v / r)^2 dif m \
  &= 1/2 ω^2 int r^2 dif m \
  &= 1/2 J ω^2
$

=== 定轴转动的动能定理

$ A
  &= int M dif θ \
  &= int J α dif θ \
  &= int J dd(ω, t) dif θ \
  &= int J dd(θ, t) dif ω \
  &= int J ω dif ω \
  &= de (1/2 J ω^2)
  &= de E_"k"
$

== 3.4 定轴转动刚体的角动量定理和角动量守恒定律

=== 刚体的角动量

$ ve(L)_l
  &= int ve(r) times ve(v) dif m \
  &= int ve(r) times (ve(omega) times ve(r)) dif m \
  &= int ve(ω) r^2 - ve(r) (ve(r) dot ve(ω)) dif m \
  &= int ve(ω) r^2 dif m quad (ve(r) perp ve(ω)) \
  &= ve(omega) int r^2 dif m \
  &= J ve(ω)
$

=== 刚体定轴转动的角动量定理

$ ve(M)_l
  &= J ve(α) \
  &= J dd(ve(ω), t) \
  &= dd(J ve(ω), t) \
  &= dd(ve(L)_l, t) \
$

=== 刚体平动与定轴转动的对比

#table(
  columns: 4,

  [速度], $ve(v) = dd(ve(r), t)$,
  [角速度], $ve(w) = dd(θ, t) hat(ve(l))$,

  [加速度], $ve(a) = dd(ve(v), t)$,
  [角加速度], $ve(a) = dd(ve(ω), t)$,

  [质量], $m$,
  [转动惯量], $J = int r^2 dif m$,

  [动量], $ve(p) = m ve(v)$,
  [角动量], $ve(L)_l = J ve(ω)$,

  [冲量], $ve(I) = int ve(F) dif t$,
  [冲量矩], $ve(H)_l = int ve(M)_l dif t$,

  [力], $ve(F) = dd(ve(p), t)$,
  [力矩], $ve(M)_l = dd(ve(L)_l, t)$,

  [平动动能], $E_"k" = 1/2 m v^2$,
  [转动动能], $E_"k" = 1/2 J ω^2$,

  [力做功], $A = int ve(F) dot dif ve(r)$,
  [力矩做功], $A = int M_l dif θ$ 
)

#pagebreak()

= 7 静止电荷的电场

== 7.1 电荷 库仑定律

=== 电荷量 $Q$

=== 电荷守恒定律

=== 元电荷

=== 点电荷

=== 库仑定律

两点电荷间静电力

$ ve(F)_12 = - ve(F_21) = k (q_1 q_2) / r_12^2 hat(ve(r))_12 $

=== 静电力常量与真空介电常量

#let kk = $1 / (4 π ε_0)$
$ k = kk $

=== 静电力的叠加原理

多个点电荷 $q_i$ 对点电荷 $q$ 的静电力能够叠加

$ ve(F) = sum ve(F)_i = sum kk (q q_i) / r_i^2 hat(ve(r))_i $

== 7.2 静电场 电场强度

=== 静电场

=== 电场强度

$ ve(E) = ve(F) / q_0 $

=== 电场强度的叠加原理

$ ve(E) = (sum ve(F)_i) / q_0 = sum ve(F)_i / q_0 = sum ve(E)_i $

=== 点电荷 $q$ 在 $r$ 处的电场强度

$ ve(E) = kk q / r^2 hat(ve(r)) $

=== 电偶极子

电荷量为 $q$ 与 $-q$，距离为 $ve(l)$ 的两点电荷组成的系统称为电偶极子

=== 电偶极矩

$ ve(p) = q ve(l) $

=== 电偶极子的电场强度

- 延长线方向

- 中垂线方向

=== 连续分布电荷的电场强度

$ dif E &= #kk (dif q) / r^2 hat(ve(r)) \
  E
  &= int dif E \
  &= #kk int (dif q) / r^2 hat(ve(r)) \
$

=== 电场对电荷的作用力

$ ve(F) = q ve(E) $

=== 电场线

- 性质

  - 从正电荷（无穷远处）出发，指向负电荷（无穷远处）
  - 电场线不会相交
  - 电场线不会闭合

- 意义

  - 电场线的密度（通量）正比于电场强度的大小
  - 电场线的切线方向与电场强度的方向相同

=== 电场强度通量（$ve(E)$ 通量）

通过平面 $S$ 的 $ve(E)$ 通量

$ Φ_e = ve(E) dot ve(S) $

规定电场线穿出/穿入曲面的 $ve(E)$ 通量为正/负

对于曲面 $S$ 有

$ dif Φ_e = ve(E) dot dif ve(S) \
  Φ_e = int_S ve(E) dot dif ve(S)
$

== 7.3 静电场的高斯定理

=== 高斯定理

通过闭合曲面 $S$ 的电场强度通量等于 $S$ 内部电荷量的代数和除以真空介电常量

$ oint_S ve(E) dot dif ve(S) = q_S / ε_0 $

=== 利用高斯定理求电场强度

若某一闭合面 $S$（称为高斯面）上电场强度大小处处都等于 $E$，方向正交于 $S$，且已知 $S$ 内电荷量为 $q_S$，则有

$ oint_s ve(E) dot dif ve(S) = E oint_S dif S = q_S / ε_0 $

于是

$ E = q_S / (ε_0 oint_S dif S) $

=== 常见电场的电场强度

- 均匀带电 $q$ 的半径为 $R$ 球体内的电场离球心 $ve(r)$ 处电场强度

  $ ve(E) = dcases(
      (q r) / (4 π ε_0 R^3) hat(ve(r)) quad &(r <= R) \
      q / (4 π ε_0 R^2) hat(ve(r)) quad &(r > R)
    )
  $

- 均匀带电 $q$ 的半径为 $R$ 球面上的电场离球心 $ve(r)$ 处电场强度

  $ ve(E) = dcases(
      ve(0) quad &(r <= R) \
      q / (4 π ε_0 R^2) hat(ve(r)) quad &(r > R)
    )
  $

- 以电荷线密度 $λ$ 均匀带电半径为 $R$ 无限长圆柱上的电场离轴 $ve(r)$ 处电场强度

  $ ve(E) = dcases(
      (λ r) / (2 π ε_0 R^2) hat(ve(r)) quad &(r <= R) \
      λ / (2 π ε_0 r) hat(ve(r)) quad &(r > R)
    )
  $

- 以电荷面密度 $σ$ 均匀带电无限大平面上的电场离平面 $ve(r)$ 处电场强度

  $ ve(E) = σ / (2 ε_0) hat(ve(r)) $

== 7.4 静电场的环路定理 电势

=== 静电场力做功

$ A
  &= int ve(F) dot dif ve(r) \
  &= int q_0 ve(E) dot dif ve(r)
$

静电场力是保守力，即对闭合路径 $L$ 有

$ oint_L q_0 ve(E) dot dif ve(r) &= 0 \
  oint_L ve(E) dot dif ve(r) &= 0
$

等价表述：

- 电场强度的环流为 $0$
- 静电场是保守力场（势场）

=== 点电荷产生静电场力做功的计算

$ A
  &= int ve(F) dot dif ve(r) \
  &= int kk (q_0 q) / r^2 hat(ve(r)) dot dif ve(r) \
  &= (q_0 q) / (4 π ε_0) int 1 / r^2 dif r \
  &= - (q_0 q) / (4 π ε_0) 1/ r
$

=== 电势能

规定某参考点的电势能，例如令无穷远处的电势能为 $0$

$ at(E_"p", ve(r) = oo) = 0 $

又由势能的定义

$ de E_"p" = - A = - q_0 int ve(E) dot dif ve(r) $

那么 $ve(r)$ 处电势能

$ E_"p" = - q_0 int_ve(r)^oo ve(E) dot dif ve(r) $

=== 电势

$ V &= E_p / q_0 = int_ve(r)^oo ve(E) dot dif ve(r) $

=== 电势差（电压）

$ U_(a b) = V_b - V_a = int_(ve(r)_a)^(ve(r)_b) ve(E) dot dif ve(r) $

=== 电势的叠加原理

=== 常见电场的电势

- 离点电荷 $q$ 距离 $ve(r)$ 处的电势

  $ V = q / (4 π ε_0 r) $

=== 等势面与电场线

- 等势面与电场线正交

- 电势沿电场线下降

- 等势面密度与电场强度大小成正比

== 7.5 电场强度与电势的微分关系

$ ve(E) = - nabla_r ve(V) $

== 7.6 静电场中的导体

=== 导体的静电平衡

- 导体内部电场强度为 $0$，否则导体内的自由电荷会发生定向运动

- 导体是等势体，其表面是等势面 $=>$ 导体表面电场强度正交于表面

=== 静电平衡时导体的电荷分布

导体内部电场强度为 $0$ $=>$ 由高斯定理，导体内部任何闭区域都不包含电荷 $=>$ 导体的电荷全部分布在表面

=== 导体表面电场强度与电荷面密度关系

$ ve(E) = q_S / (ε_0 oint_S dif S) hat(ve(n)) = σ / ε_0 hat(ve(n)) $

其中 $hat(ve(n))$ 是导体表面单位法向量

=== 电荷面密度与表面曲率关系

电荷面密度与表面曲率正相关

解释了尖端放电现象的原因：导体尖端电荷面密度高，电场强度大，容易击穿空气

=== 静电屏蔽

== 7.7 电容器的电容

=== 孤立导体的电容

$ q / V = C $

=== 孤立半径为 $R$ 球形导体的电容

$ C = q / V = q / (q / (4 π ε_0 R)) = 4 π ε_0 R $

=== 电容器的电容

$ C = q / U = q / (V_A - V_B) $

其中 $U$ 是两极板 $A, B$ 间的电势差

=== 相对介电常量（相对电容率）

$ ε_r &= C / C_0 = ε / ε_0 $

=== 常见电容器的电容

- 平行板电容器的电容

  $ C
    &= q / (U) \
    &= q / (E d) \
    &= q / (display(2 dot σ / (2 ε) d)) \
    &= (q ε_0) / (σ d) \
    &= (ε S) / d
  $

- 圆柱形电容器的电容

  $ C = (2 π ε l) / (ln R_B / R_A) $

- 球形电容器的电容

  $ C = 4 π ε (R_A R_B) / (R_B - R_A) $

=== 分布电容

=== 电容器的串联和并联

- 串联

  $ 1 / C = sum 1 / C_i $

- 并联

  $ C = sum C_i $

== 7.8 静电场中的介质

=== 电极化强度（$ve(P)$ 矢量）

$ ve(P) = (sum ve(p)) / (de V) $

=== 电极化强度与极化电荷

$ ve(P)
  &= (sum ve(p)_i) / V \
  &= (sum q_i ve(l)_0) / V \
  &= (q ve(l)) / V \
  &= σ' hat(ve(n))
$

即

$ σ' = P $

=== 电极化强度与电场

$ ve(P) = χ_e ε_0 ve(E) $

其中，$χ_e$ 是介质的电极化率

=== 介电质中的静电场

$ ve(E) &= ve(E_0) + ve(E') $

$ E &= E_0 - E' \
  &= E_0 - σ' / ε_0 \
  &= E_0 - P / ε_0 \
  &= E_0 - χ_e E \
  (1 + χ_e) E &= E_0 \
  E &= E_0 / (1 + χ_e) \
$

=== 电容率（介电常量）与电极化率

$ C_0 / C &= E_0 / E \
  &= 1 + χ_e \
  &= ε_r
$

=== 铁电体、压电效应、永驻体

== 7.9 有电介质时的高斯定理 电位移

$ oint_S ve(E) dot dif ve(S)
  &= q / ε_0 \
  &= (q_0 - q') / ε_0 \
  &= (q_0 - P S) / ε_0 \
  &= q_0 / ε_0 - 1 / ε_0 oint_S ve(P) dot dif ve(S) \

  oint_S (ε_0 ve(E) + ve(P)) dot dif ve(S) &= q_0
$

令电位移

$ ve(D)
  &= ε_0 ve(E) + ve(P) \
  &= ε_0 ve(E) + χ_e ε_0 ve(E) \
  &= ε_0 (1 + χ_e) ve(E) \
  &= ε ve(E)
$

则

$
  oint_S ve(D) dot dif ve(S) &= q_0
$

这结论称为有电介质时的高斯定理

== 7.10 静电场的能量

=== 静电场的能量密度

$ w_e = 1/2 ve(D) dot ve(E) = ε E^2 $

=== 静电场的能量

$ W_e = int_V w_e dif V $

= 8 恒定电流的磁场

== 8.1 恒定电流

=== 电流

$ I = dd(q, t) $

=== 电流密度

$ j = dd(I, S_perp) \
  I = int_S j dif 
$