#set page(margin: 1cm, paper: "iso-b5")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
  #block(width: 100%, inset: 0em, [
    #set align(center)
    #el
  ])
]

#import "../typst/basic.typ": *

#let otherwise = [其它]

= 概率统计 作业 7

= 第 4 章

6. 设随机变量 $X$ 服从拉普拉斯分布，其密度函数为

  $ f(x) = 1/2 e^(-|x|) quad (-oo < x < +oo) $

  求 $X$ 的数学期望和方差.

  *解：*

  $ E(X)
    &= int_(-oo)^(+oo) x f(x) dif x \
    &= int_(-oo)^(+oo) x dot 1/2 e^(-|x|) dif x \
    &= 0 \

    E(X^2)
    &= int_0^(+oo) x^2 (f(x) + f(-x)) dif x \
    &= int_0^(+oo) x^2 e^(-x) dif x \
    &= [-(x^2 + 2x + 2) e^(-x)]_0^(+oo) \
    &= 2 \

    D(X)
    &= E(X^2) - E^2(X) \
    &= 2
  $

7. 设随机变量 $X$ 的概率分布为：

  $ P(X = k) = 1/(1 + a) (a/(1 + a))^k quad (k in NN, a > 0) $

  求 $E(X)$、$D(X)$.

  *解一：*

  设
  
  $ p = a/(1 + a) = p, 1 - p = thick 1/(1 + a) $

  则

  $ P(X = k) &= (1 - p) p^k \

    E(X)
    &= sum_(k=0)^(oo) k P(X = k) \
    &= (1 - p) sum_(k=0)^(oo) k p^k \
    
    sum_(k=0)^oo p^k &= 1/(1 - p) \
    sum_(k=0)^oo k p^(k-1) &= 1/(1 - p)^2 \
    sum_(k=0)^oo k p^k &= p/(1 - p)^2 \


    E(X)
    &= (1 - p) dot p/(1 - p)^2 \
    &= p / (1 - p) \
    &= a \
  
    D(X)
    &= E(X^2) - E^2(X) \
    &= sum_(k=0)^(oo) k^2 P(X = k) - a^2 \
    &= (1 - p) sum_(k=0)^(oo) k^2 p^k - a^2 \
  $

  $ sum_(k=0)^oo k p^(k-1) &= 1/(1 - p)^2 \
    sum_(k=0)^oo k(k-1) p^(k-2)
    &= sum_(k=0)^oo (k^2 - k) p^(k-2) \
    &= 1/p^2 (sum_(k=0)^oo k^2 p^k - sum_(k=0)^oo k p^k) \
    &= 2/(1 - p)^3 \

    sum_(k=0)^oo k^2 p^k
    &= (2p^2) / (1 - p)^3 + p/(1 - p)^2 \
    &= (p(p + 1)) / (1 - p)^3 \

    D(X) &= (1 - p) (p(p + 1)) / (1 - p)^3 - a^2 \
    &= a^2 + a
  $


  *解二：*

  设

  $ p = 1/(1 + a), thick 1 - p = a/(1 + a) $

  则

  $ P(X = k) &= p (1 - p)^k \

    P(X + 1 = k) &= p (1 - p)^(k-1) \

    X + 1 &~ G(p) \

    E(X + 1) &= 1/p \
    D(X + 1) &= (1 - p)/p^2 \

    E(X)
    &= E(X + 1) - 1 \
    &= 1/p - 1 \
    &= a \

    D(X)
    &= D(X + 1) \
    &= (1 - p) / p^2 \
    &= a (1 + a)
  $

8. 设随机变量 $X$ 服从参数为 $λ$ 的泊松分布，已知 $E[(X - 1)(X - 2)] = 1$，求 $λ$.

  *解：*

  $ E[(X - 1)(X - 2)]
    &= E(X^2 - 3X + 2) \
    &= E(X^2) - 3E(X) + 2 \
    &= 1 \

    X &~ P(λ) \
    E(X) = D(X) &= λ \

    E(X^2)
    &= D(X) + E^2(X) \
    &= λ + λ^2 \

    λ + λ^2 - 3λ + 2 &= 1 \
    λ^2 - 2λ + 1 &= 0 \
    λ &= 1
  $

2025.10.30