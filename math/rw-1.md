# 4-1

2.  (1)  
    $$
    \begin{align}
    \int \frac{\mathrm dx}{x^2}
    &= \int x^{-2} \mathrm dx \\
    &= -\frac{1}{x} + C
    \end{align}
    $$

    (2)  
    $$
    \begin{align}
    \int x \sqrt{x} \mathrm dx
    &= \int x^{\frac32} \mathrm dx \\
    &= \frac25 x^{\frac52} + C
    \end{align}
    $$

    (3)  
    $$
    \begin{align}
    \int \frac{\mathrm dx}{\sqrt x}
    &= \int x^{-\frac12} \mathrm dx \\
    &= 2\sqrt{x} + C
    \end{align}
    $$

    (4)  
    $$
    \begin{align}
    \int x^2 \sqrt[3]{x} \mathrm dx
    &= \int x^{\frac73} \mathrm dx \\
    &= \frac{3}{10} x^{\frac{10}{3}} + C
    \end{align}
    $$

    (5)  
    $$
    \begin{align}
    \int \frac{\mathrm dx}{x^2 \sqrt{x}}
    &= \int x^{-\frac52} \mathrm dx \\
    &= -\frac23x^{-\frac32} + C
    \end{align}
    $$

    (6)  
    $$
    \begin{align}
    \int \sqrt[m]{x^n} \mathrm dx
    &= \int x^{\frac{n}{m}} \mathrm dx \\
    &= \frac{m}{n + m} x^{\frac{n + m}{m}} + C
    \end{align}
    $$

    (7)  
    $$
    \begin{align}
    \int 5x^3 \mathrm dx = \frac54x^4 + C
    \end{align}
    $$

    (8)  
    $$
    \begin{align}
    \int \left( x^2 - 3x + 2 \right) \mathrm dx
    &= \frac13x^3 - \frac32x^2 + 2x + C
    \end{align}
    $$

    (9)  
    $$
    \begin{align}
    \int \frac{\mathrm dh}{\sqrt{2gh}}
    &= \int \frac{1}{\sqrt{2g}} h^{-\frac12} \mathrm dh \\
    &= \frac{1}{\sqrt{2g}} \cdot 2\sqrt{h} + C \\
    &= \sqrt{\frac{2h}{g}} + C
    \end{align}
    $$

    (10)  
    $$
    \begin{align}
    \int \left( x^2 + 1 \right)^2 \mathrm dx
    &= \int \left( x^4 + 2x^2 + 1 \right) \mathrm dx \\
    &= \frac15x^5 + \frac23x^3 + x + C
    \end{align}
    $$

    (11)  
    $$
    \begin{align}
    \int \left( \sqrt{x} + 1 \right)\left( \sqrt[3]{x} - 1 \right) \mathrm dx
    &= \int \left( x^{\frac56} - x^{\frac12} + x^{\frac13} - 1 \right) \mathrm dx \\
    &= \frac{6}{11}x^{\frac{11}{6}} - \frac23x^{\frac32} + \frac34x^{\frac43} - x + C
    \end{align}
    $$

    (12)  
    $$
    \begin{align}
    \int \frac{(1 - x)^2}{\sqrt x} \mathrm dx
    &= \int \frac{x^2 - 2x + 1}{\sqrt x} \mathrm dx \\
    &= \int \left( x^{\frac32} - 2x^{\frac12} + x^{-\frac12} \right) \mathrm dx \\
    &= \frac25x^{\frac52} - \frac43x^{\frac32} + 2x^{\frac12} + C
    \end{align}
    $$
    (13)  
    $$
    \int \left( 2e^x + \frac{3}{x} \right)\mathrm dx = 2e^x + 3\ln |x| + C
    $$
    (14)  
    $$
    \begin{align}
    \int \frac{1}{x^2 + 1} \mathrm dx
    &= \int \frac{1}{(1 + ix)(1 - ix)} \mathrm dx \\
    \int \frac{1}{x^2 + 1} \mathrm dx
    &= \int \frac{1}{(x + i)(x - i)} \mathrm dx \\
    &= -\frac{1}{2i} \int \left( \frac{1}{x + i} - \frac{1}{x - i} \right) \mathrm dx \\
    &= -\frac{1}{2i} (\ln |x + i| - \ln |x - i|) + C \\
    
    
    
    
    \int \left( \frac{3}{1 + x^2} - \frac{2}{\sqrt{1 - x^2}} \right)\mathrm dx
    &=  
    \end{align}
    $$
    
    
    


