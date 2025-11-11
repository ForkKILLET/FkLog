#set page(margin: 1cm, paper: "iso-b5", numbering: "1")
#set text(font: "Times New Roman", lang: "zh")
#show math.equation.where(block: true): el => [
  #block(width: 100%, inset: 0em, [
      #set align(center)
      #el
  ])
]

#import "../typst/basic.typ": *

= C

= 1 Complex numbers

== 1.1 Complex number basic

=== 1.1.1 Complex number operations

- Exercise

  + $ (2 + 3 ii) / (2 - 3 ii)
      &= (2 + 3 ii)^2 / ((2 - 3 ii)(2 + 3 ii)) \
      &= (-5 + 12 ii) / 13 \
      &= -5/13 + 12/13 ii
    $

  + $ x + y ii = (2x - 1) + (2y + 1) ii => z = x + y ii = \
      cases(
        2x - 1 &= x,
        2y + 1 &= y
      ) \
      cases(
        x &= 1,
        y &= -1
      ) \
      z = x + y ii = 1 - ii
    $

  + $ (2 ii) / (sqrt(3) - ii) - 3 / (sqrt(3) ii - 1)
      &= (2 ii) / (sqrt(3) - ii) - (3 ii) / (- sqrt(3) - ii) \
      &= (2 ii) / (sqrt(3) - ii) + (3 ii) / (sqrt(3) + ii) \
      &= (2 ii (sqrt(3) + ii) + 3 ii (sqrt(3) - ii)) / ((sqrt(3) - ii)(sqrt(3) + ii)) \
      &= (1 + 5sqrt(3) ii) / 4
    $

  + $ z &= sqrt(2)/2 (1 - ii) => z^100 + z^50 + 1 = ? \
      z^2 &= 1/2 (- 2 ii) = - ii \
      z^100 + z^50 + 1 &= (z^2)^50 + (z^2)^25 + 1 \
      &= (- ii)^50 + (- ii)^25 + 1 \
      &= ii^50 - ii^25 + 1 \
      &= -1 - ii + 1 \
      &= - ii
    $

=== 1.1.2 Modulus and argument

- Modulus

  $ abs(z) = sqrt((Re z)^2 + (Im z)^2) = z dash(z) $

- Argument

  $ tan Arg z &= (Im z) / (Re z) \
    Arg z &= { arg z + 2 k π | k in ZZ } \
    Re z &= abs(z) cos Arg z \
    Im z &= abs(z) sin Arg z
  $

- Principal value of argument

  $ (exists! arg z) arg z &in Arg z union (-π, π] \
    and arg z &= dcases(
      arctan (Im z) / (Re z) &quad (z in "I", "IV") \
      arctan (Im z) / (Re z) + π &quad (z in "II") \
      arctan (Im z) / (Re z) + π &quad (z in "III")
    )
  $

== 1.2 Triangular form & Exponential form

- Triangular form

  $ z = abs(z) (cos Arg z + ii sin Arg z) $

- Exponential form

  $ z = abs(z) ee^(ii Arg z) $

- Exercise

  + $ z &= 1 / ii - (3 ii) / (1 - ii) \
      &= - ii - (3 ii (1 + ii)) / 2 \
      &= 3/2 - 5/2 ii \
      |z| &= sqrt((3/2)^2 + (-5/2)^2) = sqrt(34)/2 \
      arg z &= arctan (-5/3) \
      Arg z &= arctan (-5/3) + 2k π quad (k in ZZ)
    $

  + $ z &= -1 - sqrt(3) ii \
      arg z &= arctan sqrt(3) - π = -2/3π \
      |z| &= 2 \
      z &= 2[cos (-2/3π) + ii sin (-2/3π)] quad ("triangular form") \
      &= ee^(- 2/3 π ii) quad ("exponential form")
    $

== 1.3 Complex conjugates

=== 1.3.1 Definition

$ dash(z) := Re z - Im z $

=== 1.3.2 Conjugate operations

+ - $dash(z_1 pm z_2) &= dash(z_1) pm dash(z_2)$

  - $dash(z_1 z_2) &= dash(z_1) dot dash(z_2)$

    Proof:

    $ z_1 &:= a_1 + b_1 ii \
      z_2 &:= a_2 + b_2 ii \
      dash(z_1 z_2) &= dash((a_1 + b_1 ii)(a_2 + b_2 ii)) \
      &= dash((a_1a_2 - b_1b_2) + (a_1b_2 + a_2b_1) ii) \
      &= (a_1a_2 - b_1b_2) - (a_1b_2 + a_2b_1) ii \
      &= (a_1 - b_1 ii)(a_2 - b_2 ii) \
      &= dash(z_1) dot dash(z_2)
    $

  - $dash((z_1 slash z_2)) &= dash(z_1) slash dash(z_2) quad (z_2 != 0)$

