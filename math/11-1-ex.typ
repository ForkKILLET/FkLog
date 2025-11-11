#set page(margin: 1cm, paper: "iso-b5", numbering: "1")
#set text(font: "Microsoft YaHei", lang: "zh")
#show math.equation.where(block: true): el => [
    #block(width: 100%, inset: 0em, [
        #set align(center)
        #el
    ])
]

#import "../typst/int.typ": *
#import "../typst/logic.typ": *
#import "../typst/dif.typ": *
#import "../typst/vec.typ": ve
#import "../typst/mat.typ": *

= 11 曲线积分与曲面积分

== 11.1 对弧长的曲线积分

+ $oint_L (x^2 + y^2)^n dif s$，其中 $L$ 为圆周 $x = a cos t, y = a sin t quad (t in [0, 2π])$.

  $ I
    &= int_0^(2π) (x^2 + y^2)^n sqrt((- a sin t)^2 + (a cos t)^2) dif t \
    &= int_0^(2π) a^(2n) a dif t quad (a > 0) \
    &= 2π a^(2n + 1)
  $

+ $int_L (x + y) dif s$，其中 $L$ 为连接 $(1, 0), (0, 1)$ 两点的直线段.

  $ L &: y = 1 - x quad (x in [0, 1]) \
    I
    &= int_0^1 (x + y) sqrt(dif x^2 + dif x^2) \
    &= int_0^1 sqrt(2) dif x \
    &= sqrt(2)
  $

+ $oint_L x dif s$，其中 $L$ 为直线 $y = x$ 及抛物线 $y = x^2$ 所围成区域的边界.

  #align(center, image("./img/11-ex-1.png", width: 30%))

  设
  
  $ L_1 &: y = x quad (x in [0, 1]) \
    L_2 &: y = x^2 quad (x in [0, 1]) \
  $

  $ int_L_1 x dif s
    = int_0^1 x sqrt(2) dif x = [sqrt(2)/2 x^2]_0^1 = sqrt(2) / 2
  $
    
  $
    int_L_2 x dif s
    &= int_0^1 x sqrt((2x dif x)^2 + dif x^2) \
    &= int_0^1 x sqrt(4x^2 + 1) dif x \
    &= int_1^5 1/8 sqrt(t) dif t quad (t := 4x^2 + 1) \
    &= [2/3 dot 1/8 t^(3/2)]_1^5 \
    &= 1/12 (5sqrt(5) - 1) \

    oint_L x dif s
    &= int_L_1 x dif s + int_L_2 x dif s
    = 1/12 (5sqrt(5) - 1 + 6sqrt(2))
  $

+ $oint_L e^(sqrt(x^2 + y^2)) dif s$，其中 $L$ 为圆周 $x^2 + y^2 = a^2$，直线 $y = x$ 及 $x$ 轴在第一象限内围成扇形的边界.

  $ L_1 &: y = x quad (x in [0, sqrt(2)/2 a]) \
    L_2 &: x = a cos t, y = a sin t quad (t in [0, π/4]) \
    L_3 &: y = 0 quad (x in [0, a]) \

    int_L_1 e^(sqrt(x^2 + y^2)) dif s
    &= int_0^(sqrt(2)/2 a) e^(sqrt(2) x) sqrt(2) dif x \
    &= [e^(sqrt(2) x)]_0^(sqrt(2)/2 a) \
    &= e^a - 1 \

    int_L_2 e^(sqrt(x^2 + y^2)) dif s
    &= int_0^(π/4) e^a a dif t \
    &= π/4 e^a a \

    int_L_3 e^(sqrt(x^2 + y^2)) dif s
    &= int_0^a e^y dif y \
    &= e^a - 1 \

    oint_L e^(sqrt(x^2 + y^2)) dif s
    &= 2e^a -2 + π/4 e^a a \
    &= (2 + π/4 a) e^a - 2
  $

+ $int_Γ 1 / (x^2 + y^2 + z^2) dif s$，其中 $Γ$ 为曲线 $x = e^t cos t, y = e^t sin t, z = e^t$ 上相应于 $t$ 从 $0$ 变化到 $2$ 的弧段.

  $ I
    &= int_0^2 1 / (2 e^(2t)) e^t sqrt(3) dif t \
    &= int_0^2 sqrt(3)/2 e^(-t) dif t \
    &= [- sqrt(3)/2 e^(-t)]_0^2 \
    &= sqrt(3)/2 (1 - e^(-2))
  $

+ $int_Γ x^2 y z dif s$，其中 $Γ$ 为折线 $A B C D$，$A(0, 0, 0), B(0, 0, 2), C(1, 0, 2), D(1, 3, 2)$

  $ I
    &= (int_(A B) + int_(B C) + int_(C D)) x^2 y z dif s \
    &= 0 + 0 + int_0^3 1 dot y dot 2 dif y \
    &= [y^2]_0^3 \
    &= 9
  $

