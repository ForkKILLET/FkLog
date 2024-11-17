# 高数 I (1) 第 11 周作业

1. 求函数 $y = \dfrac{1 + 3x}{\sqrt{4 + 5x^2}}$ 的极值.  
   解：  
   $$
   \begin{align}
   y'(x)
   &= \frac{3\sqrt{4 + 5x^2} - \dfrac{(1 + 3x) \cdot 10x}{2\sqrt{4 + 5x^2}}}{4 + 5x^2} \\
   &= \frac{12 + 15x^2 - 5x - 15x^2}{(4 + 5x^2)^\frac32} \\
   y'(x_0) &= 0 \\
   12 - 5x_0 &= 0 \\
   x _0&= \frac{12}{5} \\
   \forall x < x_0. y'(x) &> 0 \\
   \forall x < x_0. y'(x) &< 0 \\
   \therefore y(x_0) &= \frac{1 + \frac{3 \times 12}5}{\sqrt{4 + 5 \times \left( \frac{12}{5} \right)^2}} = \frac{\sqrt{205}}{10}\ 是极大值
   \end{align}
   $$

2. 要造一圆柱形油罐，体积为 $V$，问底面半径 $r$ 和高 $h$ 各等于多少时，才能使表面积最小？这时底面直径与高的比是多少？  
   解：
   $$
   \begin{align}
   V &= \pi r^2 h \\
   h &= \frac{V}{\pi r^2} \\
   S(r) &= 2 \pi r ^2 + 2 \pi r h = 2\pi r^2 + 2\frac{V}{r} (r \in (0, +\infty)) \\
   S'(r) &= 4\pi r - \frac{2V}{r^2} = 0 \\
   r &= \sqrt[3]{\frac{V}{2\pi}} \quad (经检验为唯一的极小值点) \\
   h &= \sqrt[3]{\frac{V^3}{\pi^3 \left( \dfrac{V}{2\pi} \right)^2}} = \sqrt[3]{\frac{4V}{\pi}} \\
   \frac{2r}{h} &= \frac{\sqrt[3]{\frac{4V}{\pi}}}{\sqrt[3]{\frac{4V}{\pi}}} = 1
   \end{align}
   $$

3. 求以下不定积分

   1. $\displaystyle \int \frac{\mathrm dx}{x^2\sqrt{x}}$  
      解：
      $$
      \begin{align}
      I
      &= \int \frac{2}{x^2} \cdot \frac{\mathrm dx}{2\sqrt{x}} \\
      &= \int \frac{2}{t^4} \mathrm dt \quad (t := \sqrt{x}) \\
      &= -\frac{2}{3t^3} + C \\
      &= -\frac{2}{3}x^{-\frac32} + C
      \end{align}
      $$

   2. $\displaystyle \int (x^2 + 1)^2 \mathrm dx$  
      解：
      $$
      \begin{align}
      I
      &= \int (x^4 + 2x^2 + 1) \mathrm dx \\
      &= \int x^4 \mathrm dx + \int 2x^2 \mathrm dx + \int \mathrm dx \\
      &= \frac{x^5}{5} + \frac{2x^3}{3} + x + C
      \end{align}
      $$

   3. $\displaystyle \int e^x \left( 1 - \frac{e^{-x}}{\sqrt x} \right) \mathrm dx$  
      解：
      $$
      \begin{align}
      I
      &= \int \left( e^x - \frac{1}{\sqrt x} \right) \mathrm dx \\
      &= \int e^x \mathrm dx - \int \frac{1}{\sqrt x} \mathrm dx \\
      &= e^x - 2\sqrt x + C
      \end{align}
      $$

   4. $\displaystyle \int \frac{\mathrm dx}{1 + \cos 2x}$  
      解：  
      $$
      \begin{align}
      I
      &= \int \frac{\mathrm dx}{1 + \cos^2 x - \sin^2 x} \\
      &= \int \frac{\mathrm dx}{2\cos^2 x} \\
      &= \frac12 \int \sec^2 x \mathrm dx \\
      &= \frac{\tan x}{2} + C
      \end{align}
      $$

   5. $\displaystyle \int \frac{x^2}{x^2 + 1} \mathrm dx$  
      解：  
      $$
      \begin{align}
      I
      &= \int \left( 1 - \frac{1}{x^2 + 1} \right) \mathrm dx \\
      &= \int \mathrm dx - \int \frac{\mathrm dx}{x^2 + 1} \\
      \int \frac{\mathrm dx}{x^2 + 1}
      &= \int \frac{\mathrm d(\tan t)}{\tan^2 t + 1} \quad (x =: \tan t) \\
      &= \int \frac{\sec^2 t \mathrm dt}{\sec^2 t} \\
      &= \int \mathrm dt \\
      &= t + C \\
      &= \arctan x + C \\
      I
      & = x - \arctan x + C
      \end{align}
      $$

4. 求以下不定积分

   1. $\displaystyle \int \frac{\mathrm dx}{1 - 2x}$  
      解：  
      $$
      \begin{align}
      I
      &= -\frac12 \int \frac{\mathrm d(1 - 2x)}{1 - 2x} \\
      &= -\frac12 \ln |1 - 2x| + C
      \end{align}
      $$

   2. $\displaystyle \int \frac{x}{\sqrt{2 - 3x^2}} \mathrm dx$  
      解：
      $$
      \begin{align}
      I
      &= -\frac16 \int \frac{\mathrm d (2 - 3x^2)}{\sqrt{2 - 3x^2}} \\
      &= -\frac16 \cdot \left( \frac{(2 - 3x^2)^{\frac12}}{\frac12} + C \right) \\
      &= -\frac13 \sqrt{2 - 3x^2} + C
      \end{align}
      $$

   3. $\displaystyle \int \tan^{10}x \cdot \sec^2 x \mathrm dx$  
      解：
      $$
      \begin{align}
      I
      &= \tan^{10}x (\mathrm d \tan x) \\
      &= \frac{1}{11}\tan^{11}x + C
      \end{align}
      $$

   4. $\displaystyle \int \tan \sqrt{1 + x^2} \cdot \frac{x \mathrm dx}{{\sqrt{1 + x^2}}}$  
      解：
      $$
      \begin{align}
      I
      &= \int \tan \sqrt{1 + x^2} \cdot \frac{2x}{{2\sqrt{1 + x^2}}}  \mathrm dx \\
      &= \int \tan \sqrt{1 + x^2} \ \mathrm d \left( \sqrt{1 + x^2} \right) \\
      &= -\ln \left| \cos \sqrt{1 + x^2} \right| + C \\
      \end{align}
      $$

   5. $\displaystyle \int \sin 5x \sin 7x \mathrm dx$  
      解：
      $$
      \begin{align}
      I
      &= \int \frac12 \big( \cos (5x - 7x) - \cos (5x + 7x) \big) \mathrm dx \\
      &= \frac12 \left( \int \cos 2x \mathrm dx - \int \cos 12x \mathrm dx \right) \\
      &= \frac12 \left( \frac12 \sin 2x - \frac{1}{12} \sin 12x + C \right) \\
      &= \frac14 \sin 2x - \frac{1}{24} \sin 12x + C
      \end{align}
      $$
      

      

      

      

      
