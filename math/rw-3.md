## 7-4

1. (1) $\frac{\mathrm dy}{\mathrm dx} + y = e^{-x}$  
   $$
   \begin{align}
   \frac{\mathrm dy^*}{\mathrm dx} + y &= 0 \\
   \frac{\mathrm dy^*}{y^*} &= - \mathrm dx \\
   \ln |y^*| &= - x + C_1 \\
   y^* &= Ce^{-x} \\
   \\
   y &:= te^{-x} \\
   \frac{\mathrm dt}{\mathrm dx} e^{-x} - te^{-x} + te^{-x} &= e^{-x} \\
   \frac{\mathrm dt}{\mathrm dx} &= 1 \\
   t &= x + C \\
   y &= (x + C)e^{-x}
   \end{align}
   $$
   (2) $xy' + y = x^2 + 3x + 2$  
   $$
   \begin{align}
   \frac{\mathrm dy}{\mathrm dx} + \frac{y}{x} &= x + \frac{2}{x} + 3 \\
   \\
   \frac{\mathrm dy^*}{\mathrm dx} + \frac{y^*}{x} &= 0 \\
   \frac{\mathrm dy^*}{\mathrm dx} &= -u \quad \left( u := \frac{y^*}{x} \right) \\
   \frac{\mathrm dy^*}{\mathrm dx} &= \frac{\mathrm du}{\mathrm dx}x + u \\
   \\
   -u &= \frac{\mathrm du}{\mathrm dx}x + u \\
   \frac{\mathrm dx}{x} &= -\frac12 \frac{\mathrm du}{u} \\
   \ln |x| &= -\frac12 \ln |u| + C_1 \\
   2 \ln |x| + \ln |u| &= C_2 \\
   x^2u &= C \\
   xy^* &= C \\
   y^* &= \frac{C}{x} \\
   \\
   y &:= \frac{t}{x} \\
   x \left( \frac{\mathrm dt}{\mathrm dx}x - t \right) \frac{1}{x^2} + \frac{t}{x} &= x^2 + 3x + 2 \\
   \frac{\mathrm dt}{\mathrm dx} - \frac{t}{x} + \frac{t}{x} &= x^2 + 3x + 2 \\
   \frac{\mathrm dt}{\mathrm dx} &= x^2 + 3x + 2 \\
   t &= \frac13 x^3 + \frac32 x^2 + 2x + C \\
   \Aboxed{ y &= \frac13 x^2 + \frac32 x + 2 + \frac{C}{x} }
   \end{align}
   $$
   
   (3) $y' + y \cos x = e^{-\sin x}$  
   $$
   \begin{align}
   \frac{\mathrm dy^*}{\mathrm dx} + y^* \cos x &= 0 \\
   \frac{\mathrm dy^*}{\mathrm dx} &= - y^* \cos x \\
   \frac{\mathrm dy^*}{y^*} &= -\cos x \mathrm dx \\
   \ln |y^*| &= -\sin x + C_1 \\
   y^* &= Ce^{-\sin x} \\
   \\
   y &= te^{-\sin x} \\
   \frac{\mathrm dt}{\mathrm dx} e^{-\sin x} + te^{-\sin x} (-\cos x) + te^{-\sin x} \cos x &= e^{-\sin x} \\
   \frac{\mathrm dt}{\mathrm dx} e^{-\sin x} &= e^{-\sin x} \\
   \frac{\mathrm dt}{\mathrm dx} &= 1 \\
   t &= x + C \\
   \\
   \Aboxed{ y &= (x + C)e^{-\sin x} }
   \end{align}
   $$
   (4) $y' + y \tan x = \sin 2x$  
   $$
   \begin{align}
   \frac{\mathrm dy^*}{\mathrm dx} + y^*\tan x &= 0 \\
   \frac{\mathrm dy^*}{\mathrm dx} &= -y^*\tan x \\
   \frac{\mathrm dy^*}{y^*} &= -\tan x \mathrm dx \\
   \ln |y^*| &= \ln |\cos x| + C_1 \\
   y^* &= C\cos x \\
   \\
   y &= t\cos x \\
   \frac{\mathrm dt}{\mathrm dx} \cos x - t \sin x + t \cos x \tan x &= \sin 2x \\
   \frac{\mathrm dt}{\mathrm dx} \cos x &= 2 \sin x \cos x \\
   \frac{\mathrm dt}{\mathrm dx} &= 2 \sin x \\
   t &= -2 \cos x + C \\
   \\
   \Aboxed{ y &= (-2 \cos x + C)\cos x }
   \end{align}
   $$
   (5) $(x^2 - 1)y' + 2xy - \cos x = 0$  
   $$
   \begin{align}
   \frac{\mathrm dy}{\mathrm dx} + \frac{2x}{x^2 - 1}y &= \frac{\cos x}{x^2 - 1} \\
   \frac{\mathrm dy^*}{\mathrm dx} &= - \frac{2x}{x^2 - 1}y^* \\
   \frac{\mathrm dy^*}{y} &= - \frac{2x}{x^2 - 1}\mathrm dx \\
   \ln |y^*| &= - \ln |x^2 - 1| + C_1 \\
   y^*(x^2 - 1) &= C \\
   \\
   y &= \frac{t}{x^2 - 1} \\
   (x^2 - 1) \frac{1}{\left( x^2 - 1 \right)^2} \left( \frac{\mathrm dt}{\mathrm dx}(x^2 - 1) - 2xt \right) + \frac{2xt}{x^2 - 1} - \cos x &= 0 \\
   \frac{\mathrm dt}{\mathrm dx} &= \cos x \\
   t &= \sin x + C \\
   \\
   \Aboxed{ y &= \frac{\sin x + C}{x^2 - 1} }
   \end{align}
   $$
   (6) $\frac{\mathrm d\rho}{\mathrm d\theta} + 3\rho = 2$  
   $$
   \begin{align}
   \frac{\mathrm d\rho}{2 - 3\rho} = \mathrm d\theta \\
   -\frac{\mathrm d\rho}{3 \left( \rho - \frac23 \right)} &= \mathrm d\theta \\
   -\frac13 \ln \left| \rho - \frac23 \right| &= \theta + C_1 \\
   \ln \left| \rho - \frac23 \right| &= -3\theta + C_2 \\
   \rho - \frac23 &= Ce^{-3\theta} \\
   \rho &= Ce^{-3\theta} + \frac23
   \end{align}
   $$
   (7) $\frac{\mathrm dy}{\mathrm dx} + 2xy = 4x$  
   $$
   \begin{align}
   \frac{\mathrm dy^*}{\mathrm dx} &= -2xy^* \\
   \frac{\mathrm dy^*}{y^*} &= -2x\mathrm dx \\
   \ln |y^*| &= -x^2 + C_1 \\
   y^* &= Ce^{-x^2} \\
   \\
   y &= te^{-x^2} \\
   \frac{\mathrm dt}{\mathrm dx} e^{-x^2} + te^{-x^2}(-2x) + 2x \cdot te^{-x^2} &= 4x \\
   \frac{\mathrm dt}{\mathrm dx} &= 4xe^{x^2} \\
   t &= \int 4xe^{x^2} \mathrm dx \\
   &= 2 \int e^{x^2} \mathrm d\left( x^2 \right) \\
   &= 2e^{x^2} + C \\
   \\
   y &= \left( 2e^{x^2} + C \right)e^{-x^2} \\
   \Aboxed{ y &= 2 + Ce^{-x^2} }
   \end{align}
   $$
   (8) $y \ln y \mathrm dx + (x - \ln y) \mathrm dy = 0$  
   $$
   \begin{align}
   y \ln y \mathrm dx &= (\ln y - x) \mathrm dy \\
   \frac{\mathrm dx}{\mathrm dy} &= \frac{\ln y - x}{y \ln y} \\
   \frac{\mathrm dx}{\mathrm dy} &= \frac{1}{y} - \frac{x}{y \ln y} \\
   \frac{\mathrm dx}{\mathrm dy} + \frac{x}{y \ln y} &= \frac{1}{y} \\
   \\
   \frac{\mathrm dx^*}{\mathrm dy} + \frac{x^*}{y \ln y} &= 0 \\
   \frac{\mathrm dx^*}{\mathrm dy} &= - \frac{x^*}{y \ln y} \\
   \frac{\mathrm dx^*}{x^*} &= - \frac{\mathrm dy}{y \ln y} \\
   \ln |x^*| &= - \ln |\ln y| + C_1 \\
   x^* \ln y &= C \\
   x^* &= \frac{C}{\ln y} \\
   \\
   x &= \frac{t}{\ln y} \\
   \frac{1}{\ln^2 y} \left( \frac{\mathrm dt}{\mathrm dy} \ln y - \frac{t}{y} \right) &= \frac{1}{y} - \frac{1}{y \ln y} \frac{t}{\ln y} \\
   \frac{\mathrm dt}{\ln y \mathrm dy} &= \frac{1}{y} \\
   \mathrm dt &= \frac{\ln y}{y} \mathrm dy \\
   t &= \frac12 \ln^2 y + C \\
   \\
   x &= \frac{\frac12 \ln^2 y + C_1}{\ln y} \\
   \Aboxed{ 2x \ln y - \ln^2 y &= C }
   \end{align}
   $$
   (9) $(x - 2) \frac{\mathrm dy}{\mathrm dx} = y + 2(x - 2)^3$  
   $$
   \begin{align}
   \frac{\mathrm dy}{\mathrm dx} &= \frac{y}{x - 2} + 2(x - 2)^2 \\
   \frac{\mathrm dy^*}{y^*} &= \frac{\mathrm dx}{x - 2} \\
   \ln |y^*| &= \ln |x - 2| + C_1 \\
   y^* &= C(x - 2) \\
   \\
   y &= t(x - 2) \\
   \frac{\mathrm dt}{\mathrm dx}(x - 2) + t &= t + 2(x - 2)^2 \\
   \frac{\mathrm dt}{\mathrm dx}&= 2(x - 2) \\
   t &= 2 \int (x - 2) \mathrm dx = x^2 - 4x + C \\
   \\
   y &= (x^2 - 4x + C)(x - 2) \\
   \Aboxed { y &= (x - 2)^3 + C(x - 2) }
   \end{align}
   $$
   (10) $(y^2 - 6x)\frac{\mathrm dy}{\mathrm dx} + 2y = 0$  
   $$
   \begin{align}
   \frac{\mathrm dy}{\mathrm dx} &= \frac{2y}{6x - y^2} \\
   \frac{\mathrm dx}{\mathrm dy} &= \frac{6x - y^2}{2y} \\
   \frac{\mathrm dx}{\mathrm dy} &= \frac{3x}{y} - \frac12 y \\
   \\
   \frac{\mathrm dx^*}{\mathrm dy} &= \frac{3x^*}{y} \\
   \frac{\mathrm dx^*}{3x^*} &= \frac{\mathrm dy}{y} \\
   \frac13 \ln |x^*| &= \ln |y| \\
   x^* &= C y^3 \\
   \\
   x &:= ty^3 \\
   \frac{\mathrm dt}{\mathrm dy}y^3 + 3y^2t &= \frac{3ty^3}{y} - \frac12y \\
   \frac{\mathrm dt}{\mathrm dy} &= -\frac{1}{2y^2} \\
   t &= -\frac12 \int y^{-2} \mathrm dy \\
   &= \frac{1}{2y} + C \\
   \\
   x &= \left( \frac{1}{2y} + C \right)y^3 \\
   \Aboxed{ x &=\frac12 y^2 + Cy^3 }
   \end{align}
   $$
   
   
   
   
   
   
   
   
   
   
   