+ $int_L y^2 dif s$，其中 $L$ 为摆线的一拱 $x = a(t - sin t), y = a(1 - cos t) quad (t in [0, 2π])$

  $ I
    &= int_0^(2π) a^2 (1 - cos t)^2 a sqrt((1 - cos t)^2 + (sin t)^2) dif t \
    &= a^3 int_0^(2π) (1 - cos t)^2 sqrt(2 - 2 cos t) dif t \
    &= sqrt(2) a^3 int_0^(2π) (1 - cos t)^(5/2) dif t \
    &= sqrt(2) a^3 int_0^(2π) (2 sin^2 t/2)^(5/2) dif t \
    &= 8a^3 int_0^(2π) sin^5 t/2 dif t \
    &= 16a^3 int_0^π sin^5 u dif u quad (u = t/2) \
    &= 16 a^3 [-1/5 cos^5 u + 2/3 cos^3 u - cos u]_0^π \
    &= 16 a^3 (1/5 - 2/3 + 1) dot 2 \
    &= 256/15 a^3
  $

+ $int_L (x^2 + y^2) dif s$，其中 $L$ 为曲线 $x = a (cos t + t sin t), y = a (sin t - t cos t) quad (t in [0, 2π])$

  $ dif s
    &= a sqrt((- sin t + sin t + t cos t)^2 + (cos t - cos t + t sin t)^2) dif t \
    &= a t dif t \
    I
    &= int_0^(2π) a^2 ((cos t + t sin t)^2 + (sin t - t cos t)^2) a t dif t \
    &= a^3 int_0^(2π) (1 + t^2) t dif t \
    &= a^3 int_0^(2π) (t^3 + t) dif t \
    &= a^3 [1/4 t^4 + 1/2 t^2]_0^(2π) \
    &= a^3 (4 π^4 + 2 π^2)
  $

+ 设螺旋形弹簧一圈的方程为 $x = a cos t, y = a sin t, z = k t quad (t in [0, 2π])$，它的线密度 $rho(x, y, z) = x^2 + y^2 + z^2$

  (1) 求它关于 $z$ 轴的转动惯量 $I_z$

  $ dif m
    &= ρ(x, y, z) dif s \
    &= (x^2 + y^2 + z^2) sqrt(a^2 sin^2 t + a^2 sin^2 t + k^2) dif t \
    &= sqrt(a^2 + k^2) (a^2 + k^2 t^2) dif t \
    I_z
    &= int r_z^2 dif m \
    &= int_0^(2π) a^2 sqrt(a^2 + k^2) (a^2 + k^2 t^2) dif t \
    &= a^2 sqrt(a^2 + k^2) int_0^(2π) (a^2 + k^2 t^2) dif t \
    &= a^2 sqrt(a^2 + k^2) [a^2 t + 1/3 k^2 t^3]_0^(2π) \
    &= a^2 sqrt(a^2 + k^2) (2π a^2 + 8/3 π^3 k^2)
  $

  (2) 求它的质心

  $ m
    &= int_L dif m \
    &= int_0^(2π) sqrt(a^2 + k^2) (a^2 + k^2 t^2) dif t \
    &= sqrt(a^2 + k^2) (2π a^2 + 8/3 π^3 k^2)
  $

  $ x_"c"
    &= int (x dif m) / m \
    &= 1/m int_0^(2π) a cos t sqrt(a^2 + k^2) (a^2 + k^2 t^2) dif t \
    &= (a sqrt(a^2 + k^2)) / m int_0^(2π) cos t (a^2 + k^2 t^2) dif t \
  
    int_0^(2π) cos t (a^2 + k^2 t^2) dif t
    &= [sin t (a^2 + k^2 t^2)]_0^(2π) - int_0^(2π) sin t dot 2k^2 t dif t \
    &= - ([- 2 k^2 t cos t]_0^(2π) - int_0^(2π) - cos t dot 2k^2 dif t) \
    &= [2k^2 t cos t]_0^(2π) - int_0^(2π) 2 k^2 cos t dif t \
    &= [2k^2 t cos t]_0^(2π) \
    &= 4π k^2 \

    x_"c"
    &= (4π a k^2 sqrt(a^2 + k^2)) / m \
    &= (4π a k^2) / (2π a^2 + 8/3 π^3 k^2) \
    &= (6a k^2) / (3a^2 + 4 π^2  k^2)
  $

  同理，

  $
    y_"c"
    &= int (y dif m) / m \
    &= - (6a k^2) / (3a^2 + 4 π^2  k^2)
  $