## 7-2

1. (1) $xy' - y \ln y = 0$  
   $$
   \begin{align}
   x \frac{\mathrm dy}{\mathrm dx} &= y \ln y \\
   \frac{\mathrm dy}{y \ln y} &= \frac{\mathrm dx}{x} \\
   \int \frac{\mathrm dy}{y \ln y} &= \int \frac{\mathrm dx}{x}  \\
   \int \frac{1}{\ln y} \mathrm d (\ln y) &= \ln |x| \\
   \ln |\ln y| &= \ln |x| + C_1 \\
   \ln y &= |C_2x| \\
   \ln y &= C_3x \\
   y &= e^{Cx}
   \end{align}
   $$

   (2) $3x^2 + 5x - 5y' = 0$  
   $$
   \begin{align}
   3x^2 + 5x &= 5\frac{\mathrm dy}{\mathrm dx} \\
   \left( 3x^2 + 5x \right)\mathrm dx &= 5\mathrm dy \\
   \int \left( 3x^2 + 5x \right)\mathrm dx &= \int 5\mathrm dy \\
   x^3 + \frac52x^2 &= 5y + C_1 \\
   y &= \frac15x^3 + \frac12x^2 + C
   \end{align}
   $$
   (3) $\sqrt{1 - x^2}y' = \sqrt{1 - y^2}$  
   $$
   \begin{align}
   \frac{\mathrm dy}{\sqrt{1 - y^2}} &= \frac{\mathrm dx}{\sqrt{1 - x^2}} \\
   \arcsin y &= \arcsin x + C \\
   \end{align}
   $$
   (4) $y' - xy' = a(y^2 + y')$  
   $$
   \begin{align}
   (1 - x - a)\frac{\mathrm dy}{\mathrm dx} &= ay^2 \\
   \frac{\mathrm dx}{1 - x - a} &= \frac{\mathrm dy}{ay^2} \\
   -\ln |1 - x - a| &= -\frac{1}{ay} + C_1 \\
   \frac{1}{ay} &= \ln |1 - x - a| + C_1 \\
   y &= \frac{1}{a\ln|1 - x - a| + C} 
   \end{align}
   $$
   (5) $\sec^2 x \tan y \mathrm dx + \sec^2 y \tan x \mathrm dy = 0$  
   $$
   \begin{align}
   \sec^2 x \tan y \mathrm dx &= - \sec^2 y \tan x \mathrm dy \\
   \frac{\sec^2 x}{\tan x}\mathrm dx &= -\frac{\sec^2 y}{\tan y} \mathrm dy \\
   \ln |\tan x| &= - \ln |\tan y| + C_1 \\
   \ln |\tan x \tan y| &= C_1 \\
   \tan x \tan y &= C
   \end{align}
   $$
   (6) $\frac{\mathrm dy}{\mathrm dx} = 10^{x + y}$  
   $$
   \begin{align}
   \frac{\mathrm dy}{\mathrm dx} &= 10^x \cdot 10^y \\
   10^{-y} \mathrm dy &= 10^x \mathrm dx \\
   \int e^{- \ln 10 y} \mathrm dy &= \int e^{\ln 10 x} \mathrm dx \\
   -\frac{1}{\ln 10} 10^{-y} &= \frac{1}{\ln 10} 10^x + C_1 \\
   -10^{-y} &= 10^x + C_2 \\
   10^x + 10^{-y} &= C
   \end{align}
   $$
   (7) $(e^{x + y} - e^x)\mathrm dx + (e^{x + y} + e^y)\mathrm dy = 0$  
   $$
   \begin{align}
   e^x(e^y - 1)\mathrm dx &= -e^y(e^x + 1)\mathrm dy \\
   \int \frac{e^x}{e^x + 1}\mathrm dx &= -\int \frac{e^y}{e^y - 1}\mathrm dy \\
   \int \frac{1}{e^x + 1}\mathrm d\left( e^x \right) &= - \int \frac{1}{e^y - 1}\mathrm d\left( e^y \right) \\
   \ln \left| e^x + 1 \right| &= -\ln \left| e^y - 1 \right| + C_1 \\
   \ln \left| (e^x + 1)(e^y - 1) \right| &= C_1 \\
    (e^x + 1)(e^y - 1) &= C
   \end{align}
   $$
   (8) $\cos x \sin y \mathrm dx + \sin x \cos y \mathrm dy = 0$  
   $$
   \begin{align}
   \cot x \mathrm dx &= -\cot y\mathrm dy \\
   \ln |\sin x| &= - \ln |\sin y| + C_1 \\
   \ln |\sin x \sin y| &= C_1 \\
   \sin x \sin y &= C
   \end{align}
   $$
   (9) $(y + 1)^2 \frac{\mathrm dy}{\mathrm dx} + x^3 = 0$  
   $$
   \begin{align}
   (y + 1)^2 \mathrm dy &= -x^3 \mathrm dx \\
   \frac13(y + 1)^3 &= -\frac14x^4 + C_1 \\
   3x^4 + 4(y + 1)^3 &= C
   \end{align}
   $$
   (10) $y \mathrm dx + (x^2 - 4x)\mathrm dy = 0$  
   $$
   \begin{align}
   y \mathrm dx &= -(x^2 - 4x)\mathrm dy \\
   \frac{\mathrm dx}{-x^2 + 4x} &= \frac{\mathrm dy}{y} \\
   \int \frac{\mathrm dx}{-x^2 + 4x}
   &= \int \frac{\mathrm dt}{-t^2 + 4} \quad (t = x - 2) \\
   &= \int \frac{\mathrm dt}{(2 + t)(2 - t)} \\
   &= \int \frac14 \left( \frac{1}{2 + t} + \frac{1}{2 - t} \right)\mathrm dt \\
   &= \frac14 \ln \left| \frac{t + 2}{t - 2} \right| + C_1 \\
   &= \frac14 \ln \left| \frac{x}{x - 4} \right| + C_1 \\
   &= \ln |y| \\
   \ln  \left| \frac{x}{x - 4} \right| + C_2 &= \ln y^4 \\
   y^4 &= \frac{Cx}{x - 4}
   \end{align}
   $$
   
   2. (1) $y' = e^{2x - y}, y |_{x = 0} = 0$  
      $$
      \begin{align}
      \frac{\mathrm dy}{\mathrm dx} &= e^{2x} e^{-y} \\
      e^y \mathrm dy &= e^{2x}\mathrm dx \\
      e^y &= \frac12e^{2x} + C \\
      y &= \ln \left( \frac12e^{2x} + C \right) \\
      y|_{x = 0} &= 0 \\
      \ln \left( \frac12 + C \right) &= 0 \\
      C &= \frac12 \\
      y &= \ln \left( \frac12e^{2x} + \frac12 \right)
      \end{align}
      $$
      (2) $\cos x \sin y \mathrm dy = \cos y \sin x \mathrm dx, y|_{x = 0} = \frac{\pi}{4}$  
      $$
      \begin{align}
      \tan x \mathrm dx &= \tan y \mathrm dy \\
      - \ln |\cos x| &= - \ln |\cos y| + C_1 \\
      \cos x &= C\cos y \\
      y|_{x = 0} &= \frac{\pi}{4} \\
      \cos 0 &= C \cos \frac{\pi}{4} \\
      1 &= C \cdot \frac{\sqrt 2}{2} \\
      C &= \sqrt 2 \\
      \cos x &= \sqrt{2} \cos y
      \end{align}
      $$
      (3) $y' \sin x = y \ln y, y|_{x = \frac{\pi}{2}} = e$  
      $$
      \begin{align}
      \frac{\mathrm dy}{\mathrm dx} \sin x &= y \ln y \\
      \frac{\mathrm dx}{\sin x} &= \frac{\mathrm dy}{y \ln y} \\
      
      \int \frac{\mathrm dx}{\sin x}
      &= \int \frac{\mathrm dx}{2\sin \frac{x}{2} \cos \frac{x}{2}} \\
      &= \int \frac{\mathrm dx}{2\cos^2 \frac{x}{2} \tan \frac{x}{2}} \\
      &= \int \frac{\mathrm d \left( \frac{x}{2} \right)}{\cos^2 \frac{x}{2} \tan \frac{x}{2}}  \\
      &= \int \frac{\mathrm d \left( \tan \frac{x}{2} \right)}{\tan \frac{x}{2}} \\
      &= \ln \left| \tan \frac{x}{2} \right| + C \\
      
      \ln \left| \tan \frac{x}{2} \right| &= \ln |\ln y| + C_1 \\
      \tan \frac{x}{2} &= C_2\ln y \\
      y &= e^{C\tan \frac{x}{2}} \\
      
      y|_{x = \frac{\pi}{2}} &= e \\
      e^{C \tan \frac{\pi}{4}} &= e \\
      C &= 1 \\
      
      \Aboxed{y &= e^{\tan \frac{x}{2}}}
      \end{align}
      $$
      (4) $\cos y \mathrm dx + (1 + e^{-x}) \sin y \mathrm dy = 0, y |_{x = 0} = \frac{\pi}{4}$  
      $$
      \begin{align}
      \cos y \mathrm dx + (1 + e^{-x}) \sin y \mathrm dy &= 0 \\
      (1 + e^{-x}) \sin y \mathrm dy &= -\cos y \mathrm dx \\
      \tan y \mathrm dy &= -\frac{1}{1 + e^{-x}} \mathrm dx \\
      - \ln |\cos y| &= - \int \frac{e^x}{e^x + 1} \mathrm dx \\
      \ln |\cos y| &= \ln |e^x + 1| + C_1 \\
      \cos y &= C(e^x + 1) \\
      y |_{x = 0} &= \frac{\pi}{4} \\
      \cos \frac{\pi}{4} &= C(1 + 1) \\
      C &= \frac{\sqrt 2}{4} \\
      \Aboxed{\cos y &= \frac{\sqrt 2}{4} (e^x + 1) }
      \end{align}
      $$
      (5) $x \mathrm dy + 2y\mathrm dx = 0, y|_{x = 2} = 1$  
      $$
      \begin{align}
      x \mathrm dy &= -2y\mathrm dx \\
      \frac{\mathrm dy}{2y} &= -\frac{\mathrm dx}{x} \\
      \frac12 \ln |y| &= - \ln |x| + C_1 \\
      \frac12 \ln |xy| &= C_1 \\
      xy &= C \\
      y &= \frac{C}{x} \\
      y|_{x = 2} &= 1 \\
      \frac{C}{2} &= 1 \\
      C &= 2 \\
      \Aboxed{ y &= \frac{2}{x} }
      \end{align}
      $$
      (6) $\frac{1}{\rho}\frac{\mathrm d\rho}{\mathrm d\theta} + \frac{\rho^2 + 1}{\rho^2 - 1} \cot \theta = 0, \rho|_{\theta = \frac{\pi}{6}} = 3$  
      $$
      \begin{align}
      \frac{1}{\rho}\frac{\mathrm d\rho}{\mathrm d\theta} &= -\frac{\rho^2 + 1}{\rho^2 - 1} \cot \theta \\
      \frac{\rho^2 - 1}{\rho(\rho^2 + 1)} \mathrm d\rho &= -\cot \theta \mathrm d\theta \\
      
      \int \frac{\rho^2 - 1}{\rho(\rho^2 + 1)} \mathrm d\rho
      &= \int \frac{\rho^2 - 1}{2(\rho^2 -1 + 1)(\rho^2 -1 + 2)} 2\rho \mathrm d\rho \\
      &= \int \frac{t}{2(t + 1)(t + 2)} \mathrm dt \quad (t = \rho^2 - 1) \\
      &= \frac12 \int \left( -\frac{1}{t + 1} + \frac{2}{t + 2} \right) \mathrm dt \\
      &= \frac12 \ln \left| \frac{(t + 2)^2}{t + 1} \right| + C \\
      &= \frac12 \ln \left| \frac{(\rho^2 + 1)^2}{\rho^2} \right| + C \\
      &= \ln \left| \frac{\rho^2 + 1}{\rho} \right| + C \\
      
      \ln \left| \frac{\rho^2 + 1}{\rho} \right| &= - \ln |\sin \theta| + C_1 \\
      \frac{\rho^2 + 1}{\rho} \sin \theta &= C \\
      
      \rho|_{\theta = \frac{\pi}{6}} &= 3 \\
      \frac{10}{3} \sin \frac{\pi}{6} &= C \\
      C &= \frac53 \\
      
      \Aboxed{\frac{\rho^2 + 1}{\rho} \sin \theta &= \frac53}
      \end{align}
      $$
      (7) $x^2(1 + y'^2) = a^2 (a > 0), y|_{x = a} = 0$   
      $$
      \newcommand{\sgn}{\mathrm{sgn\,}}
      \begin{align}
      x^2 \left( 1 + \left( \frac{\mathrm dy}{\mathrm dx} \right)^2 \right) &= a^2 \\
      \frac{\mathrm dy}{\mathrm dx} &= \sqrt{\frac{a^2}{x^2} - 1} \\
      
      (\mathrm{I}) \quad y &= \int \sqrt{\frac{a^2}{x^2} - 1} \, \mathrm dx \\
      &= \int \frac{\sqrt{a^2 - x^2}}{|x|} \, \mathrm dx \\
      &= \int \frac{2(a^2 - x^2)}{-2x|x|} \frac{-2x}{2\sqrt{a^2 - x^2}} \mathrm dx \\
      &= \int \sgn x \frac{x^2 - a^2}{2x^2} \mathrm d\left( \sqrt{a^2 - x^2} \right) \\
      &= \sgn x \int \frac{-u^2}{-u^2 + a^2} \mathrm du \quad \left( u = \sqrt{a^2 - x^2} \right) \\
      &= \sgn x \int \frac{u^2}{u^2 - a^2} \mathrm du \\
      &= \sgn x \int \left( 1 - \frac{a^2}{a^2 - u^2} \right) \mathrm du \\
      &= \sgn x \left( u + C - \frac{a^2}{2a} \int \left( \frac{1}{a + u} + \frac{1}{a - u} \right) \mathrm du \right) \\
      &= \sgn x \left( u - \frac{a}{2} \ln \left| \frac{a + u}{a - u} \right| \right) + C \\
      &= \sgn x \left( \sqrt{a^2 - x^2} - \frac{a}{2} \ln \left| \frac{a + \sqrt{a^2 - x^2}}{a - \sqrt{a^2 - x^2}} \right| \right) + C \\
      
      (\mathrm{II}) \quad y &= \int \sqrt{\frac{a^2}{x^2} - 1} \, \mathrm dx \\
      &= \int \sqrt{\frac{a^2}{(a \cos t)^2} - 1} \, \mathrm dx \quad (x = a \cos t, t = \arccos \frac{x}{a}) \\
      &= \int \sqrt{\sec^2t - 1} \, \mathrm dx \\
      &= \int \tan t \mathrm d(a \cos t) \\
      &= -a \int \tan t \sin t \mathrm dt \\
      &= -a \int \frac{\sin^2 t}{\cos t} \mathrm dt \\
      &= -a \int \frac{1 - \cos^2 t}{\cos t} \mathrm dt \\
      &= -a \int (\sec t - \cos t)\mathrm dt \\
      &= -a (\ln |\sec t + \tan t| - \sin t) + C \\
      &= -a \left( \ln \left| \frac{a}{x} + \frac{\sqrt{a^2 - x^2}}{x} \right| - \frac{\sqrt{a^2 - x^2}}{a} \right) + C
      \\
      
      y|_{x = a} &= 0 \\
      \sgn a \left( \sqrt{a^2 - a^2} - \frac{a}{2} \ln \left| \frac{a + \sqrt{a^2 - a^2}}{a - \sqrt{a^2 - a^2}} \right| \right) + C &= 0 \\
      C &= 0 \\
      
      \Aboxed{y &= \sgn x \left( \sqrt{a^2 - x^2} - \frac{a}{2} \ln \left| \frac{a + \sqrt{a^2 - x^2}}{a - \sqrt{a^2 - x^2}} \right| \right)}
      \end{align}
      $$
