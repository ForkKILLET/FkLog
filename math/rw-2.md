## 7-3

1. (1) $xy' - y - \sqrt{y^2 - x^2} = 0$  
   $$
   \begin{align}
   y' &= \frac{y + \sqrt{y^2 - x^2}}{x} \\
   y' &= \frac{y}{x} + \sqrt{\left( \frac{y}{x} \right)^2 - 1} \\
   u &:= \frac{y}{x} \\
   \frac{\mathrm dy}{\mathrm dx} &= u + \sqrt{u^2 - 1} \\
   y &= ux \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   u + \sqrt{u^2 - 1} &= \frac{\mathrm du}{\mathrm dx} + u \\
   \mathrm dx &= \frac{\mathrm du}{\sqrt{u^2 - 1}} \\
   
   \int \mathrm dx &= x + C \\
   
   \int \frac{\mathrm du}{\sqrt{u^2 - 1}}
   &= \int \frac{\mathrm d(\sec t)}{\sqrt{\sec^2 t - 1}} \quad (u =: \sec t, t = \arcsec u) \\
   &= \int \frac{\sec t \tan t \mathrm dt}{\tan t} \\
   &= \int \sec t \mathrm dt \\
   &= \ln |\sec t + \tan t| + C_1 \\
   &= \ln \left| u + \sqrt{u^2 - 1} \right| + C_1 \\
   
   x
   &= \ln \left| u + \sqrt{u^2 - 1} \right| + C_1 \\
   &= \ln \left| \frac{y}{x} + \sqrt{\left( \frac{y}{x} \right)^2 - 1} \right| + C_1 \\
   &= \ln \left| \frac{1}{x} \left( y + \sqrt{y^2 - x^2} \right) \right| + C_1 \\
   &= \ln \left| y + \sqrt{y^2 - x^2} \right| - ln |x| + C_1 \\
   
   \Aboxed{\ln \left| y + \sqrt{y^2 - x^2} \right| &= x + \ln |x| + C}
   \end{align}
   $$
   (2) $x \frac{\mathrm dy}{\mathrm dx} = y \ln \frac{y}{x}$  
   $$
   \begin{align}
   \frac{\mathrm dy}{\mathrm dx} &= u \ln u \quad \left( u := \frac{y}{x} \right) \\
   y &= ux \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   u \ln u &= \frac{\mathrm du}{\mathrm dx}x + u \\
   
   u (\ln u - 1) &= \frac{\mathrm du}{\mathrm dx}x \\
   \frac{\mathrm dx}{x} &= \frac{\mathrm du}{u (\ln u - 1)} \\
   \int \frac{\mathrm dx}{x} &= \int \frac{\mathrm du}{u (\ln u - 1)} \\
   
   \int \frac{\mathrm dx}{x} &= \ln |x| + C \\
   
   \int \frac{\mathrm du}{u (\ln u - 1)}
   &= \int \frac{\mathrm d (\ln u)}{\ln u - 1} \\
   &= \ln |\ln u - 1| + C \\
   \ln |x| &= \ln |\ln u - 1| + C_1 \\
   x &= C_2(\ln u - 1) \\
   x &= C_2(\ln \frac{y}{x} - 1) \\
   \ln \frac{y}{x} &= C_3x + 1 \\
   \Aboxed{y &= x\exp (Cx + 1)}
   \end{align}
   $$
   (3) $(x^2 + y^2)\mathrm dx - xy\mathrm dy = 0$  
   $$
   \begin{align}
   (x^2 + y^2)\mathrm dx &= xy\mathrm dy \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{x^2 + y^2}{xy} \\
   &= \frac{x}{y} + \frac{y}{x} \\
   &= u + \frac{1}{u} \quad (u := \frac{y}{x}) \\
   y &= ux \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   
   u + \frac{1}{u} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   \frac{\mathrm dx}{x} &= u \mathrm du \\
   \ln |x| &= \frac12u^2 + C_1 \\
   \ln |x| &= \frac{y^2}{2x^2} + C_1 \\
   \Aboxed{y^2 &= 2x^2 \ln |Cx|}
   \end{align}
   $$
   (4) $(x^3 + y^3) \mathrm dx - 3xy^2 \mathrm dy = 0$  
   $$
   \begin{align}
   (x^3 + y^3) \mathrm dx &= 3xy^2 \mathrm dy \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{x^3 + y^3}{3xy^2} \\
   &= \frac13 \left( \left( \frac{x}{y} \right)^2 + \frac{y}{x} \right) \\
   &= \frac13 (u^{-2} + u) \quad \left( u := \frac{y}{x} \right) \\
   \frac{\mathrm du}{\mathrm dx} + u &= \frac13 (u^{-2} + u) \\
   \mathrm dx &= \frac{\mathrm du}{\frac13u^{-2} - \frac23u} \\
   
   \int \mathrm dx &= x + C \\
   
   \int \frac{\mathrm du}{\frac13u^{-2} - \frac23u}
   &= \int \frac{3\mathrm du}{u^{-2} - 2u} \\
   &= \int \frac{3u^2}{1 - 2u^3} \mathrm du \\
   &= -\frac12 \int \frac{1}{1- 2u^3} \mathrm d\left( 1 - 2u^3\right ) \\
   &= -\frac12 \ln \left| 1 - 2u^3 \right| + C \\
   
   x &= -\frac12 \ln \left| 1 - 2u^3 \right| + C_1 \\
   x &= -\frac12 \ln \left| 1 - 2\left( \frac{y}{x} \right)^3 \right| + C
   \end{align}(5)
   $$

   (5) $\left( 2x \sin \frac{y}{x} + 3y \cos \frac{y}{x} \right) \mathrm dx - 3x \cos \frac{y}{x} \mathrm dy = 0$  
   $$
   \begin{align}
   (2x \sin u + 3y \cos u) \mathrm dx &= 3x \cos u \mathrm dy \\
   \frac{2 \sin u + 3u \cos u}{3 \cos u} &= \frac{\mathrm dy}{\mathrm dx} \quad \left( u := \frac{y}{x} \right) \\
   y &= ux \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   \frac{2 \sin u + 3u \cos u}{3 \cos u} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   
   \frac{2 \sin u}{3 \cos u} &= \frac{\mathrm du}{\mathrm dx}x \\
   \frac{\mathrm dx}{x} &= \frac32 \cot u \mathrm du \\
   
   \int \cot u \mathrm du &= \int \frac{\cos u}{\sin u} \mathrm du \\
   &= \int \frac{1}{\sin u} \mathrm d (\sin u) \\
   &= \ln |\sin u| \\
   
   \ln |x| &= \frac32 (\ln |\sin u| + C_1) \\
   2\ln |x| &= 3\ln \left| \sin \frac{y}{x} \right| + C_2 \\
   
   \Aboxed{ x^2 &= C \sin^3 \frac{y}{x} }
   \end{align}
   $$
   (6) $\left( 1 + 2e^{\frac{x}{y}} \right) \mathrm dx + 2e^{\frac{x}{y}} \left( 1 - \frac{x}{y} \right) \mathrm dy = 0$  
   $$
   \begin{align}
   (1 + 2e^u)\mathrm dx &= 2e^u(u - 1)\mathrm dy\quad \left( u := \frac{x}{y} \right) \\
   \frac{\mathrm dx}{\mathrm dy} &= \frac{2e^u(u - 1)}{1 + 2e^u} \\
   x &= uy \\
   \frac{\mathrm dx}{\mathrm dy} &= \frac{\mathrm du}{\mathrm dy} y + u \\
   
   \frac{2e^u(u - 1)}{1 + 2e^u} &= \frac{\mathrm du}{\mathrm dy} y + u \\
   \frac{2ue^u - 2e^u - u - 2ue^u}{1 + 2e^u} &= \frac{\mathrm du}{\mathrm dy} y \\
   
   -\frac{1 + 2e^u}{2e^u + u} \mathrm du &= \frac{1}{y} \mathrm dy \\
   -\frac{1}{2e^u + u} \mathrm d(2e^u + u) &= \frac{1}{y} \mathrm dy \\
   
   - \ln \left| 2e^u + u \right| &= \ln |y| + C_1 \\
   (2e^u + u)y &= C_2 \\
   \Aboxed{2ye^{\frac{x}{y}} + x &= C}
   \end{align}
   $$

