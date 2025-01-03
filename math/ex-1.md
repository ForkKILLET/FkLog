# 高等数学 I (1) 第 4 周作业

1. 证明 $\lim_{n \to + \infty}\frac{3n + 1}{2n + 1} = \frac32$.
   $$
   \left.
       \begin{array}{rl}
       \forall \varepsilon > 0. \left| x_n - \frac32 \right| &< \varepsilon \\
       \frac32 - \frac{3n + 1}{2n + 1} &< \varepsilon \\
       3(2n + 1) - 2(3n + 1) &< 2\varepsilon(2n + 1) \\
       4\varepsilon n + 2\varepsilon - 1 &> 0 \\
       n &> \frac{1 - 2\varepsilon}{4\varepsilon} = \frac1{4\varepsilon} - \frac12 \\
       \end{array}
   \right. \\
   
   \begin{array}{l}
   & \forall \varepsilon > 0. \exists N = \left\lceil \frac1{4\varepsilon} - \frac12 \right\rceil. \forall n > N. \left| x_n - \frac32 \right| < \varepsilon \\
   & \lim_{n \to + \infty}\frac{3n + 1}{2n + 1} = \frac32
   \end{array}
   $$
   
2. 对数列 $\{ x_n \}$，若 $\lim_{k \to +\infty}x_{2k - 1} = a, \lim_{k \to +\infty}x_{2k} = a$，证明 $\lim_{n \to +\infty}x_n = a$.
   $$
   \begin{array}{l}
   & \lim_{k \to +\infty}x_{2k - 1} = a, \lim_{k \to +\infty}x_{2k} = a \\
   & \forall \varepsilon > 0. \exists K = K_1(\varepsilon) \in \N. \forall k > K. \left| x_{2k - 1} - a \right| < \varepsilon
       &(K_1(\varepsilon) := \min \{ K | \forall k > K. \left| x_{2k - 1} - a \right| < \varepsilon \}) \\
   & \forall \varepsilon > 0. \exists K = K_2(\varepsilon) \in \N. \forall k > K. \left| x_{2k} - a \right| < \varepsilon
       &(K_2(\varepsilon) := \min \{ K | \forall k > K. \left| x_{2k} - a \right| < \varepsilon \}) \\
   & \forall \varepsilon > 0. \left| x_n - a \right| = \left\{\
       \begin{array}{l}
       \left| x_{2k} - a \right| < \varepsilon &(n = 2k- 1) \\
       \left| x_{2k - 1} - a \right| < \varepsilon &(n = 2k) \\
       \end{array}
   \right. \\
   & \left\{\
       \begin{array}{l}
       k > K_1(\varepsilon) &(n = 2k - 1) \\
       k > K_2(\varepsilon) &(n = 2k) \\
       \end{array}
   \right. \\
   & \left\{\
       \begin{array}{l}
       n > 2K_1(\varepsilon) - 1 &(n = 2k - 1) \\
       n > 2K_2(\varepsilon) &(n = 2k) \\
       \end{array}
   \right. \\
   & n > \max\{ 2K_1(\varepsilon) - 1, 2K_2(\varepsilon) \} \\
   & \forall \varepsilon > 0. \exists N = \max\{ 2K_1(\varepsilon) - 1, 2K_2(\varepsilon) \}. \forall n > N. \left| x_n - a \right| < \varepsilon \\
   & \lim_{n \to +\infty} x_n = a
   \end{array}
   $$

3. 计算 $\lim_{n \to \infty} \left( 1 + \frac12 + \frac14 + \cdots + \frac1{2^n} \right)$.
   $$
   \begin{array}{l}
   \lim_{n \to \infty} \left( 1 + \frac12 + \frac14 + \cdots + \frac1{2^n} \right)
   &= \lim_{n \to \infty} \left( 1 + \frac12 + \frac14 + \cdots + \frac1{2^n} + \frac1{2^n} - \frac1{2^n} \right) \\
   &= \lim_{n \to \infty} \left( 2 - \frac1{2^n} \right) \\
   &= \lim_{n \to \infty} 2 - \lim_{n \to \infty} \frac1{2^n} \\
   &= 2 - 0 \\
   &= 2
   \end{array}
   $$

4. 计算 $\lim_{n \to +\infty} \dfrac{1 + 2 + 3 + \cdots + (n - 1)}{n^2}$.
   $$
   \begin{array}{l}
   \lim_{n \to +\infty} \dfrac{1 + 2 + 3 + \cdots + (n - 1)}{n^2}
   &= \lim_{n \to +\infty} \dfrac{\frac12 [1 + (n - 1)](n - 1)}{n^2} \\
   &= \lim_{n \to +\infty} \dfrac{n^2 - n}{2n^2} \\
   &= \lim_{n \to +\infty} \dfrac{1 - \frac1n}{2} \\
   &= \frac12 \lim_{n \to +\infty} \left( 1 - \frac1n \right) \\
   &= \frac12 (\lim_{n \to +\infty} 1 - \lim_{n \to +\infty} \frac1n) \\
   &= \frac12 (1 - 0) \\
   &= \frac12
   \end{array}
   $$
