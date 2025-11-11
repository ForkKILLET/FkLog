#set page(margin: 1cm, paper: "iso-b5")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
    #block(width: 100%, inset: 0em, [
        #set align(center)
        #el
    ])
]

#import "../typst/basic.typ": *

== 9.4 多元复合函数的求导法则

+ 设 $z = f(x^2 - y^2, x y) + g(y / x)$，其中 $f, g$ 有二阶连续偏导数，求 $pp(z, x), pp(z, x, y)$.

  解：

  设 $u = x^2 - y^2, v = x y$，则 $z = f(u, v) + g(y / x)$，那么

  $ pp(z, x)
    &= pp(f, u) pp(u, x) + pp(f, v) pp(v, x) + g'(y / x) dot pp(x) (y / x) \
    &= f_u dot 2x + f_v dot y + g'(y / x) (-y / x^2) \
    &= 2x f_u + y f_v - y / x^2 g'(y / x) \

    pp(z, x, y)
    &= pp(y) (pp(z, x)) \
    &= pp(y) (2x f_u) + pp(y) (y f_v) - pp(y) (y / x^2 g'(y / x)) \
    &= 2x (pp(f_u, u) pp(u, y) + pp(f_u, v) pp(v, y)) + (f_v + y (pp(f_v, u) pp(u, y) + pp(f_v, v) pp(v, y))) - (1 / x^2 g'(y / x) + y / x^2 g''(y / x) (1 / x)) \
    &= -4x y f_(u u) + 2x^2 f_(u v) + f_v - 2y^2 f_(u v) + x y f_(v v) - 1 / x^2 g'(y / x) - y / x^3 g''(y / x) \
    &= - 4x y f_(u u) + 2(x^2 - y^2) f_(u v) + f_v + x y f_(v v) - 1 / x^2 g'(y / x) - y / x^3 g''(y / x)
  $
