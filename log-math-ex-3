# 高数 I (1) 第 9 周作业

1. 求函数 $y = \ln(x + \sqrt{1 + x^2})$ 的二阶导数.  
   解：
   $$
   \begin{align}
   y'
   &= \frac{1}{x + \sqrt{1 + x^2}} \cdot (1 + \frac{1}{2\sqrt{1 + x^2}} \cdot 2x) \\
   &= \frac{1 + \frac{x}{\sqrt{1 + x^2}}}{x + \sqrt{1 + x^2}} \\
   &= \frac{\frac{x + \sqrt{1 + x^2}}{\sqrt{1 + x^2}}}{x + \sqrt{1 + x^2}} \\
   &= \frac{1}{\sqrt{1 + x^2}} \\
   y''
   &= -\frac12(1 + x^2)^{-\frac32} \cdot 2x \\
   &= -\frac{x}{(1 + x^2)^\frac32}
   \end {align}
   $$

2. 求方程 $y = 1 + xe^y$ 所确定隐函数的二阶导数 $\frac{\mathrm{d}^2y}{\mathrm{d}x^2}$.  
   解：
   $$
   \newcommand{\d}{\mathrm{d}}
   \newcommand{\dyx}{\frac{\d y}{\d x}}
   \newcommand{\ddyx}{\frac{\d^2y}{\d x^2}}
   \begin{align}
   
   \dyx &= e^y + x \cdot e^y\dyx \\
   (1 - xe^y)\dyx &= e^y \\
   \dyx &= \frac{e^y}{1 - xe^y} \\
   
   \ddyx &= \frac{e^y \dyx \cdot (1 - xe^y) - e^y \cdot [- (e^y + x \cdot e^y\dyx) ]}{(1 - xe^y)^2} \\
   \ddyx &= \frac{e^y(1 - xe^y)\dyx + e^{2y} + xe^{2y}\dyx}{(1 - xe^y)^2} \\
   \ddyx &= \frac{[e^y(1 - xe^y) + xe^{2y}](\frac{e^y}{1 - xe^y}) + e^{2y}}{(1 - xe^y)^2} \\
   \ddyx &= \frac{[e^y(1 - xe^y) + xe^{2y}]{e^y} + e^{2y}(1 - xe^y)}{(1 - xe^y)^3} \\
   \ddyx &= \frac{2e^{2y} - xe^{3y}}{(1 - xe^y)^3}
   \end{align}
   $$

3. 求参数方程 $\begin{cases} x = \ln(1 + t^2) \\ y = t - \arctan t \end{cases}$ 所确定隐函数的三阶导数 $\frac{\mathrm{d}^3y}{\mathrm{d}x^3}$.  
   解：  
   $$
   \newcommand{\d}{\mathrm{d}}
   \newcommand{\dxt}{\frac{\d x}{\d t}}
   \newcommand{\dyt}{\frac{\d y}{\d t}}
   \newcommand{\dyx}{\frac{\d y}{\d x}}
   \newcommand{\ddyx}{\frac{\d^2y}{\d x^2}}
   \newcommand{\dddyx}{\frac{\d^3y}{\d x^3}}
   \begin{align}
   \dxt &= \frac{2t}{1 + t^2} \\
   \dyt &= 1 - \frac{1}{1 + t^2} = \frac{t^2}{1 + t^2} \\
   \dyx &= \frac{\dyt}{\dxt} = \frac{t}{2} \\
   \ddyx &= \frac{\d}{\d x} \dyx = \left( \frac{\d}{\d t} \dyx \right) \frac{\d t}{\d x}
   = \frac{\dfrac12}{\dfrac{2t}{1 + t^2}} = \frac{1 + t^2}{4t} \\
   \dddyx &= \frac{\dfrac{2t \cdot 4t - (1 + t^2) \cdot 4}{(4t)^2}}{\dfrac{2t}{1 + t^2}}
   = \frac{4(t^2 - 1)(1 + t^2)}{32t^3} = \frac{t^4 - 1}{8t^3}
   \end{align}
   $$

4. 求函数 $y = \frac{x}{\sqrt{x^2 + 1}}$ 的微分.  
   解：  
   $$
   \begin{align}
   \mathrm dy
   &= y'(x) \mathrm dx \\
   &= \frac{\sqrt{x^2 + 1} - \frac{x}{2\sqrt{x^2 + 1}}}{x^2 + 1} \mathrm dx \\
   &= \frac{x^2 - \frac{x}{2} + 1}{(x^2 + 1)^\frac32} \mathrm dx
   \end{align}
   $$

5. 求函数 $y = e^{-x} \cos(3 - x)$ 的微分.  
   解：  
   $$
   \begin{align}
   \mathrm dy
   &= y'(x) \mathrm dx \\
   &= [-e^{-x} \cdot \cos(3 - x) + e^{-x} \cdot [- \sin(3 - x)] \cdot (- 1)] \mathrm dx \\
   &= e^{-x}[\sin(3 - x) - \cos(x - 3)] \mathrm dx
   \end{align}
   $$

6. 设 $0 < a < b$，$f(x)$ 在 $[a, b]$ 上连续，在 $(a, b)$ 内可导，用柯西中值定理证明 $\exists \xi \in (a, b). f(b) - f(a) = \xi f'(\xi) \ln \frac{b}{a}$.  
   证明：  
   设 $g(x) = \ln x$ ，则 $f(x)$ 和 $g(x) = \ln x$ 在 $[a, b]$ 上连续，在 $(a, b)$ 内可导，  
   且 $\forall x \in (a, b). g'(x) = \frac{1}{x} \ne 0$.  
   由柯西中值定理，
   $$
   \exists \xi \in (a, b). \frac{f(b) - f(a)}{g(b) - g(a)} = \frac{f'(\xi)}{g'(\xi)}
   $$
   .  
   即
   $$
   \exists \xi \in (a, b). f(b) - f(a) = \frac{f'(\xi)}{g'(\xi)} \cdot [g(b) - g(a)] = \xi f'(\xi) \ln \frac{b}{a}
   $$
   $\square$

7. 证明 $|\arctan a - \arctan b| \le |a - b|$.  
   证明：  
   $a = b$ 时 $|\arctan a - \arctan b| = |a - b| = 0$.  
   不妨设 $a < b$，$f(x) = \arctan x$，则 $f(x)$ 在 $[a, b]$ 上连续，在 $(a, b)$ 内可导.  
   由拉格朗日定理，  
   $$
   \exists \xi \in (a, b). \frac{f(a) - f(b)}{a - b} = f'(\xi) \\
   \frac{\arctan a - \arctan b}{a - b} = \frac{1}{\xi^2 + 1} \\
   \arctan a - \arctan b = \frac{1}{\xi^2 + 1} (a - b)
   $$
   那么不管 $a$ 与 $b$ 的大小关系，都有  
   $$
   |\arctan a - \arctan b| = \frac{1}{\xi^2 + 1} |a - b| \le |a - b|
   $$
   $\square$

