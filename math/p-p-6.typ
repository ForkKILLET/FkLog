#set page(margin: 1cm, paper: "iso-b5")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
  #block(width: 100%, inset: 0em, [
    #set align(center)
    #el
  ])
]

#import "@preview/cetz:0.4.2": canvas
#import "@preview/cetz-plot:0.1.2": plot
#import "../typst/basic.typ": *
#import "../typst/plotx.typ"

#let plot-size = (2.5, 2.5)
#let otherwise = [其它]

= 概率统计 作业 6

= 第 3 章

10. 设随机变量 $(X, Y)$ 的密度函数为

  $ f(x, y) = cases(
      1 &quad |y| < x\, 0 < x < 1 \
      0 &quad otherwise
    )
  $

  求条件概率密度函数 $f_(X|Y) (x|y)$ 和 $f_(Y|X) (y|x)$.

  *解：*

  $ f_X (x)
    &= int_(-oo)^(+oo) f(x, v) dif v \
    &= cases(
      2x &quad 0 < x < 1 \
      0 &quad otherwise
    ) \

    f_Y (y)
    &= int_(-oo)^(+oo) f(u, y) dif u \
    &= cases(
      1 - |y| &quad |y| < 1 \
      0 &quad otherwise
    ) \
  
    f_(X|Y) (x|y)
    &= f(x, y) / (f_Y (y)) \
    &= cases(
      1 / (1 - |y|) &quad |y| < x < 1 \
      0 &quad otherwise
    ) \
    
    f_(Y|X) (y|x)
    &= f(x, y) / (f_X (x)) \
    &= cases(
      1 / (2x) &quad |y| < x < 1 \
      0 &quad otherwise
    )
  $

11. 设随机变量 $(X, Y)$ 的密度函数为

  $ f(x, y) = cases(
      21/4 x^2 y &quad x^2 <= y <= 1 \
      0 &quad otherwise
    )
  $

  求条件概率密度函数 $f_(Y|X) (y|x)$ 以及概率 $P(Y >= 3/4 | X = 1/2)$.

  *解：*

  $ f_X (x) thick (|x| <= 1)
    &= int_(-oo)^(+oo) f(x, v) dif v \
    &= int_(x^2)^1 21/4 x^2 v dif v \
    &= [21/8 x^2 v^2]_(x^2)^1 \
    &= 21/8 x^2 (1 - x^4) \
    
    f_(Y|X) (y|x) thick (|x| <= 1)
    &= f(x, y) / (f_X (x)) \
    &= (21/4 x^2 y) / (21/8 x^2 (1 - x^4)) \
    &= (2y) / (1 - x^4) \

    f_(Y|X) (y|x)
    &= cases(
      (2y) / (1 - x^4) &quad x^2 <= y <= 1 \
      0 &quad otherwise
    ) \

    P(Y >= 3/4 | X = 1/2)
    &= 1 - F_(Y|X) (3/4 mid(|) 1/2) \
    &= 1 - int_(-oo)^(3/4) f_(Y|X) (v mid(|) 1/2) dif v \
    &= 1 - int_(1/4)^(3/4) (2v) / (1 - (1/2)^4) dif v \
    &= 1 - [16/15 v^2]_(1/4)^(3/4) \
    &= 1 - 8/15 = 7/15
  $

12. 设随机变量 $(X, Y)$ 具有分布函数

  $ F(x, y) = cases(
      (1 - ee^(-α x)) y &quad x >= 0\, 0 <= y <= 1 \
      (1 - ee^(-α x)) &quad x >= 0\, y > 1 \
      0 &quad otherwise
    ) &quad (α > 0)
  $

  问 $X$ 与 $Y$ 是否相互独立？

  *解：*

  $ F_X (x)
    &= F(x, +oo) \
    &= cases(
      1 - ee^(-α x) &quad x >= 0 \
      0 &quad otherwise
    )
  $

  $ F_Y (y)
    &= F(+oo, y) \
    &= cases(
      y &quad 0 <= y <= 1 \
      1 &quad y > 1 \
      0 &quad otherwise
    ) \

    F_X (x) F_Y (y)
    &= cases(
      (1 - ee^(-α x)) y &quad x >= 0\, 0 <= y <= 1 \
      (1 - ee^(-α x)) &quad x >= 0\, y > 1 \
      0 &quad otherwise
    ) \
    &= F(x, y)
  $

  所以 $X$ 与 $Y$ 相互独立.

