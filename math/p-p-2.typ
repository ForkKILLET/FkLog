#set page(margin: 1cm, paper: "iso-b5")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
    #block(width: 100%, inset: 0em, [
        #set align(center)
        #el
    ])
]

#import "../typst/basic.typ": *

= 概率统计 作业 2

= 第 1 章

15. 甲袋中装有 $7$ 个红球，$3$ 个白球，$15$ 个黑球；乙袋中装有 $6$ 个红球，$10$ 个白球，$9$ 个黑球. 现从两个袋中各任取一个球，求两个球颜色相同的概率.

  解：甲、乙袋中球总数分别为 $7 + 3 + 15 = 25$ 个、$6 + 10 + 9 = 25$ 个.

  设事件 $P_1, P_2, P_3$ 为取出两个红球、白球、黑球的事件，则

  $ P
    &= P(P_1 + P_2 + P_3) \
    &= P(P_1) + P(P_2) + P(P_3) \
    &= 7/25 times 6/25 + 3/25 times 10/25 + 15/25 times 9/25 \
    &= 207/625
  $