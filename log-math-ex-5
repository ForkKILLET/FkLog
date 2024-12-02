# 高数 I (1) 第 14 周作业

1. 利用定积分的定义计算极限 $\displaystyle \lim_{x \to +\infty} \frac{\sum_{k = 1}^n k^p}{n^{p + 1}} \ (p > 0)$.  
   解：  
   $$
   \begin{align}
   \lim_{x \to +\infty} \frac{\sum_{k=1}^n k^p}{n^{p + 1}}
   &= \lim_{x \to +\infty} \frac{\sum_{k=1}^n \left( \frac{k}{n} \right)^p}{n} \\
   &= \int_0^1 x^p \mathrm dx \\
   &= \left. \frac{x^{p + 1}}{p + 1} \right|_0^1 \\
   &= \frac{1}{p + 1}
   \end{align}
   $$

2. 设 $f(x), g(x)$ 在 $[a, b]$ 上连续，证明：若在 $[a, b]$ 上 $f(x) \ge 0$ 且 $f(x) \not\equiv 0$，则 $\displaystyle \int_a^b f(x) \mathrm dx > 0$.  
   证明：
   $$
   \begin{align}
   & \forall x \in [a, b]. f(x) \ge 0 \land \neg\forall x \in [a, b]. f(x) = 0 \\
   \implies & \exists x_0 \in [a, b]. f(x_0) > 0 \\ 
   & f(x) \in C_{[a, b]} \\
   \implies & m := \max \{ \min \{ f(x) | x \in [a, x_0] \}, \min \{ f(x) | x \in [x_0, b] \} \}, \\
   & \exists x_L \in [a, x_0], x_R \in [x_0, b].
   f(x_L) = f(x_R) = \frac{ f(x_0) + m }{2} \\
   \implies & \int_a^b f(x) \mathrm dx \\
   &= \int_a^{x_L} f(x) \mathrm dx
   + \int_{x_L}^{x_R} f(x) \mathrm dx
   + \int_{x_R}^b f(x) \mathrm dx \\
   &\ge \int_{x_L}^{x_R} f(x) \mathrm dx \\
   &\ge \int_{x_L}^{x_R} \frac{f(x_0) + m}{2} \mathrm dx \\
   &= \frac12(x_R - x_L)(f(x_0) + m) \\
   &> 0 \\
   \square&
   \end{align}
   $$

3. 计算导数 $\displaystyle \frac{\mathrm d}{\mathrm dx} \int _0^{x^2} \sqrt{1 + t^2} \, \mathrm dt$.  
   解：
   $$
   \frac{\mathrm d}{\mathrm dx} \int _0^{x^2} \sqrt{1 + t^2} \, \mathrm dt = 2x\sqrt{1 + x^2}
   $$

4. 计算定积分 $\displaystyle \int_1^2 \left( x^2 + \frac{1}{x^4} \right) \mathrm dx$.  
   解：
   $$
   \begin{align}
   \int_1^2 \left( x^2 + \frac{1}{x^4} \right) \mathrm dx
   &= \int_1^2 x^2 \mathrm dx + \int_1^2 \frac{1}{x^4} \mathrm dx \\
   &= \left. \frac{x^3}{3} \right|_1^2 + \left. \frac{x^{-3}}{-3} \right|_1^2 \\
   &= \frac73 - \frac13 \times \left( \frac18 - 1 \right) \\
   &= \frac{21}{8}
   \end{align}
   $$

5. 计算定积分 $\displaystyle \int_0^{2\pi} |\sin x| \mathrm dx$.  
   解：  
   $$
   \begin{align}
   \int_0^{2\pi} |\sin x| \mathrm dx
   &= 2 \int_0^\pi \sin x \mathrm dx \\
   &= 2 (- \cos x) |_0^\pi \\
   &= 2 \times (1 - (- 1)) \\
   &= 4
   \end{align}
   $$

6. 求极限 $\displaystyle \lim_{x \to 0} \frac{\left( \int_0^x e^{t^2} \mathrm dt \right)^2}{\int_0^x te^{2t^2} \mathrm dt}$.  
   解：  
   $$
   \begin{align}
   \lim_{x \to 0} \frac{\left( \int_0^x e^{t^2} \mathrm dt \right)^2}{\int_0^x te^{2t^2} \mathrm dt}
   &= \lim_{x \to 0} \frac{e^{x^2} \cdot 2 \int_0^x e^{t^2} \mathrm dt}{xe^{2x^2}} \\
   &= \lim_{x \to 0} \frac{2 \int_0^x e^{t^2} \mathrm dt}{xe^{x^2}} \\
   &= \lim_{x \to 0} \frac{2 e^{x^2}}{x \cdot 2x \cdot e^{x^2} + e^{x^2}} \\
   &= \lim_{x \to 0} \frac{2}{2x^2 + 1} \\
   &= 2
   \end{align}
   $$