13. 设随机变量 $(X, Y)$ 的密度函数为

  $ f(x, y) = cases(
      A x y^2 &quad 0 < x < 1\, 0 < y < 1 \
      0 &quad otherwise
    )
  $

  (1) 求常数 $A$；

  *解：*

  $ A int_0^1 x dif x int_0^1 y^2 dif y &= 1 \
    A [1/2 x^2]_0^1 [1/3 y^3]_0^1 &= 1 \
    A &= 6
  $

  (2) 证明 $X$ 与 $Y$ 相互独立.

  *证明：*

  $ f_X (x)
    &= int_0^1 A x v^2 dif v \
    &= cases(
      1/3 A x &quad 0 < x < 1 \
      0 &quad otherwise
    ) \

    f_Y (y)
    &= int_0^1 A u y^2 dif u \
    &= cases(
      1/2 A y^2 &quad 0 < y < 1 \
      0 &quad otherwise
    ) \

    f_X (x) f_Y (y)
    &= cases(
      (1/3 A x) (1/2 A y^2) = 6 x y^2 &quad 0 < x < 1\, 0 < y < 1 \
      0 &quad otherwise
    ) \
    &= f(x, y)
  $

  #align(left, $qed$)  

17. 设随机变量 $(X, Y)$ 的密度函数为

  $ f(x, y) = cases(
      2 - x - y &quad 0 < x < 1\, 0 < y < 1 \
      0 &quad otherwise
    )
  $

  求：

  (1) $P(X > 2Y)$

  *解：*

  #{
    align(center, canvas({
      plot.plot(
        size: plot-size,
        x-tick-step: none,
        y-tick-step: none,
        x-label: $x$,
        y-label: $y$,
        axis-style: "school-book",
        {
          let y0(x) = 0
          let y1(x) = 1/2 * x
          plot.add-hline(1, min: 0, max: 1, style: (stroke: gray))
          plot.add-vline(1, min: 0, max: 1, style: (stroke: gray))
          plot.add-vline(1, min: 0, max: 1/2, style: (stroke: black))
          plot.add-fill-between(y0, y1, domain: (0, 1), style: (fill: blue, stroke: black))
        }
      )
    }))
  }

  $ P(X > 2Y)
    &= int_0^1 int_0^(x/2) (2 - x - y) dif y dif x \
    &= int_0^1 [-1/2 y^2 + (2 - x)y]_0^(x/2) dif x \
    &= int_0^1 (-5/8 x^2 + x) dif x \
    &= [-5/24 x^3 + 1/2 x^2]_0^1 \
    &= 7/24
  $

  (2) $Z = X + Y$ 的密度函数 $f_Z (z)$.

  *解：*

  $ f_Z (z)
    &= int_(-oo)^(+oo) f(x, z - x) dif x \

    f(x, z - x)
    &= cases(
      2 - x - (z - x) = 2 - z &quad 0 < x < 1\, 0 < z - x < 1 \
      0 &quad otherwise
    )
  $

  #{
    align(center, grid(
      columns: 2,
      column-gutter: 5pt,

      canvas({
        plot.plot(
          size: (2.5, 2.5),
          x-tick-step: none,
          y-tick-step: none,
          x-label: $x$,
          y-label: $z$,
          axis-style: "school-book",
          {
            let y0(x) = x
            let y1(x) = x + 1
            plot.add-hline(1, min: 0, max: 1, style: (stroke: gray))
            plot.add-vline(1, min: 0, max: 1, style: (stroke: gray))
            plot.add-vline(1, min: 1, max: 2, style: (stroke: black))
            plot.add-fill-between(y0, y1, domain: (0, 1), style: (fill: blue, stroke: black))
          }
        )
      }),
   
      canvas({
        plot.plot(
          size: plot-size,
          x-tick-step: none,
          y-tick-step: none,
          x-label: $x$,
          y-label: $z - x$,
          axis-style: "school-book",
          {
            let y0(x) = x
            let y1(x) = 1
            plot.add-hline(1, min: 0, max: 1, style: (stroke: gray))
            plot.add-vline(1, min: 0, max: 1, style: (stroke: gray))
            plot.add-fill-between(y0, y1, domain: (0, 1), style: (fill: blue, stroke: black))
          }
        )
      }),
    ))
  }

  $ f_Z (z) thick (0 < z < 1)
    &=int_0^z (2 - z) dif x \
    &= (2 - z) z \

    f_Z (z) thick (1 <= z < 2)
    &= int_(z - 1)^1 (2 - z) dif x \
    &= (2 - z) (1 - (z - 1)) \
    &= (2 - z)^2 \

    f_Z (z) thick (z >= 2) &= 0 \

    f_Z (z) &= cases(
      (2 - z) z &quad 0 < z < 1 \
      (2 - z)^2 &quad 1 <= z < 2 \
      0 &quad otherwise
    )
  $

