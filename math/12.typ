#set page(margin: 1cm, paper: "iso-b5")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
    #block(width: 100%, inset: 0em, [
        #set align(center)
        #el
    ])
]

#import "../typst/basic.typ": *

#let nsumto(target) = $sum_(n = 0)^target$
#let nsuminf = nsumto(math.oo)

= 12 无穷级数

== 12.1 常数项级数的概念和性质

=== 收敛级数性质 1

$ nsuminf k u_n = k nsuminf u_n $

=== 收敛级数性质 2

$ nsuminf (u_n + v_n) = nsuminf u_n + nsuminf v_n $

=== 收敛级数性质 3

级数中增删改有限项不影响敛散性

=== 收敛级数性质 4

收敛无穷级数的求和有结合性

=== 收敛级数必要条件

若 $nsuminf u_n$ 收敛，则

$ lim_(n -> oo) u_n = 0 $

=== 柯西审敛法

级数 $nsuminf u_n$ 收敛当且仅当

$ Forall(ε > 0) Exists(N in NN)
  Forall(n > N) Forall(p > n)
  |sum_(n = 1)^p u_n| < ε
$

== 12.2 常数项级数的审敛法

=== 比值审敛法（达朗贝尔审敛法）

对级数 $nsuminf u_n$

$ lim_(n -> oo) |u_(n + 1) / u_n| = ρ $

=== 根值审敛法（柯西审敛法）

对正项级数 $nsuminf u_n$

$ lim_(n -> oo) root(n, u_n) = ρ $

== 12.3 幂级数

=== 函数项级数

- 函数项级数：

  $ nsumto(oo) u_n (x)
  $

- 函数项级数的和函数：

  $ s : I -> RR \
    s(x) := nsumto(oo) u_n (x)
  $

  和函数的定义域 $I$ 就是级数的收敛域

- 函数项级数前 $n$ 项和与和函数值的关系

  $ s_n(x) &:= nsumto(n) u_n (x) \
    s(x) &= lim_(n -> oo) s_n (x)
  $

=== 幂级数

- 幂级数：各项都是常数乘幂函数的函数项级数

  #let pows = $nsumto(oo) a_n x^n$
  $ pows $

- 幂级数一般形式：

  $ nsumto(oo) a_n (x - x_0)^n
  $

=== 幂级数的收敛域

- 阿贝尔（Abel）定理

  对级数 $nsumto(oo) a_n x^n$，若当 $x = x_0$ 时收敛，则当 $|x| < |x_0|$ 时收敛；若当 $x = x_0$ 时发散，则当 $|x| > |x_0|$ 时发散.

- $=>$ 存在唯一的 $R >= 0$ 使得对任意 $|x| < R$ 级数收敛，对任意 $|x| > R$ 级数发散，对任意 $|x| < R$ 级数收敛.

- $R$ 称为收敛半径，$(-R, R)$ 成为收敛区间，#text(blue, [ 而收敛域 $I supset.eq (-R, R)$ 还可能包含端点 ]).

- 收敛半径 $R$ 的计算

  $
    rho &:= lim_(n -> oo) lr(|a_(n + 1) / a_n|) \
    R &= cases(
      0 &quad rho = +oo \
      +oo &quad rho = 0 \
      1 / rho &quad "otherwise"
    )
  $

=== 幂级数性质

+ 幂级数 $pows$ 的和函数 $s(x)$ 在收敛域 $n$ 上连续.
+ 幂级数 $pows$ 的和函数 $s(x)$ 在收敛域 $n$ 上可积：

  $ integral_0^x s(t) dif t
    &= integral_0^x nsumto(oo) a_n t^n dif t \
    &= nsumto(oo) integral_0^x a_n t^n dif t \
    &= nsumto(oo) a_n / (n + 1) x^(n + 1) \
  $

+ 幂级数 $pows$ 的和函数 $s(x)$ 在收敛域 $n$ 上可导：

  $ s'(x)
    &= (pows)' \
    &= nsumto(oo) (a_n x^n)' \
    &= nsumto(oo) n a_n x^(n - 1) \
  $

== 12.4 函数展开成幂级数


== 12.7 傅立叶级数

=== 傅立叶级数

#let int = $integral_(-pi)^pi$
#let prod(l, r) = $angle.l #l, #r angle.r$

$f(x)$ 是周期为 $2l$ 的函数，则其以 $2l$ 为周期的傅立叶级数展开为 $f(x) ~ S_oo (f)(x)$：

$ S_n (f)(x) &:= nsumto(n) a_k cos((k pi x) / l) + b_k sin((k pi x) / l) \
  a_k &= 1 / l int f(x) cos((k pi x) / l) dif x \
  b_k &= 1 / l int f(x) sin((k pi x) / l) dif x \
  S_oo (f)(x) &:= lim_(n -> oo) S_n (f)(x) \ 
$

其中 $S_n (f)(x)$ 是傅立叶级数的部分和，$a_k, b_k$ 称为傅立叶系数.

=== 三角函数系

- 设 $F_l$ 是周期为 $2l$ 的函数集合，定义向量空间
  $ forall f, g &in F. \
    prod(f, g) &:= int f(x) g(x) dif x \
    ||f|| &:= prod(f, f)^(1/2) \
  $

- 在上述向量空间中，三角函数系
  $ { cos(n omega x), sin(n omega x) thick (x in [-pi, pi]) | n in NN, omega in RR } $
  是正交基（用积化和差可以验证）

=== 狄利克雷收敛定理

若 $f(x) in F_l$ 在 $[-l, l]$ 上满足：

+ 至多有有限个一类间断点；
+ 只有有限个极值点.

则 $f(x)$ 的傅立叶级数收敛：

$ S_oo (f)(x) &= cases(
  f(x) &quad x in C_f \
  1/2 [f(-l^+) + f(l^-)] &quad x = plus.minus l \
  1/2 [f(x^+) + f(x^-)] &quad "otherwise"
) 
$