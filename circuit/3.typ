#set page(margin: 1cm, paper: "iso-b5", numbering: "1")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
  #block(width: 100%, inset: 0em, [
      #set align(center)
      #el
  ])
]

#import "../typst/basic.typ": *
#let jj = $upright(j)$

== 6.2 单管放大电路的低频响应

$ A(f) = A_"sM" dot 1 / (1 - jj f_"L" / f) $

=== 6.2.1 共源放大电路的低频响应

$ f &= 1/(2 π τ) \
  τ &= R C \
  f_"L1" &= 1/(2 π (R_"si" + R_"g") C_"b1") \
  f_"L2" &= (g_"m")/(2 π C_"s") \
  f_"L3" &= 1/(2 π (R_"L" + R_"d") C_"b2") \
  A_(v"sL") &= A_(v"sM") dot 1 / (1 - jj f_"L2" / f)
$

=== 6.2.2 共射放大电路的低频响应

$ f_"L" &approx sum_(i=1)^n f_("L"i) \
  &= 1/(2 π) sum_(i=1)^n 1/τ_i
$

== 6.3 单管放大电路的高频响应

=== 6.3.1 三极管的高频小信号模型

==== 1. MOS 管的高频小信号模型

==== 2. BJT 的高频小信号模型

=== 6.3.2 共源放大电路的高频响应

=== 6.3.3 共射放大电路的高频响应

$ 1/f_"H" &approx sum_(i=1)^n 1/f_("H"i) \
  f_"H" &approx 1/(2 π sum_(i=1)^n τ_i)
$

=== 6.3.4 共栅和共基放大电路的高频响应

增益带宽积 $ B W = |A_(v"sM") dot f_H| approx "const" $

