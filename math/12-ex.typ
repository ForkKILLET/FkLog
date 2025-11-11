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

= 12 无穷级数

#let nsum0(target) = $sum_(n = 0)^#target$
#let nsumto(target) = $sum_(n = 1)^#target$
#let nsum0 = nsum0(math.oo)
#let nsum = nsumto(math.oo)
#let nliminf = $lim_(n -> oo)$

== 总习题

3. 判定级数的收敛性

(1) $nsum = 1 / (n root(n, n))$

  $ nliminf 1 / (n root(n, n)) / (1 / n)
    = nliminf 1 / root(n, n) = 1
  $

  级数 $nsum 1/n$ 发散，所以原级数也发散

(3) $nsum (n cos^2 (n π) / 3) / (2^n)$

  $ (n cos^2 (n π) / 3) / (2^n) <= n / 2^n := v_n \

    nliminf v_(n + 1) / v_n
    = nliminf ((n + 1) 2^n) / (n 2^(n + 1)) = 1/2 < 1 \
  $

  所以 $nsum v_n$ 收敛，从而原级数收敛

(5) $nsum a^n / n^s quad (a > 0, s > 0)$

$ u_n := a^n / n^s \
  nliminf u_(n + 1) / u_n
  &= (a^(n + 1) n^s) / (a^n (n + 1)^s) \
  &= a nliminf ((n + 1) / n)^s \
  &= a
$


所以，$a < 1$ 时原级数收敛，$a > 1$ 时原级数发散

当 $a = 1$ 时

$ u_n = 1 / n^s $

所以 $s <= 1$ 时原级数发散，$s > 1$ 时原级数收敛


6. 讨论下列级数的条件收敛性和绝对收敛性

(1) $nsum (-1)^n 1 / n^p$

- 当 $p > 0$ 时，由莱布尼兹定理，原级数收敛

  - 当 $0 < p <= 1$ 时

    $nsum 1 / n^p$ 发散，所以原级数条件收敛

  - 当 $p > 1$ 时，

    $nsum 1 / n^p$ 收敛，所以原级数绝对收敛

- 当 $p <= 0$ 时

  因为 $nliminf 1 / n^p = oo$，所以原级数发散

(2) $nsum (-1)^(n + 1) display((sin π / (n + 1)) / π^(n + 1))$

$ u_n
  &:= (-1)^(n + 1) (sin π / (n + 1)) / π^(n + 1) \
  
  |u_n|
  &= (sin π / (n + 1)) / π^(n + 1) \
  &< (1 / π)^(n + 1) \
$

因为 $1/π < 1$，所以 $nsum (1/π)^(n + 1)$ 收敛，所以 $|u_n|$ 收敛，所以原级数绝对收敛

8. 求下列幂级数的收敛区间

(1) $nsum (3^n + 5^n) / n x^n $

$ ρ
  &= nliminf ((3^(n + 1) + 5^(n + 1)) / (n + 1)) / ((3^n + 5^n) / n) \
  &= nliminf n / (n + 1) dot (3^(n + 1) + 5^(n + 1)) / (3^n + 5^n) \
  &= nliminf (3 dot  (3/5)^(n + 1) + 5) / ((3/5)^n + 1) \
  &= 5
$

故收敛半径 $R = 1/ρ = 1/5$，收敛区间为 $(-1/5, 1/5)$

(2) $nsum (1 + 1/n)^n^2 x^n$

$ ρ
  &= nliminf ((1 + 1/(n + 1))^(n + 1)^2) / ((1 + 1/n)^n^2) \
  &= nliminf ((n + 2) / (n + 1))^(n^2 + 2n + 1) / ((n + 1) / n)^n^2 \
  &= nliminf ((n + 2) / (n + 1))^(2n + 1) / ((n + 1)^2 / n(n + 2))^n^2  \
  &= nliminf (1 + 1 / (n + 1))^(2n + 1) / (1 + 1 / n(n + 2))^n^2  \
  &= e^2 / e \
  &= e
$

故收敛半径 $R = 1/ρ = 1/e$，收敛区间为 $(-1/e, 1/e)$

9. 求下列幂级数的和函数

(1) $nsum (2n - 1) / 2^n x^(2(n - 1))$

  $ u_n &:= (2n - 1) / 2^n x^(2(n - 1)) \
    nliminf u_(n + 1) / u_n
    &= nliminf ((2n + 1) 2^n) / ((2n - 1) 2^(n + 1)) x^2 \
    &= 1/2 x^2
  $

  当 $1/2 x^2 < 1 <=> x in (-sqrt(2), sqrt(2))$ 时，原级数收敛

  当 $1/2 x^2 >= 1$ 时，原级数发散

  所以原级数的收敛域是 $(-sqrt(2), sqrt(2))$

  设和函数为 $s(x) quad (x in (-sqrt(2), sqrt(2)))$，那么

  $ s(x) &= nsum (2n - 1) / 2^n x^(2(n - 1)) \

    int s(x) dif x
    &= nsum 1 / (2^n) x^(2n - 1) \
    &= 1/x nsum (x^2 / 2)^n \
    &= 1/x x^2/2 nsum0 (x^2 / 2)^n \
    &= x/2 1 / (1 - x^2 / 2) \
    &= x / (2 - x^2) \

    s(x)
    &= dd(x) (x / (2 - x^2)) \
    &= ((2 - x^2) - x(-2x)) / (2 - x^2)^2 \
    &= (x^2 + 2)/(x^2 - 2)^2
  $

#pagebreak()

(3) $nsum n (x - 1)^n$

  $ t &:= x - 1 \

    s(t) = nsum n(x - 1)^n
    &= nsum n t^n \
    &= t nsum n t^(n - 1) \

    int nsum n t^(n - 1) dif t
    &= nsum t^n \
    &= t / (1 - t) \
    
    nsum n t^(n - 1) dif t
    &= dd(t) (t / (1 - t)) \
    &= 1 / (t - 1)^2 \

    s(t) &= t / (t - 1)^2 \

    s(x) &= (x- 1) / (x - 2)^2
  $

  $nsum n t^n$ 的收敛半径
  
  $ R = nliminf n / (n + 1) = 1 $

  则其收敛域为 $(-1, 1)$

  即原级数的收敛域为 $(0, 2)$

11. 将下列函数展开为 $x$ 的幂级数

(1) $ln (x + sqrt(x^2 + 1))$

  $ dd(x) (ln (x + sqrt(x^2 + 1)))
    &= (1 + (2x) / (2sqrt(x^2 + 1))) dot (x + sqrt(x^2 + 1))^(-1) \
    &=1 / sqrt(x^2 + 1) \
    &= (x^2 + 1)^(-1/2) \
    &= nsum0 binom(-1/2, n) x^(2n) \

    ln (x + sqrt(x^2 + 1))
    &= int nsum0 binom(-1/2, n) x^(2n) dif x \
    &= nsum0 binom(-1/2, n) x^(2n + 1) / (2n + 1) \
  $
