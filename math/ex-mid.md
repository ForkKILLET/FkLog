# 高数 I (1) 第 11 周阶段性测试

1. 求 $\displaystyle \lim_{n \to \infty} \left( 1 - \frac{3}{n - 1} \right)^{2n}$.  
   解：
   $$
   \begin{align}
   \lim_{n \to \infty} \left( 1 - \frac{3}{n - 1} \right)^{2n}
   &= \lim_{n \to \infty} \left( \frac{n - 4}{n - 1} \right)^{2n} \\
   &= \lim_{n \to \infty} \exp \left( 2n \ln \frac{n - 4}{n - 1} \right) \\
   &= \lim_{n \to \infty} \exp \frac{\ln \frac{n - 4}{n - 1}}{\frac{1}{2n}} \\
   &= \exp \lim_{n \to \infty} \frac{\ln \frac{n - 4}{n - 1}}{\frac{1}{2n}} \\
   &= \exp \lim_{n \to \infty} \frac{\frac{1}{n - 4} - \frac{1}{n - 1}}{- \frac{1}{2n^2}} \\
   &= \exp \lim_{n \to \infty} \frac{- 3 \cdot 2n^2}{(n - 4)(n - 1)} \\
   &= e^{- 6}
   \end{align}
   $$

2. 求 $\displaystyle \lim_{x \to 0} \frac{\sin x - \tan x}{x^2 \arctan x}$.  
   解：
   $$
   \begin{align}
   \lim_{x \to 0} \frac{\sin x - \tan x}{x^2 \arctan x}
   &= \lim_{x \to 0} \frac{\sin x\cos x - \sin x}{x^2 \arctan x \cos x} \\
   &= \lim_{x \to 0} \frac{\cos x - 1}{x^2 \cos x} \\
   &= \lim_{x \to 0} \frac{- \frac{x^2}{2}}{x^2 \cos x} \\
   &= \lim_{x \to 0} \left( - \frac{1}{2 \cos x} \right) \\
   &= - \frac{1}{2 \cos 0} \\
   &= - \frac12
   \end{align}
   $$
   
3. 设 $y = y(x)$ 是参数方程 $\begin{cases} x = \ln \sqrt{1 + t^2} \\ y = \arctan t \end{cases}$ 确定的函数，求 $\dfrac{\mathrm dy}{\mathrm dx}$, $\dfrac{\mathrm d^2y}{\mathrm dx^2}$.  
   解：

$$
\newcommand{\d}{\mathrm d}

\begin{align}
\frac{\d x}{\d t} &= \frac{\d \frac12 \ln (1 + t^2)}{\d t} = \frac{t}{1 + t^2} \\
\frac{\d y}{\d t} &= \frac{1}{1 + t^2} \\
\frac{\d y}{\d x} &= \frac{1}{t} \\
\frac{\d^2 y}{\d x^2} &= -\frac{1}{t^2} \cdot \frac{1 + t^2}{t} = - \frac{1 + t^2}{t^3}
\end{align}
$$

4. 设 $f(x)$ 在 $[a, b]$ 上连续，在 $(a, b)$ 内可导，且 $f(a) = f(b) = 0$. 证明在 $(a, b)$ 内至少存在一点 $\xi$，使得 $f'(\xi) + 2\xi f(\xi) = 0$.  
   证明：
   要证
   $$
   \exists \xi \in (a, b). f'(\xi) + 2\xi f(\xi) = 0
   $$
   即证
   $$
   \begin{align}
   [f'(\xi) + 2\xi f(\xi)] \cancel{e^{2\xi}}{\color{red} e^{\xi^2}} &= 0 \\
   f'(\xi) \cdot \cancel{e^{2\xi}}{\color{red} e^{\xi^2}} + f(\xi) \cdot 2\xi \cancel{e^{2\xi}}{\color{red} e^{\xi^2}} &= 0
   \end{align}
   $$
   设 $\cancel{\displaystyle g(x) = f(x)e^{2x}} \ {\color{red} \displaystyle g(x) = f(x)e^{x^2}}$，即证
   $$
   g'(\xi) = 0
   $$

   因为

   - $f(x), \cancel{e^{2x}} {\color{red} e^{x^2}}$ 在 $[a, b]$ 上连续，所以 $g(x)$ 在 $[a, b]$ 上连续；
   - $f(x), \cancel{e^{2x}} {\color{red} e^{x^2}}$ 在 $(a, b)$ 内可导，所以 $g(x)$ 在 $(a, b)$ 内可导；
   - $g(a) = g(b) = 0$

   所以由罗尔定理得
   $$
   \exists \xi \in (a, b). g'(\xi) = 0
   $$
   于是
   $$
   \exists \xi \in (a, b). f'(\xi) + 2\xi f(\xi) = 0
   $$
   

   $\square$

   