+ $ dash(dash(z)) = z $

+ - $z dash(z) = |z|^2$
  
  - $z^(-1) = dash(z) slash |z|^2 quad (z != 0)$

+ $z + dash(z) = 2 Re z$

=== 1.3.3 Modulus operations

+ $|z_1 z_2| = |z_1| |z_2|$

+ - $|z_1 slash z_2| = |z_1| slash |z_2| quad (z_2 != 0)$
  - $|z^(-1)|= |z|^(-1) quad (z != 0)$

+ $Re z, Im z in [ -|z|, |z| ]$

+ $|z| = |dash(z)|$

+ $|z_1 pm z_2|^2 = |z_1|^2 + |z_2|^2 pm 2 Re(z_1 dash(z_2))$

+ #let skn = $sum_(k = 1)^n$
  #let sk = $sum_k$
  $abs(skn z_k w_k) <= sqrt(skn |z_k|^2) sqrt(skn |w_k|^2)$

  Proof:

  $ "RHS"^2
    &= (sk |z_k|^2) (sk |w_k|^2) \
    &= sk |z_k|^2 |w_k|^2 + sum_(j != k) |z_j|^2 |w_k|^2 \

    "LHS"^2
    &= (sk z_k w_k) (dash(sk z_k w_k)) \
    &= (sk z_k w_k) (sk dash(z_k) dash(w_k)) \
    &= sk z_k w_k dash(z_k) dash(w_k) + sum_(j != k) z_j w_j dash(z_k) dash(w_k) \
    &= sk |z_k|^2 |w_k|^2 + sum_(j != k) (z_j w_k dash(z_j) dash(w_k) + z_j w_j dash(z_k) dash(w_k) - z_j w_k dash(z_j) dash(w_k)) \
    &= sk |z_k|^2 |w_k|^2 + sum_(j != k) |z_j|^2|w_k|^2 + 1/2 sum_(j != k) [(z_j w_j dash(z_k) dash(w_k) + dash(z_j) dash(w_j) z_k w_k) - (z_j w_k dash(z_j) dash(w_k) + z_k w_j dash(z_k) dash(w_j))] \
    &= sk |z_k|^2 |w_k|^2 + sum_(j != k) |z_j|^2|w_k|^2 + 1/2 sum_(j != k) [z_j dash(w_k) (dash(z_k) w_j - dash(z_j) w_k) + z_k dash(w_j) (dash(z_j) w_k - dash(z_k) w_j)] \
    &= sk |z_k|^2 |w_k|^2 + sum_(j != k) |z_j|^2|w_k|^2 + 1/2 sum_(j != k) (z_j dash(w_k) - z_k dash(w_j)) (dash(z_k) w_j - dash(z_j) w_k) \
    &= sk |z_k|^2 |w_k|^2 + sum_(j != k) |z_j|^2|w_k|^2 - 1/2 sum_(j != k) |z_j dash(w_k) - z_k dash(w_j)|^2 \
    &<= "RHS"^2 \

    "LHS" &<= "RHS" qed
  $

=== Powers and roots

- Powers

  $ z &= r e^(ii θ)
    z^n &= r^n e^(ii n θ)
  $

- Roots

  $ ω^n &= z \
    ω_k &= r^(1/n) e^(ii (θ + 2 k π) / n) quad (k in [[0, n - 1 ]])
  $

- Exercise

  + Calculate $(1 - ii)^(1/3)$ .

    Solution.

    $ 1 - ii &= sqrt(2) e^(-π/4 ii) \
      ω_k &= 2^(1/6) e^(1/3 (-π/4 + 2 k π) ii) quad (k = 0, 1, 2) \
      &= 2^(1/6) e^((-π/12 + 2/3 k π) ii) \
      ω_0 &= 2^(1/6) e^(-π/12 ii) \
      ω_1 &= 2^(1/6) e^(7π/12 ii) \
      ω_2 &= 2^(1/6) e^(-9π/12 ii)
    $

  + Solve $w^4 + 16 = 0$.

    Solution.

    $ w^4 &= -16 = 16 e^(π ii) \
      w_k &= 2 e^(1/4 (π + 2 k π) ii) \
      w_0 &= 2 e^(π/4 ii) = sqrt(2) (1 + ii) \
      w_1 &= 2 e^(3π/4 ii) = sqrt(2) (- 1 + ii) \
      w_2 &= 2 e^(5π/4 ii) = sqrt(2) (- 1 - ii) \
      w_3 &= 2 e^(7π/4 ii) = sqrt(2) (1 - ii) \
    $