2. (1) $(y^2 - 3x^2)\mathrm dy + 2xy\mathrm dx = 0, y|_{x = 0} = 1$  
   $$
   \begin{align}
   \frac{\mathrm dy}{\mathrm dx} &= -\frac{2xy}{y^2 - 3x^2} \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{2}{\frac{3x}{y} - \frac{y}{x}} \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{2}{\frac{3}{u} - u} \quad \left( u := \frac{y}{x} \right) \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{2u}{3 - u^2} \\
   
   y &= ux \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   
   \frac{2u}{3 - u^2} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   \frac{2u - 3u + u^3}{3 - u^2} &= \frac{\mathrm du}{\mathrm dx}x \\
   \frac{3 - u^2}{u(u + 1)(u - 1)} \mathrm du &= \frac{1}{x} \mathrm dx \\
   \\
   \int \frac{3 - u^2}{u(u + 1)(u - 1)} \mathrm du
   &= \int \left( \frac{A}{u} + \frac{B}{u + 1} + \frac{C}{u - 1} \right) \mathrm du \\
   \\
   A(u^2 - 1) + B(u^2 - u) + C(u^2 + u) &= 3 - u^2 \\
   &\begin{cases}
   A + B + C &= -1 \\
   -B + C &= 0 \\
   -A &= 3
   \end{cases} \\
   &\begin{cases}
   A &= -3 \\
   B &= 1 \\
   C &= 1
   \end{cases} \\
   \int \frac{3 - u^2}{u(u + 1)(u - 1)} \mathrm du
   &= \int \left( -\frac{3}{u} + \frac{1}{u + 1} + \frac{1}{u - 1} \right) \mathrm du \\
   &= -3 \ln |u| + \ln |u + 1| + \ln |u - 1| + C \\
   \\
   -3 \ln |u| + \ln |u + 1| + \ln |u - 1| &= \ln |x| + C_1 \\
   \frac{(u + 1)(u - 1)}{u^3} &= C_2x \\
   \frac{x(y + x)(y - x)}{y^3} &= C_2x \\
   y^2 - x^2 &= C_2y^3 \\
   y^2 - Cy^3 &= x^2 \\
   \\
   y|_{x = 0} &= 1 \\
   1 - C &= 0 \\
   C &= 1 \\
   \\
   \Aboxed{y^2 - y^3 &= x^2} \\
   \end{align}
   $$
   (2) $y' = \frac{x}{y} + \frac{y}{x}, y|_{x = 1} = 2$  
   $$
   \begin{align}
   \frac{\mathrm dy}{\mathrm dx} &= u + u^{-1} \quad \left( u := \frac{y}{x} \right) \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   \\
   u^{-1} &= \frac{\mathrm du}{\mathrm dx}x \\
   \frac{\mathrm dx} x &= u \mathrm d u \\
   \ln |x| &= \frac12 u^2 + C_1 \\
   \ln (x^2) &= \left( \frac{y}{x} \right)^2 + C_2 \\
   y^2 &= x^2 \left( \ln (x^2) + C \right) \\
   \\
   y|_{x = 1} &= 2 \\
   C &= 4 \quad (x > 0)\\
   \\
   y^2 &= x^2\left( 2 \ln |x| + 4 \right) \quad (x > 0) \\
   \Aboxed{y^2 &= 2x^2\left( \ln x + 2 \right) \quad (x > 0)} \\
   \end{align}
   $$
   (3) $(x^2 + 2xy -y^2)\mathrm dx + (y^2 + 2xy - x^2)\mathrm dy = 0, y|_{x = 1} = 1$  
   $$
   \begin{align}
   (x^2 + 2xy -y^2)\mathrm dx &= -(y^2 + 2xy - x^2)\mathrm dy \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{y^2 - 2xy - x^2}{y^2 + 2xy - x^2} \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{u^2 - 2u - 1}{u^2 + 2u - 1} \quad \left( u := \frac{y}{x} \right) \\
   \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   \\
   \frac{u^2 - 2u - 1}{u^2 + 2u - 1} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   \frac{u^2 - 2u - 1 - u^3 - 2u^2 + u}{u^2 + 2u - 1} &= \frac{\mathrm du}{\mathrm dx}x \\
   \frac{-u^3 - u^2 - u - 1}{u^2 + 2u - 1} &= \frac{\mathrm du}{\mathrm dx}x \\
   - \frac{u^2 + 2u - 1}{u^3 + u^2 + u + 1} \mathrm du &= \frac{\mathrm dx}{x} \\
   \\
   \int \frac{u^2 + 2u - 1}{u^3 + u^2 + u + 1}\mathrm du
   &= \int \frac{u^2 + 2u - 1}{(u + 1)(u^2 + 1)}\mathrm du \\
   &= \int \left( -\frac{1}{u + 1} + \frac{2u}{u^2 + 1} \right) \mathrm du \\
   &= - \ln |u + 1| + \ln \left| u^2 + 1 \right| + C \\
   \\
   -\left( -\ln |u + 1| + \ln \left| u^2 + 1 \right| \right) &= \ln |x| + C_1 \\
   \frac{u + 1}{u^2 + 1} &= C_2x \\
   \frac{xy + x^2}{y^2 + x^2} &= C_2x \\
   \frac{y + x}{y^2 + x^2} &= C \\
   \\
   y|_{x = 1} &= 1 \\
   C &= 1 \\
   \\
   \Aboxed{\frac{y + x}{y^2 + x^2} &= 1}
   \end{align}
   $$
   (4) $x \frac{\mathrm dy}{\mathrm dx} = y + x \sec \frac{y}{x}, y|_{x = 1} = \frac{\pi}{4}$  
   $$
   \begin{align}
   \frac{\mathrm dy}{\mathrm dx} &= u + \sec u \quad \left( u := \frac{y}{x} \right) \\
   \frac{\mathrm dy}{\mathrm dx} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   \\
   \sec u &= \frac{\mathrm du}{\mathrm dx}x \\
   \cos u \mathrm du &= \frac{\mathrm dx}{x} \\
   \sin u &= \ln |x| + C \\
   \sin \frac{y}{x} &= \ln |x| + C \\
   \\
   y|_{x = 1} &= \frac{\pi}{4} \\
   \sin \frac{\pi}{4} &= 0 + C \\
   C &= \frac{\sqrt{2}}{2} \\
   \\
   \Aboxed{\sin \frac{y}{x} &= \ln |x| + \frac{\sqrt{2}}{2}}
   \end{align}
   $$
   
   3. 设有连接点 $O(0, 0)$ 和点 $A(1, 1)$ 的一段向上凸的曲线弧 $\overset{\Large\frown}{OA}$，对 $\overset{\Large\frown}{OA}$ 上任意一点 $P(x, y)$，曲线弧 $\overset{\Large\frown}{OP}$ 与直线段 $\overline{OP}$ 所围图形的面积为 $x^2$，求曲线弧 $\overset{\Large\frown}{OA}$ 的方程.  
      $$
      \begin{align}
      \int_0^x y(t) \mathrm dt - \frac12 xy(x) &= x^2 \\
      \frac{\mathrm d}{\mathrm dx} \int_0^x y(t) \mathrm dt &= \frac{\mathrm d}{\mathrm dx} \left( x^2 + \frac12 xy(x) \right) \\
      \\
      y &= 2x + \frac12 \left( y + x\frac{\mathrm dy}{\mathrm dx} \right) \\
      2y - 4x &= y + x \frac{\mathrm dy}{\mathrm dx} \\
      \frac{y}{x} - 4 &= \frac{\mathrm dy}{\mathrm dx} \\
      \frac{\mathrm dy}{\mathrm dx} &= u - 4 \quad \left( u := \frac{y}{x} \right) \\
      y &= ux \\
      \frac{\mathrm dy}{\mathrm dx} &= \frac{\mathrm du}{\mathrm dx}x + u \\
      \\
      \frac{\mathrm du}{\mathrm dx}x + u &= u - 4 \\
      \mathrm du &= -\frac{4}{x} \mathrm dx \\
      u &= -4 \ln x + C \\
      \frac{y}{x} &= - 4 \ln x + C \\
      \\
      y|_{x = 1} &= 1 \\
      \frac11 &= -4 \ln 1 + C \\
      C &= 1 \\
      \frac{y}{x} &= - 4 \ln x + 1 \\
      \Aboxed{y &= x(1 - 4 \ln x)}
      \end{align}
      $$
   
   4. (1) $(2x - 5y + 3)\mathrm dx - (2x + 4y - 6)\mathrm dy = 0$  
      $$
      \begin{align}
      (2x - 5y + 3)\mathrm dx &= (2x + 4y - 6)\mathrm dy \\
      \frac{\mathrm dy}{\mathrm dx}
      &= \frac{2x - 5y + 3}{2x + 4y - 6} \\
      &= \frac{2(X + m) - 5(Y + n) + 3}{2(X + m) + 4(Y + n) - 6} \quad ( x := X + m,\ y := Y + n ) \\
      &= \frac{2X - 5Y + (2m - 5n + 3)}{2X + 4Y + (2m + 4n - 6)} \\
      &\begin{cases}
      2m - 5n + 3 &= 0 \\
      2m + 4n - 6 &= 0
      \end{cases} \\
      &\begin{cases}
      m &= 1 \\
      n &= 1 \\
      \end{cases} \\
      \\
      \frac{\mathrm dY}{\mathrm dX} &= \frac{\mathrm dy}{\mathrm dx} \\
      &= \frac{2X - 5Y}{2X + 4Y} \\
      &= \frac{2 - 5u}{2 + 4u} \quad \left( u := \frac{Y}{X} \right) \\
      \frac{\mathrm dY}{\mathrm dX} &= \frac{\mathrm du}{\mathrm dX}X + u \\
      \\
      \frac{2 - 5u}{2 + 4u} &= \frac{\mathrm du}{\mathrm dX}X + u \\
      \frac{2 - 7u - 4u^2}{2 + 4u} &= \frac{\mathrm du}{\mathrm dX}X \\
      -\frac{2 + 4u}{(4u - 1)(u + 2)}\mathrm du &= \frac{\mathrm dX}{X} \\
      \\
      \int \frac{2 + 4u}{(4u - 1)(u + 2)}\mathrm du
      &= \int \left( \frac{\frac43}{4u - 1} + \frac{\frac23}{u + 2} \right) \mathrm du \\
      &= \frac13 \ln \left| u - \frac14 \right| + \frac23 \ln |u + 2| + C \\
      \\
      - \left( \frac13 \ln \left| u - \frac14 \right| + \frac23 \ln |u + 2| \right) &= \ln |X| + C_1 \\
      \left( u - \frac14 \right)(u + 2)^2 X^3 &= C_2 \\
      (4Y - X)(Y + 2X)^2 &= C \\
      \\
      (4(y - n) - (x - m))((y - n) + 2(x - m))^2 &= C \\
      \Aboxed{ (4y - x - 3)(y + 2x - 3)^2 &= C }
      \end{align}
      $$
      
   
      

