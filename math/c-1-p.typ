#set page(margin: 1cm, paper: "iso-b5", numbering: "1")
#set text(font: "Times New Roman", lang: "zh")
#show math.equation.where(block: true): el => [
  #block(width: 100%, inset: 0em, [
      #set align(center)
      #el
  ])
]

#import "../typst/basic.typ": *

*Ex. 1* Given $v(x, y) = e^x (y cos y + x sin y) + x + y$ is a harmonic function, find analytic function $f(z) = u + ii v$ satisfying $f(0) = 1$.

*Solution.*

$ v_x &= e^x (y cos y + x sin y + sin y) + 1 \
  v_y &= e^x (cos y - y sin y + x cos y) + 1 \

  u_x
  &= v_y \
  &= e^x (cos y - y sin y + x cos y) + 1 \
  
  u
  &= int [e^x (cos y - y sin y + x cos y) + 1] dif x \
  &= (cos y - y sin y) e^x + cos y (x - 1) e^x + x + g(y) \
  &= (x cos y - y sin y) e^x + x + g(y) \

  u_y
  &= -(x sin y + sin y + y cos y) e^x + g'(y) \
  &= -v_x \
  &= -(y cos y + x sin y + sin y) e^x - 1 \

  g'(y) &= -1 \

  g(y) &= -y + C \

  u &= (x cos y - y sin y) e^x + x - y + C \

  f(z)
  &= u + ii v \
  &= (x cos y - y sin y) e^x + x - y + C + ii [e^x (y cos y + x sin y) + x + y] \
  &= e^x (x cos y - y sin y + ii y cos y + ii x sin y) + x + ii x - y + ii y + C \
  &= e^x (x(ii sin y + cos y) + ii y(ii sin y + cos y)) + (1 + ii)(x + y) + C \
  &= e^x (x e^(ii y) + ii y e^(ii y)) + (1 + ii)(x + ii y) + C \
  &= e^(x + ii y) (x + ii y) + (1 + ii)(x + ii y) + C \
  &= e^z z + (1 + ii) z + C \

  f(0) &= 1 \
  C &= 1 \

  f(z) &= e^z z + (1 + ii) z + 1
$

#pagebreak()


*Ex. 2* Given $u + v = (x - y)(x^2 + 4 x y + y^2) - 2(x + y)$, find analytic function $f(z) = u + ii v$.

*Solution.*

$ (1 - ii) f &= (1 - ii)(u + ii v) = (u + v) + ii (v - u) \

  u + v
  &= x^3 + 3x^2 y - 3y^2 x - y^3 - 2x - 2y \

  (u + v)_x
  &= 3x^2 - 3y^2 + 6x y - 2 \
  (u + v)_y
  &= 3x^2 - 3y^2 - 6x y - 2 \
  
  (v - u)_x
  &= -(u + v)_y \
  &= -3x^2 + 3y^2 + 6x y + 2 \

  v - u
  &= int (-3x^2 + 3y^2 + 6x y + 2) dif x \
  &= -x^3 + 3y x^2 + 3y^2 x + 2x + g(y) \

  (v - u)_y
  &= 3x^2 + 6x y + g'(y) \
  &= (u + v)_x \
  &= 3x^2 - 3y^2 + 6x y - 2 \

  g'(y)
  &= - 3y^2 - 2 \

  g(y)
  &= int (-3y^2 - 2) dif y \
  &= -y^3 - 2y + C \

  v - u
  &= -x^3 + 3x^2 y + 3x y^2 - y^3 + 2 x - 2 y + C \

  u + v
  &= x^3 + 3x^2 y - 3x y^2 - y^3 - 2x - 2y \

  v
  &= (v - u + u + v) / 2 \
  &= 3x^2 y - y^3 - 2y + C/2 \

  u
  &= (u + v - v + u) / 2 \
  &= x^3 - 3x y^2 - 2 x - C/2 \

  f
  &= u + ii v \
  &= (x^3 -3x y^2 - 2 x - C/2) + ii (3x^2 y - y^3 - 2y + C/2) \
  &= x^3 - 3x y^2 + 3 ii x^2 y - ii y^3 - 2(x + ii y) + C/2 (ii - 1) \
  &= (x + ii y)^3  - 2(x + ii y) + C/2 (ii - 1) \
  &= z^3 - 2 z + C/2 (ii - 1) \
$

#pagebreak()

2025.11.06

#let ss = $sum_(n = 1)^oo$
#let ssk = $sum_(k = 1)^n$

#let li = $lim_(n -> oo)$

*Ex. 1* $ z_n = (1 + 1/n) ee^((π ii) / n) $

$ li z_n
  &= li (1 + 1/n) (cos (π / n) + ii sin (π / n)) \
  &= li cos (π / n) + ii li sin (π / n) \
  &= 1 + 0 ii = 1 \
$

*Ex. 2* $ z_n = n cos ii n $

$ li z_n
  &= oo
$

*Ex. 3* $ ss (1 + ii^(2n + 1)) / n $

$ S &= ss 1/n + ii ss (-1)^n / n $

$ ss 1/n #[diverges] => S #[diverges] $

*Ex. 4* $ ss (exp((n π ii) / 2)) / n^2 $

$ S = ss cos((n π) / 2) / n^2 + ii ss sin((n π) / 2) / n^2 $