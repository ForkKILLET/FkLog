#set page(margin: 1cm, paper: "iso-b5", numbering: "1")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
    #block(width: 100%, inset: 0em, [
        #set align(center)
        #el
    ])
]

#import "../typst/mat.typ": dcases
#import "../typst/dif.typ": pp

+ $ 1/a + 2/b &= 1 \
    a &= 1/(1 - 2/b) = b/(b - 2) \
    a^2 + b^2 = f(b) &:= b^2/(b - 2)^2 + b^2 \
    f'(b) &= (2b(b - 2)^2 - 2b^2(b - 2)) / (b - 2)^4 + 2b \
    &= - (4b) / (b - 2)^3 + 2b \

    f'(b) &= 0 \
    4 / (b - 2)^3 &= 2 quad (b > 0) \
    b_0 &= 2 + root(3, 2) \
  $
  
  $ f'(b_0) quad dcases(
      < 0 quad b < b_0 \
      > 0 quad b > b_0
    )
  $

  $ a^2 + b^2 >= f(b_0) $

+ $ cal(L)(a, b, λ) &:= a^2 + b^2 + λ(1/a + 2/b - 1) \
    pp(cal(L), a) &= 2a - λ/a^2 \
    pp(cal(L), b) &= 2b - (2λ)/b^2
  $

  $ dcases(
      2a - λ/a^2 &= 0 \
      2b - (2λ)/b^2 &= 0 \
      1/a + 2/b &= 1
    ) \
    dcases(
      λ &= 2a^3 = b^3 \
      1/a + 2/b &= 1
    )
  $
  
  $
    1/a + 2/(root(3, 2) a) &= 1 \
    a_0 &= 1 + root(3, 4) \
    a^2 + b^2 &>= a_0^2 + (root(3, 2)a_0)^2
  $