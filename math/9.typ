#set page(margin: 1cm, paper: "iso-b5", numbering: "1")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
    #block(width: 100%, inset: 0em, [
        #set align(center)
        #el
    ])
]

#import "../typst/basic.typ": *

= 9 多元函数微分法及其应用

== 9.1 多元函数

=== $RR^n$ 中的距离

$ ρ(x, y) := sqrt(sum_(i = 0)^n |x_i - y_i|^2)$

=== $RR^n$ 中的拓扑

- 点 $x_0$ 的 $δ$ 邻域（半径为 $δ$ 的开球）：

  $ U(x_0, δ) = { x | ρ(x, x_0) < δ } $

- 去心 $δ$ 邻域：

  #let Uo = $accent(U, circle)$
  $ Uo(x_0, δ) = { x | 0 < ρ(x, x_0) < δ } = U(x_0) \\ {x_0} $

- 邻域：

  #let Nn = $cal(N)$
  $ U in Nn(x_0) <=> Exists( δ > 0) U(x_0, δ) subset U $

  其中 $Nn(x)$ 称为点 $x$ 的邻域系.

- 点 $x$ 与点集 $S$ 的关系

  #let Int = $op("Int")$
  #let Ext = $op("Ext")$

  - $x$ 是 $S$ 的内点 $<=>$
  
    $ x in Int(S) <=> Exists( U in Nn(x) ) U subset S $

    其中 $Int(S)$ 称为 $S$ 的内部.

  - $x$ 是 $S$ 的外点 $<=>$
  
    $ x in Ext(S) <=> Exists( U in Nn(x) ) U inter S = emptyset $

    其中 $Ext(S)$ 称为 $S$ 的外部.

  - $x$ 是 $S$ 的边界点 $<=>$
    
    $ x in partial S <=> Forall( U in Nn(x) ) U inter S != emptyset and U inter dash(S) != emptyset $
    
    其中 $partial S$ 称为 $S$ 的边界.

  - $x$ 是 $S$ 的聚点 $<=>$
  
    $ x in S' <=> Forall( U in Nn(x) ) U \\ {x} inter S != emptyset $

    其中 $S'$ 称为 $S$ 的导集.

- 闭包：

  #let Cl = $op("Cl")$
  $ Cl(S) = S union S' $

- 开集与闭集
  
  - $V subset RR$ 为开集 $<=>$

    $ V = Int(V) <=> Forall(x in V) Exists(U in Nn(x)) U subset V $

  - $C subset RR$ 为闭集 $<=>$ $dash(C)$ 是开集 $<=>$

    $ C' subset C <=> partial C subset C <=> Forall(x) (Forall(U in Nn(x)) U inter C != emptyset and U inter dash(C) != emptyset) -> x in C $

- 连通、道路连通

- 开区域、闭区域

  - 开区域：连通的开集
  - 闭区域：开区域的闭包

=== 多元函数：$f : D subset RR^n -> RR$

=== 多元函数的极限

定义多元函数 $f$ 定义域的聚点 $x_0$ 处的极限：

