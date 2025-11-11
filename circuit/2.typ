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

= 模电

= 1 绪论

== 1.1 信号

$ x(t) $

== 1.2 信号的频谱

$ x(t) &= 1/(2π) int_(-oo)^(+oo) X(ω) e^(jj ω t) dif ω \
  X(ω) &= int_(-oo)^(+oo) x(t) e^(-jj ω t) dif t \
$

== 1.3 模拟信号和数字信号

== $star$ 1.4 放大电路模型

#pagebreak()

= 4 场效应三极管及其放大电路

== 4.1 金属-氧化物-半导体场效应三极管

=== 4.1.1 N 沟道增强型 MOSFET

==== 输出特性

$ i_"D" = at(f(v_"DS"), v_"GS" = "const") $

- 截止区：$v_"GS" < V_"TN"$

  $ i_"D" = 0 $

- 可变电阻区（线性区）：$v_"GS" >= V_"TN"$

  $ i_"D"
    &= K[2(v_"GS" - V_"TN") v_"DS"- v_"DS"^2] \
    &approx 2 K (v_"GS" - V_"TN") v_"DS" \

    r_"ds0"
    &= v_"DS" / i_"D" \
    &approx 1 / (2 K (v_"GS" - V_"TN"))
  $

- 恒流区（饱和区）：$v_"GS" > V_"TN" and v_"DS" >= v_"GS" - V_"TN"$

  $ i_"D"
    &= K (v_"GS" - V_"TN")^2 \
    &= I_"DO" (v_"GS" / V_"TN" - 1)^2 \

    I_"DO" &= K V_"TN"^2
  $

=== 4.1.2 N 沟道耗尽型 MOSFET

$ V_"TN" < 0 $

==== 输出特性

- 恒流区

  $ i_"D" = I_"DSS" (1 - v_"GS" / V_"TN")^2
  $

=== 4.1.3 P 沟道 MOSFET

=== 4.1.4 沟道效应

=== 4.1.5 MOSFET 的主要参数

==== 直流参数

- 阈值电压 $V_"TN", V_"TP"$

- 饱和漏电流 $I_"DO", I_"DSS"$

==== 交流参数

- 低频互导 $g_"m"$