7. 计算定积分 $\displaystyle \int_0^{\sqrt2} \sqrt{2 - x^2} \, \mathrm dx$.  
   解：  
   注意到要求积分的几何意义是半径为 $\sqrt2$ 的 $\frac14$ 扇形的面积，则 ：
   $$
   \begin{align}
   \int_0^{\sqrt2} \sqrt{2 - x^2} \, \mathrm dx = \frac14 \pi \left( \sqrt 2 \right)^2 = \frac{\pi}{2}
   \end{align}
   $$
   或者直接求解：  
   $$
   \begin{align}
   \int_0^{\sqrt2} \sqrt{2 - x^2} \, \mathrm dx
   &= \int_0^{\sqrt2} \sqrt{2 - \left( \sqrt2 \sin t \right)^2} \, \mathrm dx
   \quad (x = \sqrt2\sin t, t = \arcsin \frac{x}{\sqrt2})  \\
   &= \sqrt2 \int_0^{\frac{\pi}{2}} \cos t \, \mathrm dx \\
   &= 2 \int_0^{\frac{\pi}{2}} \cos^2 t \, \mathrm dt \\
   &= 2 \int_0^{\frac{\pi}{2}	} \cos^2 t \, \mathrm dt \\
   &= 2 \left. \left( \frac14\sin 2t + \frac12t \right) \right|_0^{\frac{\pi}{2}} \\
   &= \frac{\pi}{2}
   \end{align}
   $$

8. 计算定积分 $\displaystyle \int_{\frac34}^1 \frac{\mathrm dx}{\sqrt{1 - x} - 1}$.  
   解：  
   $$
   \begin{align}
   \int_{\frac34}^1 \frac{\mathrm dx}{\sqrt{1 - x} - 1}
   &= \int_{\frac12}^0 \frac{1}{u - 1} \mathrm dx \quad (u = \sqrt{1 - x}, x = 1 - u^2) \\
   &= \int_{\frac12}^0 \frac{-2u}{u - 1} \mathrm du \\
   &= -2 \int_{\frac12}^0 \left( 1 - \frac{1}{u - 1} \right) \mathrm du \\
   &= -2 \int_{\frac12}^0 \mathrm du + 2 \int_{\frac12}^0 \frac{1}{u - 1} \mathrm du \\
   &= -2 u |_{\frac12}^0 + (- 2 \ln |u - 1|) |_{\frac12}^0 \\
   &= 2(u + \ln |u - 1|) |_0^{\frac12} \\
   &= 1 - 2 \ln 2
   \end{align}
   $$

9. 计算定积分 $\displaystyle \int_1^4 \frac{\ln x}{\sqrt x} \mathrm dx$.  
   解：  
   $$
   \begin{align}
   \int_1^4 \frac{\ln x}{\sqrt x} \mathrm dx
   &= \int_1^2 \frac{\ln t^2}{t} \mathrm dx \quad \left( t = \sqrt x, x = t^2 \right) \\
   &= \int_1^2 2 \ln t^2 \mathrm dt \\
   &= 4 \int_1^2 \ln t \mathrm d t \\
   &= 4 (t (\ln t - 1)) |_1^2 \\
   &= 4 (2 \ln 2 - 2 - (- 1)) \\
   &= 8 \ln 2 - 4
   \end{align}
   $$

10. 计算定积分 $\displaystyle \int_0^1 x \arctan x \mathrm dx$.  
    解：  
    $$
    \begin{align}
    \int x \arctan x \mathrm dx
    &= \frac12 \int \arctan x \mathrm d (x^2) \\
    &= \frac12 \left( x^2 \arctan x - \int x^2 \mathrm d (\arctan x) \right) \\
    &= \frac12 \left( x^2 \arctan x - \int \frac{x^2}{x^2 + 1} \mathrm dx \right) \\
    &= \frac12 \left( x^2 \arctan x + \int \frac{1}{x^2 + 1} \mathrm dx - \int \mathrm dx \right) \\
    &= \frac12 \left( x^2 \arctan x + \arctan x - x + C \right) \\
    &= \frac12 \left( (x^2 + 1) \arctan x - x \right) + C \\
    \int_0^1 x \arctan x \mathrm dx
    &= \frac12 \left. \left( (x^2 + 1) \arctan x - x \right) \right|_0^1 \\
    &= \arctan 1 - \frac12 \\
    &= \frac{\pi}{4} - \frac12
    \end{align}
    $$
