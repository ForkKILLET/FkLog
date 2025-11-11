#set page(margin: 1cm, paper: "iso-b5")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
    #block(width: 100%, inset: 0em, [
        #set align(center)
        #el
    ])
]

#import "../typst/basic.typ": *

= 概率统计 作业 1

= 第 1 章

5. 某城市消费者购物时除现金支付外，还有三种支付方式：支付宝 (A)、微信 (B)、银行卡 (C). 消费者中使用 A 的占 $45%$，使用 B 的占 $35%$，使用 C 的占 $30%$，同时使用 A 与 B 的占 $10%$，同时使用 A 与 C 的占 $8%$，同时使用 B 与 C 的占 $5%$，同时使用 A、B 与 C 的占 $3%$. 针对上述三种支付方式，求下列概率：

  (1) 只使用 A 的；

    $ P_1
      &= P(A - B - C) \
      &= P(A) - P(A B) - P(A C) + P(A B C) \
      &= 45% - 10% - 8% + 3% \
      &= 30%
    $

  (2) 只使用 A 与 B 的；

    $ P_2
      &= P(A B - C) \
      &= P(A B) - P(A B C) \
      &= 10% - 3% \
      &= 7%
    $

  (3) 只使用一种支付方式的；

    同 (1)，可求得

    $ P(B - A - C) &= 23% \
      P(C - A - B) &= 20% \
      P_3
      &= P(A - B - C) + P(B - A - C) + P(C - A - B) \
      &= 30% + 23% + 20% \
      &= 73%
    $

  (4) 恰好使用两种支付方式的；

    同 (2)，可求得

    $ P(A C - B) &= 5% \
      P(B C - A) &= 2% \
      P_4
      &= P(A B - C) + P(A C - B) + P(B C - A) \
      &= 7% + 5% + 2% \
      &= 14%
    $

  #colbreak()

  (5) 至少使用一种支付方式的；

    $ P_5
      &= P(A union B union C) \
      &= P_3 + P_4 + P(A B C) \
      &= 73% + 14% + 3% \
      &= 90%
    $

  (6) 三种支付方式都没有使用的.

    $ P_6
      &= P(dash(A union B union C)) \
      &= 1 - P(A union B union C) \
      &= 1 - 90% \
      &= 10%
    $

9. 设 $A$, $B$, $C$ 是随机事件，$A$ 与 $C$ 互不相容，$P(A B) = 1/2$，$P(C) = 1/3$，求 $P(A B | dash(C))$

  $ A C = emptyset
    &=> (A B) C = emptyset \
    &=> A B subset dash(C) \
    &=> P(A B dash(C)) = P(A B) = 1/2
  $

  $ P(dash(C)) &= 1 - P(C) = 1 - 1/3 = 2/3 \
    P(A B | dash(C)) &= P(A B dash(C)) / P(dash(C)) = (1 slash 2) / (2 slash 3) = 3/4
  $

2025.09.17