$
  Forall( x_0 in D' )
  lim_(x -> x_0) f(x) = f_0 <=> \
  Forall( ε > 0 ) Exists(δ > 0) Forall(x in D inter Uo(x_0, δ)) |f(x) - f_0| < ε
$

其中，$x -> x_0$ 是指 $RR^n$ 中点 $x$ 以*任意方式*趋近于点 $x_0$

=== 多元初等函数：由不同自变量和一元基本初等函数经有限次四则运算或复合得到的函数

=== 多元函数的连续性

- 单点连续

  多元函数 $f$ 在点 $x_0 in D'$ 处连续 $<=>$

  $ lim_(x -> x_0) f(x) = f(x_0) $

  若不连续，则称 $x_0$ 为 $f$ 的间断点.

- 多元函数 $f$ 是连续函数 $<=>$ $f$ 在定义域中每一点处都连续

  多元初等函数在定义区域内连续.

=== 有界闭区域 $D$ 上连续多元函数的性质

+ *有界性与最大值最小值定理*：$f(D)$ 有界，且存在最大值 $max f(D)$ 与最小值 $min f(D)$.

+ *介值定理*：

  $ Forall( f_0 in [min f(D), max f(D)] )
    Exists(x_0 in D) f(x_0) = f_0
  $

+ *一致连续性定理*：$f$ 在 $D$ 上一致连续，即

  $ Forall( ε > 0 ) Exists(δ > 0)
    Forall( x, y in D )
    |x - y| < δ -> |f(x) - f(y)| < ε
  $

== 9.2 偏导数

=== 偏导数

#let iso = $tilde.equiv$

- 定义多元函数 $f$ 在 $x_i$ 方向上的偏导数：

  $ pp(f, x_i) = lim_(de x_i -> 0) (f(x_1, ..., x_i + de x_i, ..., x_n) - f(x_1, ..., x_i, ..., x_n)) / (de x_i)
  $

- 尝试更清晰的写法：

  偏导算子：

  $ partial &: (n : NN) => (f : RR^n -> RR) -> (i : [[i]]) -> RR^n -> RR $

  其中，$f$ 为 $n$ 元函数，$i$ 为偏导方向指标
  
  现在定义多元函数 $f$ 在 $x_i$ 方向上的偏导数：

  $ f_(x_i), pp(f, x_i) &: RR^n -> RR \
    f_(x_i), pp(f, x_i) &= ve(x) mapsto
    lim_(h -> 0) (f(ve(x) + de x_i ve(e_i)) - f(ve(x))) / (de x_i)
  $

- 某点处偏导数的值记为

  $ at(pp(f, x_i), ve(x) = ve(x_0)) = f_(x_i)(ve(x_0)) $

=== 偏导数的几何意义

对于二元函数 $f(x, y)$，$f_(x \/ y)(x_0, y_0)$ 的几何意义是点 $(x_0, y_0)$ 处与 $x \/ y$ 轴平行方向的切线斜率

=== 高阶、混合偏导数

- 二阶偏导的记号定义如下，更高阶偏导数同理

  $ pp(f, x, x) &= pp(x) (pp(f, x)) \
    pp(f, x, y) &= pp(y) (pp(f, x)) \
    pp(f, y, x) &= pp(x) (pp(f, y)) \
    pp(f, y, y) &= pp(y) (pp(f, y)) \
  $

- *Clairaut 定理*：若 $f$ 在点 $x_0$ 处有二阶连续偏导数，则 $f$ 在 $x_0$ 处二阶混合偏导数交换：

  $ f_(x_i x_j) (ve(x_0)) = f_(x_j x_i) (ve(x_0)) $

  证明：

  不失一般性设 $f$ 是二元函数，$x_i = x, x_j = y$，则
  
  $ f_(x y) (x_0, y_0)
    &=&& pp(y) (pp(f, x)) \

    &=&& lim_(de y -> 0)
      [ lim_(de x -> 0)
        (f(x + de x, y + de y) - f(x, y + de y)) dot 1/(de x) \
    &&-& lim_(de x -> 0)
        (f(x + de x, y) - f(x, y)) dot 1/(de x) 
      ] dot 1/(de y) \

    &=&&  lim_(de y -> 0) lim_(de x -> 0) [
      (f(x + de x, y + de y) - f(x, y + de y)) - 
      (f(x + de x, y) - f(x, y))
    ] dot 1/(de y de x)
  $

  由于偏导数在 $(x_0, y_0)$ 连续，$f$ 也连续，所以极限可以交换：

  $ ... quad
    &=&& lim_(de x -> 0) lim_(de y -> 0) [
      (f(x + de x, y + de y) - f(x + de x, y)) - 
      (f(x, y + de y) - f(x, y))
    ] dot 1/(de x de y) \

    &=&& lim_(de x -> 0)
      [ lim_(de y -> 0)
        (f(x + de x, y + de y) - f(x + de x, y)) dot 1/(de y) \
    &&-& lim_(de y -> 0)
        (f(x, y + de y) - f(x, y)) dot 1/(de y) 
      ] dot 1/(de x) \
    &=&& pp(x) (pp(f, y)) \
    &=&& f_(y x) (x_0, y_0)
  $

== 9.3 全微分

=== 偏增量与偏微分

$ f(x + de x, y) - f(x, y) &tilde f_x (x, y) de x \
  f(x, y + de y) - f(x, y) &tilde f_y (x, y) de y
$

上式中，左边是偏增量，右边是偏微分. 偏微分是偏增量的线性主部.

=== 全增量与全微分

定义全增量：

$ de f = f(x + de x, y + de y) - f(x, y) $

类似地，当

$ Exists(k_x, k_y) de f tilde k_x de x + k_y de y $

即函数值的全增量能在忽略自变量增量的高阶无穷小情况下，表示为各变量增量 $de x$、$de y$ 的线性近似时，

称 $dif f = k_x de x + k_y de y$ 为 $f$ 在点 $(x, y)$ 处的全微分，且 $f$ 在点 $(x, y)$ 处可微.

其中，$tilde$ 表达的近似关系具体为

$ de f = k_x de x + k_y de y + ε_x de x + ε_y de y
  quad ((de x, de y) -> (0, 0) => ε_x, ε_y -> 0) 
$

或写成

$ de f = k_x de x + k_y de y + o(ρ)
  quad (rho = sqrt(de x^2 + de y^2))
$

=== 可微与连续

由全微分的定义可看出可微必然连续：

$ Exists(k_x, k_y) de f &= k_x de x + k_y de y + o(ρ) \
  lim_(ρ -> 0) de f &= 0 \
  lim_(de x -> 0 \ de y -> 0) f(x + de x, y + de y)
  &= lim_(de x -> 0 \ de y -> 0) (f(x, y) + de f) \
  &= f(x, y) + lim_(ρ -> 0) de f \
  &= f(x, y)
$

=== 全微分与偏导数

- *定理（充分）*：若 $f$ 在 $(x, y)$ 处可微，则 $f_x$、$f_y$ 在该点处存在，且全微分为：

  $ f_x (x, y) de x + f_y (x, y) de y $

  通常记作

  $ dif f = pp(f, x) dif x + pp(f, y) dif y $

- *定理（必要）*：若 $f_x$、$f_y$ 在 $(x, y)$ 处存在且连续，则 $f$ 在该点处可微.

== 9.4 多元复合函数的求导法则

=== 定理 1

设 $z = z(x, y), x = x(t), y = y(t)$，则

$ dd(z, t) = pp(z, x) dd(x, t) + pp(z, y) dd(y, t) $

其中，$dd(z, t)$ 称为 $z$ 对 $t$ 的全导数.

证明：

$ dd(z, t)
  &= lim_(de t -> 0) (de z) / (de t) \
  &= lim_(de t -> 0) (pp(z, x) de x + pp(z, y) de y + o(ρ)) dot 1/(de t) \
  &= lim_(de t -> 0) (pp(z, x) (x(t + de t) - x(t)) + pp(z, y) (y(t + de t) - y(t)) + o(ρ)) dot 1/(de t) \
  &= pp(z, x) lim_(de t -> 0) (x(t + de t) - x(t)) / (de t) + pp(z, y) lim_(de t -> 0) (y(t + de t) - y(t)) / (de t) \
  &= pp(z, x) dd(x, t) + pp(z, y) dd(y, t)
$

=== 定理 2

设 $z = z(x, y), x = x(u, v), y = y(u, v)$，则

$ pp(z, u) &= pp(z, x) pp(x, u) + pp(z, y) pp(y, u) \
  pp(z, v) &= pp(z, x) pp(x, v) + pp(z, y) pp(y, v)
$

=== 全微分的形式不变性：

对于二元函数 $f(x, y)$ 有

$ dif f = pp(f, x) dif x + pp(f, y) dif y $

若令 $x = x(u, v), y = y(u, v)$，则

$ dif f
  &= pp(f, u) dif u + pp(f, v) dif v \
  &= (pp(f, x) pp(x, u) + pp(f, y) pp(y, u)) dif u + (pp(f, x) pp(x, v) + pp(f, y) pp(y, v)) dif v \
  &= pp(f, x) (pp(x, u) dif u + pp(x, v) dif v) + pp(f, y) (pp(y, u) dif u + pp(y, v) dif v) \
  &= pp(f, x) dif x + pp(f, y) dif y
$

也就是说无论 $x, y$ 作为自变量还是中间变量，$f$ 对 $x, y$ 的全微分形式都是相同的.

== 9.5 隐函数的求导公式

=== 隐函数存在定理 1

设函数 $F(x, y)$ 在点 $(x_0, y_0)$ 的邻域 $U$ 内有连续偏导数，且 

$ F(x_0, y_0) &= 0 \
  F_y (x_0, y_0) &!= 0
$

则方程 $F(x, y) = 0$ 在 $U$ 内能唯一确定一阶连续可导的函数 $y = f(x)$ 满足

$ y_0 = f(x_0) \
  F(x, f(x)) = 0
$

且有求导公式：

$ dd(x) F(x, f(x)) &= 0 \
  F_x + F_y f'(x) &= 0 \
  dd(y, x) = f'(x) &= - F_x / F_y
$

=== 隐函数存在定理 2

设函数 $F(x, y, z)$ 在点 $(x_0, y_0, z_0)$ 的邻域 $U$ 内有连续偏导数，且

$ F(x_0, y_0, z_0) &= 0 \
  F_z(x_0, y_0, z_0) &!= 0
$

则方程 $F(x, y, z) = 0$ 在 $U$ 内能唯一确定一阶连续可导的二元函数 $z = f(x, y)$ 满足

$ z_0 = f(x_0, y_0) \
  F(x, y, f(x, y)) = 0
$

且有求导公式：

$ dcases(
    pp(x) F(x, y, f(x, y)) &= 0 \
    pp(y) F(x, y, f(x, y)) &= 0
  ) \
  dcases(
    F_x + F_z f_x &= 0 \
    F_y + F_z f_y &= 0
  ) \
  dcases(
    pp(z, x) = f_x &= - F_x / F_z \
    pp(y, x) = f_y &= - F_y / F_z
  )
$

=== 雅可比矩阵

对于多元函数

$ ve(F) &: RR^n -> RR^m \
  ve(F) &= (x_j)_(j in [[n]]) mapsto (F_i)_(i in [[m]]) \
$

定义 $ve(F)$ 的雅可比矩阵

$ ve(J) &= pp((F_i), (x_i)) \
  J_(i j) &= pp(F_i, x_j)
$

其行列式称为雅可比行列式. 不引起歧义的情况下，雅可比行列式也可记作

$ J = pp((F_i), (x_j)) $

雅可比矩阵类似于一元函数的导数，能表示函数在某点处的线性近似：

$ de ve(F) tilde ve(J) de ve(x) $

=== 隐函数存在定理 3

考虑方程组

$ cases(
    F(x, y, u, v) &= 0 \
    G(x, y, u, v) &= 0
  )
$

当仅有 $x, y$ 独立变化时，就有可能确定二元函数 $u(x, y), v(x, y)$.

设 $F(x, y, u, v), G(x, y, u, v)$ 在 $(x_0, y_0, u_0, v_0)$ 的邻域 $U$ 内有连续偏导数，且

$ F(x_0, y_0, u_0, v_0) &= 0 \
  G(x_0, y_0, u_0, v_0) &= 0 \
  J(x_0, y_0, u_0, v_0) &!= 0
$

其中

$ J = lr(|pp((F, G), (u, v))|) = dmatdet(
    pp(F, u), pp(F, v);
    pp(G, u), pp(G, v)
  )
$

则方程组 $F(x, y, u, v) = 0, G(x, y, u, v) = 0$ 在 $U$ 内唯一确定一组一阶连续可导的二元函数 $u = u(x, y), v = v(x, y)$.

且有求导公式：

$ pp(u, x) &= - J^(-1) pp((F, G), (x, v)) \
  pp(u, y) &= - J^(-1) pp((F, G), (y, v)) \
  pp(v, x) &= - J^(-1) pp((F, G), (u, x)) \
  pp(v, y) &= - J^(-1) pp((F, G), (u, y))
$

以 $pp(u, x)$ 为例推导如下：

$ dcases(
    F(x, y, u, v) &= 0 \
    G(x, y, u, v) &= 0
  ) \
  dcases(
    pp(x) F(x, y, u, v) &= 0 \
    pp(y) G(x, y, u, v) &= 0
  ) \
  dcases(
    F_x + F_u pp(u, x) + F_v pp(v, x) &= 0 \
    G_x + G_u pp(u, x) + G_v pp(v, x) &= 0
  ) \
  dcases(
    F_u G_v pp(u, x) + F_v G_v pp(v, x) + F_x G_v &= 0 \
    F_v G_u pp(u, x) + F_v G_v pp(v, x) + F_v G_x &= 0
  ) \
$

$ pp(u, x)
  &= (F_v G_x - F_x G_v) / (F_u G_v - F_v G_u) \
  &= (pp((F, G), (u, v)))^(-1) dot (- pp((F, G), (x, v))) \
  &= - J^(-1) pp((F, G), (x, v))
$

== 9.6 多元函数微分学的几何应用

=== 一元向量值函数：$ve(f) : D subset RR -> RR^n$

=== 一元向量值函数与空间曲线：
  
- $ve(f)$ 对应 $RR^n$ 中的一条有向曲线，称为一元向量值函数的终端曲线.

- $RR^n$ 空间中曲线参数方程 $x_i = f_i (t)$ 对应一元向量值函数 $ve(f)(t) = sum_(i = 1)^n f_i (t) ve(e_i)$

=== 向量值函数的极限：

$ Forall(t in t_0)
  lim_(t -> t_0) ve(f)(t) = ve(r) <=>
  Forall(ε > 0) Exists(δ > 0)
  Forall(t in D inter Uo(t_0, δ))
  |ve(f)(t) - ve(r)| < ε
$

=== 向量值函数的导数（导向量）：

$ ve(f)'(t) &= dd(ve(f), t) = lim_(de t -> 0) (ve(f)(t + de t) - ve(f)(t)) / (de t) \
  ve(f)'(t_0) &= at(dd(ve(f), t), t = t_0)
$

向量值函数可导当且仅当其各分量函数可导，有

$ ve(f)'(t_0) = sum_(i = 1)^n f_i '(t_0) ve(e_i)
$

=== 导向量的几何意义：

- $t_0$ 处的导向量 $ve(f)'(t_0)$ 是终端曲线上的一个切向量

- 若 $ve(r) = ve(f)(t)$ 表示位置向量随时间的变化函数，则

  - $ve(r)$ 的一阶导向量 $display(ve(v) = dd(ve(r), t))$ 是速度向量

  - $ve(r)$ 的二阶导向量 $display(ve(a) = dd(ve(r), t, t))$ 是加速度向量

=== 空间曲线的切线与法平面

考虑求曲线 $Γ$ 上点 $M(x_0, y_0, z_0)$ 处的切线与法平面方程.

- 若曲线 $Γ$ 由参数方程给出：

  $ cases(
      x &= φ(t) \
      y &= ψ(t) \
      z &= ω(t)
    )
  $

  设向量值函数 $ve(f)(t) = (φ(t), ψ(t), ω(t))$，$M$ 对应 $ve(f)(t_0)$

  则切线方程为

  $ (x - x_0) / (φ'(t_0)) = (y - ψ(t_0)) / (ψ'(t_0)) = (z - ω(t_0)) / (ω'(t_0)) $

  法平面方程为

  $ φ'(t_0) (x - φ(t_0)) + ψ'(t_0) (y - ψ(t_0)) + ω'(t_0) (z - ω(t_0)) = 0 $

- 若曲线 $Γ$ 由三元方程组给出：

  $ cases(
      F(x, y, z) &= 0 \
      G(x, y, z) &= 0
    )
  $

  且 $F, G$ 有连续偏导数且存在一个一个方向的雅可比行列式在 $M$ 处不为零.
  
  不失一般性，设

  $ at(pp((F, G), (x, y)), M) != 0 $

  则由隐函数存在定理 3 可设

  $ cases(
      x &= φ(z) \
      y &= ψ(z)
    )
  $

  求导得

  $ dcases(
      pp(x, z) &= -J^(-1) pp((F, G), (z, y)) \
      pp(y, z) &= -J^(-1) pp((F, G), (x, z))
    )
  $

  取切向量
  
  $ ve(T)
    &= at(- J, M) dot (at(pp(x, z), M), at(pp(x, z), M), 1) \
    &= at((pp((F, G), (z, y)), pp((F, G), (x, z)), - J), M) \
    &= at((F_x G_z - F_z G_x, F_x G_z - F_z G_x, F_y G_x - F_x G_y), M)
  $

  则切线方程为

  $ (x - x_0) / at((F_x G_z - F_z G_x), M) = (y - y_0) / at((F_x G_z - F_z G_x), M) = (z - z_0) / at((F_y G_x - F_x G_y), M) $

  法平面方程为

  $ at((F_x G_z - F_z G_x), M) (x - x_0) + at((F_x G_z - F_z G_x), M) (y - y_0) + at((F_y G_x - F_x G_y), M) (z - z_0) = 0 $

=== 曲面的切平面与法线

考虑求曲面 $Σ$ 的切平面与法线方程.

若有曲面方程

$ F(x, y, z) = 0 $

则曲面在点 $M(x_0, y_0, z_0)$ 处的一个法向量为

$ nabla F(x_0, y_0, z_0) $

易得切平面与发现方程.

== 9.7 方向导数与梯度

=== 梯度

#let grad = $bold(op("grad"))$

- 多元函数 $f$ 各方向偏导数构成的向量称为 $f$ 的梯度，记作 $nabla f$ 或 $grad f$. 即

  $ nabla f = grad f = (pp(f, x_i))_(i in [[n]]) $

- 梯度的几何意义：

  - 梯度的方向：函数 $f$ 在某点处变化速率最大的方向
  - 梯度的模长：函数 $f$ 在某点处的最大变化速率

=== 方向导数

设 $P$ 是 $f : RR^n -> RR$ 上一点，$l$ 是 $RR^n$ 中以 $ve(p)$ 为起点的射线，$ve(e_l)$ 是 $l$ 的单位方向向量，则 $f$ 关于 $l$ 的方向导数定义为

$ pp(f, l)
  &= lim_(de t -> 0) (f(ve(p) + de t ve(e_l)) - f(ve(p))) / (de t)
$

由全微分的定义，

$ ... quad
  &= lim_(de t -> 0) (sum_(i = 1)^n display(pp(f, x_i)) de t + o(|ve(e_l)|)) / (de t) \
  &= sum_(i = 1)^n pp(f, x_i) ve(e_l)_i \
  &= nabla f dot ve(e_l)
$

== 9.8 多元函数的极值及其求法

=== 多元函数的极值

对于多元函数 $f : D subset RR^n -> R$，$ve(x_0) in D$ 是 $f$ 的极大值/极小值点 $<=>$ $f$ 在 $ve(x_0)$ 处取极大值/极小值 $<=>$

$ Exists(U in Nn(ve(x_0))) Forall(ve(x) in U \\ {ve(x_0)})
  f(ve(x)) lt.gt f(ve(x_0))
$

=== 多元函数极值与偏导数

- *定理（必要条件）*：

  若 $f$ 在 $ve(x_0)$ 处存在偏导数且有极值，则 $nabla f(ve(x_0)) = ve(0)$.

- *定理（充分条件）*：

  若 $f$ 在 $ve(x_0)$ 的邻域 $U$ 内有二阶连续偏导数，且 $nabla f(ve(x_0)) = ve(0)$，则考察黑塞矩阵 $ve(H)$：
  
  $ H_(i j) = f_(x_i x_j) $

  - 若 $ve(H)$ 正定/负定：$x_0$ 是 $f$ 的极小值/极大值点
  - 若 $ve(H)$ 不定：$x_0$ 不是 $f$ 的极值点
  - 若 $ve(H)$ 半定：无法判断

  当 $f$ 是二元函数时，有判别式
  
  $ D = |ve(H)| = matdet(f_(x x), f_(x y); f_(y x), f_(y y)) = f_(x x) f_(y y) - f_(x y)^2 $

  - 若 $D > 0$ 且 $f_(x x) > 0$：$x_0$ 是 $f$ 的极小值点
  - 若 $D > 0$ 且 $f_(x x) < 0$：$x_0$ 是 $f$ 的极大值点
  - 若 $D < 0$：$x_0$ 不是 $f$ 的极值点
  - 若 $D = 0$：无法判断

=== 条件极值与拉格朗日乘数法

考虑二元函数 $z = f(x, y)$ 在条件 $φ(x, y) = 0$ 下取极值为的必要条件

设 $(x_0, y_0)$ 为 $f$ 的极值点，则由条件

$ φ(x_0, y_0) = 0 $

假设在 $(x_0, y_0)$ 某一邻域内 $f, φ$ 都有一阶连续偏导数，且

$ φ_y (x_0, y_0) != 0 $

由隐函数存在定理 1，可设

$ y = y(x) $

则

$ z = f(x, y(x)) $

在 $x_0$ 处取极值，所以

$ at(dd(z, x), (x_0, y_0)) &= 0 \
  f_x (x_0, y_0) + f_y (x_0, y_0) at(dd(y, x), (x_0, y_0)) &= 0
$

由隐函数求导，可得

$ dd(y, x) = - φ_x / φ_y $

代入得

$ f_x (x_0, y_0) - f_y (x_0, y_0) (φ_x (x_0, y_0)) / (φ_y (x_0, y_0)) = 0 $

令拉格朗日乘数

$ λ = - (f_y (x_0, y_0)) / (φ_y (x_0, y_0)) $

则有

$ f_x (x_0, y_0) + λ φ_x (x_0, y_0) = 0 $

同理

$ f_y (x_0, y_0) + λ φ_y (x_0, y_0) = 0 $

总结 $(x_0, y_0)$ 成为极值点的必要条件：

$ cases(
    φ(x_0, y_0) &= 0 \
    f_x (x_0, y_0) + λ φ_x (x_0, y_0) &= 0 \
    f_y (x_0, y_0) + λ φ_y (x_0, y_0) &= 0
  )
$

设拉格朗日函数

$ L(x, y) = f(x, y) + λ φ(x, y) $ 

则条件化为

$ cases(
    φ(x_0, y_0) &= 0 \
    L_x (x_0, y_0) &= 0 \
    L_y (x_0, y_0) &= 0
  )
$

这方程组的解就是满足条件的极值点