== 1.5 Riemann sphere and infinity

=== Extended complex plane

$ CC union {oo} $

=== infinity operation rules

$ z pm oo = oo pm z &= oo \
  z oo = oo z &= oo quad (z != 0) \
  z / oo &= 0 \
  oo / z &= oo quad (z != 0) \
$

#pagebreak()

= 2

== 2.1

=== 2.1.1

- Exercise

  + $(|z|^2)'$

    Solution.

    $ (|z|^2)'
      &= lim_(de z -> 0) (|z + de z|^2 - |z|^2) / (de z) \
      &= lim_(de z -> 0) ((z + de z)(dash(z) + dash(de z)) - z dash(z)) / (de z) \
      &= lim_(de z -> 0) (z dash(de z) + de z dash(z) + de z dash(de z)) / (de z) \
      &= lim_(de z -> 0) ((z dash(de z)) / (de z) + dash(z) + dash(de z)) \
    $

    When $z = 0$

    $ (|z|^2)' = lim_(de z -> 0) dash(de z) = 0 $

    When $z != 0$, let $de z = de x + ii k de x$

    $ dots $

  + $f(x + ii y) = dcases((x (x^2 + y^2) (y - ii x)) / (x^2 + y^4) &quad z != 0 \ 0 &quad z = 0)$

    $f'(0)$?

    Solution.

    $ f'(0)
      &= lim_(z -> 0) (f(z) - f(0)) / z \
      &= lim_(z -> 0) (x (x^2 + y^2) (y - ii x)) / ((x^2 + y^4) (x + ii y)) quad (z := x + ii y) \
      &= lim_(z -> 0) (x^4 (1 + k^2) (k - ii)) / (x^3 (1 + k^4 x^2) (1 + ii k)) quad (y := k x) \
      &= lim_(x -> 0) - (ii x (1 + k^2)) / ((1 + k^4 x^2)) \
    $

- $"differentiable" <=> "derivative"$

- $"differentiable" => "continuous"$

#pagebreak()

== 2.2 Necessary and sufficient condition of analytic functions

=== Theorem 2.2.1

=== Exercise

Prove $f(z) = z Re z$ derivative only at $z = 0$ and determine $f'(0)$.

Solution.

$ f(x + ii y)
  &= (x + ii y) x = x^2 + ii x y \
  &= u + ii v \
  u &= x^2 \
  v &= x y \
  u_x &= 2x \
  u_y &= 0 \
  v_x &= y \
  v_y &= x
$

$u_x, u_y, v_x, v_y$ are all continuous, so we check the C-R equations:

$ cases(u_x &= v_y, u_y &= - v_x) \
  cases(2x &= x, 0 &= - y) \
  cases(x &= 0, y &= 0)
$

Thus, $f(z)$ is derivative only at $z = 0$.

$ f'(0)
  &= lim_(z -> 0) f(z) / z \
  &= lim_(z -> 0) (z Re z) / z \
  &= lim_(z -> 0) Re z \
  &= 
$

#pagebreak()

= 3 Integral

$ int_C f(z) dif z = lim_(n -> +oo) sum_(k = 1)^n f(z_k) de s_k $

=== Theorem 3.1.1

$f(z) = u(x, y) + ii v(x, y), z = x+ ii y$ integrable on $C$ iff.

$ int_C f(z) dif z
  = int_c u dif x - v dif y + ii int_C v dif x + u dif y
  = int_C (u + ii v) (dif x + ii dif y)
$

=== Ex