19. 设随机变量 $X$、$Y$ 相互独立，其密度函数分别为

  $ f_X (x) = cases(
      1 &quad 0 <= x <= 1 \  
      0 &quad otherwise
    ), quad
    f_Y (y) = cases(
      ee^(-y) &quad y >= 0 \
      0 &quad otherwise
    )
  $

  求随机变量 $Z = X + Y$ 的密度函数.

  *解：*

  #{
    align(center, canvas({
      plot.plot(
        size: (2.5, 2.5),
        x-tick-step: none,
        y-tick-step: none,
        x-label: $y$,
        y-label: $z$,
        axis-style: "school-book",
        {
          let y0(x) = x
          let y1(x) = calc.min(x + 1, 2)
          let y1t(x) = x + 1
          plot.add-fill-between(y0, y1, domain: (0, 2), style: (fill: blue, stroke: none))
          plot.add(y0, domain: (0, 2), style: (stroke: black))
          plot.add(y1t, domain: (0, 1), style: (stroke: black))
        }
      )
    }))
  }

  因为 $X$、$Y$ 独立，所以

  $ f_Z (z)
    &= int_(-oo)^(+oo) f_X (z - y) f_Y (y) dif y \

    f_Z (z) thick (0 <= z < 1)
    &= int_0^z 1 dot ee^(-y) dif y \
    &= [-ee^(-y)]_0^z \
    &= 1 - ee^(-z) \

    f_Z (z) thick (z >= 1)
    &= int_(z - 1)^z 1 dot ee^(-y) dif y \
    &= [-ee^(-y)]_(z - 1)^z \
    &= ee^(1 - z) - ee^(-z) \
    &= (ee - 1) ee^(-z) \

    f_Z (z) thick (z < 0) &= 0 \
  $

  $ f_Z (z) &= cases(
      1 - ee^(-z) &quad 0 <= z < 1 \
      (ee - 1) ee^(-z) &quad z >= 1 \
      0 &quad otherwise
    )
  $

20. 设随机变量 $X$、$Y$ 相互独立，分别服从参数为 $λ_1$、$λ_2$ 的指数分布，求 $Z = X/Y$ 的密度函数.

  *解：*

  $ f_X (x) &= cases(
      λ_1 ee^(-λ_1 x) &quad x >= 0 \
      0 &quad otherwise
    ) \
    f_Y (y) &= cases(
      λ_2 ee^(-λ_2 y) &quad y >= 0 \
      0 &quad otherwise
    )
  $

  因为 $X$、$Y$ 独立，所以

  $ f_Z (z) thick (z > 0)
    &= int_(-oo)^(+oo) f_X (y z) f_Y (y) |y| dif y \
    &= int_0^(+oo) (λ_1 ee^(-λ_1 y z)) (λ_2 ee^(-λ_2 y)) y dif y \
    &= λ_1 λ_2 int_0^(+oo)  ee^(-(λ_1 z + λ_2) y) y dif y \
    &= λ_1 λ_2 [(-1 / (λ_1 z + λ_2)) (y + 1 / (λ_1 z + λ_2)) ee^(-(λ_1 z + λ_2) y)]_0^(+oo) \
    &= (λ_1 λ_2) / (λ_1 z + λ_2)^2 \

    f_Z (z)
    &= cases(
      (λ_1 λ_2) / (λ_1 z + λ_2)^2 &quad z > 0 \
      0 &quad otherwise
    )
  $

22. 设随机变量 $X$ 在区间 $(0, 1)$ 上服从均匀分布，在 $X = x thick (0 < x < 1)$ 的条件下，随机变量 $Y$ 在区间 $(0, x)$ 上服从均匀分布，求：

  (1) $(X, Y)$ 的概率密度函数 $f(x, y)$；

  *解：*

  由题意

  $ f_X (x)
    &= cases(
      1 &quad 0 < x < 1 \
      0 &quad otherwise
    ) \

    f_(Y|X) (y|x)
    &= cases(
      1 / x &quad 0 < y < x \
      0 &quad otherwise
    )
  $

  因为

  $ f_(Y|X) (y|x) = (f(x, y)) / (f_X (x)) $

  所以

  $ f(x, y)
    &= f_(Y|X) (y|x) dot f_X (x) \
    &= cases(
      1 / x &quad 0 < y < x < 1 \
      0 &quad otherwise
    )
    
  $

  (2) $Y$ 的密度函数；

  *解：*

  $ f_Y (y)
    &= int_(-oo)^(+oo) f_(Y|X) (y|u) f_X (u) dif u \
    &= int_y^1 1/u dot 1 dif u \
    &= -ln y \
  $

  (3) 概率 $P(X + Y > 1)$.

  *解：*

  #{
    align(center, canvas({
      plot.plot(
        size: (2.5, 2.5),
        x-tick-step: none,
        y-tick-step: none,
        x-label: $x$,
        y-label: $y$,
        axis-style: "school-book",
        {
          let y0(x) = 1 - x
          let y1(x) = x
          plot.add-fill-between(y0, y1, domain: (1/2, 1), style: (fill: blue, stroke: black))
          plot.add(y0, domain: (0, 1), style: (stroke: black))
          plot.add(y1, domain: (0, 1), style: (stroke: black))
          plot.add-vline(1, min: 0, max: 1, style: (stroke: black))
        }
      )
    }))
  }

  $ P(X + Y > 1)
    &= int_(1 slash 2)^1 dif x int_(1 - x)^x 1/x dif y \
    &= int_(1 slash 2)^1 1/x (x - (1 - x)) dif x \
    &= int_(1 slash 2)^1 (2 - 1/x) dif x \
    &= [2x - ln x]_(1 slash 2)^1 \
    &= (2 - 0) - (1 + ln 2) = 1 - ln 2
  $

2025.10.23