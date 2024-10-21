# 高数 I (1) 第 7 周作业

1. 求 $\displaystyle \lim_{x \to 0} \frac{\sin 2x}{\sin 5x}$ .  
   $$
    \lim_{x \to 0} \frac{\sin 2x}{\sin 5x} =  \lim_{x \to 0} \frac{2x}{5x} = \frac25
   $$

2. 求 $\displaystyle \lim_{x \to 0} (1 + 2x)^{\frac1x}$ .  
   $$
   \begin{align}
   \lim_{x \to 0} (1 + 2x)^{\frac1x}
   &= \lim_{x \to 0} \left( (1 + 2x)^{\frac{1}{2x}} \right)^2 \\
   &= \left( \lim_{x \to 0} (1 + 2x)^{\frac{1}{2x}} \right)^2 \\
   &= e^2
   \end{align}
   $$

3. 用极限的存在准则证明 $\displaystyle \lim_{x \to 0^+} x \left\lfloor \frac1x \right\rfloor = 1$ .  
   $$
   \begin{align}
   &\forall x \in (0, +\infty). x \left( \frac1x - 1 \right) \leq x \left\lfloor \frac1x \right\rfloor \leq x \left( \frac1x \right) \\
   &\lim_{x \to 0^+} x \left( \frac1x - 1 \right) = \lim_{x \to 0^+} (1 - x) = 1 \\
   &\lim_{x \to 0^+} x \left( \frac1x \right) = \lim_{x \to 0^+}  1 = 1 \\
   &\implies \lim_{x \to 0^+} x \left\lfloor \frac1x \right\rfloor = 1
   \end {align}
   $$

4. 证明当 $x \to 0$ 时有 $\sec x - 1 \sim \dfrac{x^2}2$ .  
   $$
   \begin{align}
   \lim_{x \to 0} \frac{\sec x - 1}{\frac{x^2}2}
   &= \lim_{x \to 0} \frac{\frac1{\cos x} - 1}{\frac{x^2}2} \\
   &= \lim_{x \to 0} \frac{\frac1{1 - \frac{x^2}2} - 1}{\frac{x^2}2} \\
   &= \lim_{x \to 0} \frac{\frac{2}{2 - x^2} - 1}{\frac{x^2}2} \\
   &= \lim_{x \to 0} \frac{2 - (2 - x^2)}{\frac12 x^2(2 - x^2)} \\
   &= \lim_{x \to 0} \frac{x^2}{x^2 \left( 1 - \frac{x^2}2 \right)} \\
   &= \lim_{x \to 0} \frac1{1 - \frac{x^2}2} \\
   &= 1 \\
   &\implies \sec x - 1 \sim \dfrac{x^2}2
   \end{align}
   $$

5. 求 $\displaystyle \lim_{x \to 0} \frac{\tan 3x}{2x}$ .  
   $$
   \lim_{x \to 0} \frac{\tan 3x}{2x} = \lim_{x \to 0} \frac{3x}{2x} = \frac32
   $$

6. 求 $\displaystyle \lim_{x \to 0} \frac{\tan x - \sin x}{\sin^3 x}$ .  
   $$
   \begin{align}
   \lim_{x \to 0} \frac{\tan x - \sin x}{\sin^3 x}
   &= \lim_{x \to 0} \frac{\sin x - \sin x \cos x}{\sin^3 x \cos x} \\
   &= \lim_{x \to 0} \frac{1 - \cos x}{\sin^2 x \cos x} \\
   &= \lim_{x \to 0} \frac{\frac{x^2}2}{x^2 \cos x} \\
   &= \lim_{x \to 0} \frac{1}{2 \cos x} \\
   &= \frac{1}{2 \cos 0} = \frac12
   \end{align}
   $$

7. 函数 $y = \dfrac{x^2 - 1}{x^2 - 3x + 2}$ 在 $x = 1, x = 2$ 处间断. 说明间断点类型，如是可去间断点，改变函数定义使其连续.  
   $$
   y = \frac{(x + 1)(x - 1)}{(x - 1)(x - 2)} = \frac{x + 1}{x - 2} (x \neq 1)
   $$
   所以 $x = 1$ 是可去间断点，$x = 2$ 是无穷间断点. 去除 $x = 1$ 处间断点：  
   $$
   y_1 = \frac{x + 1}{x - 2}
   $$

8. 求 $\displaystyle \lim_{\alpha \to \frac\pi4} (\sin 2\alpha)^3$ .  
   $$
   \lim_{\alpha \to \frac\pi4} (\sin 2\alpha)^3 = \sin (2 \cdot \frac\pi4)^3 = 0
   $$

9. 求 $\displaystyle \lim_{x \to \frac\pi6} \ln(2\cos 2x)$ .   
   $$
   \lim_{x \to \frac\pi6} \ln(2\cos 2x) = \ln(2\cos 2 \cdot \frac\pi6) = \ln(2\cos \frac\pi3) = \ln (2 \cdot \frac12) = 0
   $$

10. 求 $\displaystyle \lim_{x \to +\infty} \left( \sqrt{x^2 + x} - \sqrt{x^2 - x} \right)$ .  
    $$
    \begin{align}
    \lim_{x \to +\infty} \left( \sqrt{x^2 + x} - \sqrt{x^2 - x} \right)
    &= \lim_{x \to +\infty} x \left( \sqrt{1 + \frac1x} - \sqrt{1 - \frac1x} \right) \\
    &= \lim_{x \to +\infty} x \left( \frac{\frac2x}{\sqrt{1 + \frac1x} + \sqrt{1 - \frac1x}} \right) \\
    &= \lim_{x \to +\infty} \left( \frac{2}{\sqrt{1 + \frac1x} + \sqrt{1 - \frac1x}} \right) \\
    &= \frac{2}{1 + 1} = 1	
    \end{align}
    $$

11. 求 $\displaystyle \lim_{x \to 0} \frac{\left( 1 - \frac12x^2 \right)^{\frac23} - 1}{x \ln(1 + x)}$ .  
    $$
    \begin{align}
    \lim_{x \to 0} \frac{\left( 1 - \frac12x^2 \right)^{\frac23} - 1}{x \ln(1 + x)}
    &= \lim_{x \to 0} \frac{\frac23(- \frac12x^2) - 1}{x^2} \\
    &= \lim_{x \to 0} \frac{-\frac13x^2 - 1}{x^2} \\
    &= \lim_{x \to 0} \left( -\frac13  - \frac1{x^2} \right) \\
    &= -\frac13
    \end{align}
    $$
    