$ oint_C (dif z) / ((z - z_0)^(n + 1)), quad C: |z - z_0| = r quad (r > 0, #[$C$ is ccw.]) $

*Solution.*

$ oint_C (dif z) / ((z - z_0)^(n + 1))
  &= int_0^(2 pi) (ii r e^(ii θ)) / (r^(n + 1) e^(ii (n + 1) θ)) dif θ \
  &= int_0^(2 pi) ii / (r^n e^(ii n θ)) dif θ \
  &= ii r^(-n) int_0^(2 π) e^(- ii n θ) dif θ \
  &= cases(
    2 π ii &quad n = 0,
    0 &quad n != 0
  )
$

=== Ex

Evaluate $ I = int_C 1 / (z - ii) dif z, quad C: #[segment from $0$ to $3 + 4ii$] $

#pagebreak()

== 3.4 Analytic and Harmonic functions

*Def.* $D subset CC$ is a domain. $φ: D -> RR$ is harmonic on $D$ if

  - $φ in C^2(D)$ (that is, $φ_x, φ_y, φ_(x x), φ_(y y)$ exist and continuous on $D$)

  - $φ$ satisfies Laplace equation $φ_(x x) + φ_(y y) = 0$

*Thm. 3.4.1* If $f(z) = u(x, y) + ii v(x, y)$ is analytic on domain $D$, then $u$ and $v$ are harmonic on $D$.

*Def.* If $u(x, y)$ and $v(x, y)$ are harmonic functions on domain $D$ and satisfy C-R equations, then $v$ is called the harmonic conjugate of $u$ on $D$.

- *Note* $v$ is the harmonic conjugate of $u$ $notimplies$ $u$ is the harmonic conjugate of $v$.

*Thm. 3.4.2* $f(z) = u(x, y) + ii v(x, y)$ is analytic on domain $D$ $<=>$ $u$ and $v$ are harmonic conjugates on $D$.

*Thm.* If $D$ is a simply connected domain, $u$ is harmonic on $D$, then there exists a harmonic function $v$ on $D$ such that $u$ and $v$ are harmonic conjugates on $D$ (that is, there exists an analytic function $f(z) = u + ii v$).

- *Proof*
  
  $ dif v &= pp(v, x) dif x + pp(v, y) dif y = -pp(u, y) dif x + pp(u, x) dif y \
    v &= 
  $

*Ex. 3.4.1*

+ Prove that $v = 2 x y$ is a harmonic function.
+ Find analytic function $f(z) = u + ii v$ satisfying $f(ii) = -1$.

- *Solution*

  + $ v_(x x) + v_(y y) = 0 + 0 = 0 $

  + $ pp(u, x) &= pp(v, y) = 2 x \
      u &= int 2 x dif x = x^2 + g(y) \
      pp(u, y) &= - pp(v, x) = - 2 y \
      g'(y) &= - 2 y \
      g(y) &= int - 2y = - y^2 + C \
      u &= x^2 - y^2 + C \
      f(z) &= (x^2 - y^2 + C) + ii (2 x y) = (x + ii y)^2 + C = z^2 + C \
      f(ii) &= -1 \
      C &= 0 \
      f(z) &= z^2
    $

#pagebreak()

*Ex. 3.4.2*

*Thm.* If $w = u(x, y) + ii v(x, y)$ is analytic on domain $D$, then $w(z) = g(z, dash(z)) = u(x, y) + ii v(x, y) quad (x + (z + dash(z)) / 2, thick z = (z - dash(z)) / (2 ii))$ is function of $z$.

*Ex.*

= 4 Complex series

== 4.1 Complex sequences

*Def. 4.1.1*

#let ss = $sum_(n = 1)^oo$
#let ssk = $sum_(k = 1)^n$

#let li = $lim_(n -> oo)$

$ {z_n} = {a_n + ii b_n} quad (n in NN) $

$ li z_n = z <=>
  Exists(z) Forall(ε > 0)
  Exists(N in NN) Forall(n > N) |z_n - z| < ε
$

*Thm. 4.1.1*

$ {z_n} = {a_n + ii b_n} quad (n in NN) $

$ li z_n = z = a + ii b <=> li a_n = a and li b_n = b $

*Def.*

$ S_n &:= sum_(k = 1)^n z_k \
  S &:= lim_(n -> oo) S_n
$

$ σ_n &:= ssk a_n \
  τ_n &:= ssk b_n \
  S_n &= σ_n + ii τ_n \
$

*Thm. 4.1.3* $ ss z_n #[converges] => li z_n = 0 $

*Thm. 4.1.4* $ ss z_n #[converges] <=> ss a_n #[converges] and ss b_n #[converges] $

#pagebreak()

== 4.2

*Thm. 4.2.1 (Abel theorem)* 