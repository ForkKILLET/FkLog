(1)
$$
\begin{align}
\int \frac{1}{5x + 3} \mathrm dx &= \frac15 \ln \left| x + \frac35 \right| + C
\end{align}
$$

(2)
$$
\begin{align}
\int e^{2x + 3} \mathrm dx &= \frac12 e^{2x + 3} + C
\end{align}
$$

(3)
$$
\begin{align}
\int xe^{x^2} \mathrm dx &= \frac12 e^{x^2} + C
\end{align}
$$

(4)
$$
\begin{align}
\int x\sqrt{1 - x^2} \mathrm dx
&= -\frac12 \int \sqrt{1 - x^2}\mathrm d\left( 1 - x^2 \right) \\
&= -\frac13 \left( 1 - x^2 \right)^{\frac32} + C
\end{align}
$$

(5)
$$
\begin{align}
\int \frac{1}{x^2} \sin \frac{1}{x} \mathrm dx
&= - \int \sin \frac{1}{x} \mathrm d \left( \frac{1}{x} \right) \\
&= \cos \frac{1}{x} + C 
\end{align}
$$

(6)
$$
\begin{align}
\int \frac{e^{3\sqrt{x}}}{\sqrt{x}} \mathrm dx
&= \frac23 \int e^{3\sqrt{x}} \mathrm d \left( 3\sqrt{x} \right) \\
&= \frac23 e^{3\sqrt{x}} + C
\end{align}
$$

(7)
$$
\begin{align}
\int \frac{1}{x(1 + x^6)} \mathrm dx
&= \color{red}{ \int \frac{x^5}{x^6(1 + x^6)} \mathrm dx } \\
&= \int \left( \frac{x^5}{x^6} - \frac{x^5}{1 + x^6} \right) \mathrm dx \\
&= \int \frac{1}{x} \mathrm dx - \frac16 \int \frac{1}{1 + x^6} \mathrm d \left( x^6 \right) \\
&= \ln |x| - \frac16 \ln \left| 1 + x^6 \right| + C \\
&= \ln |x| - \frac16 \ln \left( 1 + x^6 \right) + C
\end{align}
$$

(8)
$$
\begin{align}
\int \cos 2x \mathrm dx = \frac12 \sin 2x + C
\end{align}
$$

(9)
$$
\begin{align}
\int \frac{\sin x}{\sqrt{5 + \cos x}}\mathrm dx
&= - \int \frac{1}{\sqrt{5 + \cos x}} \mathrm d (5 + \cos x) \\
&= -2 \sqrt{5 + \cos x} + C
\end{align}
$$

(10)
$$
\begin{align}
\int \tan^4 x \mathrm dx
&= \int \frac{\sin^4 x}{\cos^4 x} \mathrm dx \\
&= \int \frac{(1 - \cos^2 x)^2}{\cos^4 x} \mathrm dx \\
&= \int \left( 1 - \frac{2}{\cos^2 x} + \frac{1}{\cos^4 x} \right) \mathrm dx \\
&= \int \mathrm dx - 2 \int \frac{\mathrm dx}{\cos^2x} + \int \frac{\mathrm dx}{\cos^4 x} \\
\int \frac{\mathrm dx}{\cos^4 x} &= \int \frac{\sin^2 x + \cos^2 x}{\cos^4 x} \mathrm dx \\
&= \int \frac{\tan^2 x}{\cos^2 x}\mathrm dx + \int \frac{\mathrm dx}{\cos^2 x} \\
&= \int \tan^2 x \mathrm d (\tan x) + \tan x + C \\
&= \frac13 \tan^3 x + \tan x + C \\
\int \tan^4 x \mathrm dx
&= x - \tan x + \frac13 \tan^3 x + C
\end{align}
$$

(10\*)
$$
\begin{align}
\int \tan^n x \mathrm dx
&= \int \tan^{n - 2} (\sec^2x - 1) \mathrm dx \\
&= \int \tan^{n - 2} x \mathrm d (\tan x) - \int \tan^{n - 2}x \mathrm dx \\
&= \frac{1}{n - 1} \tan^{n - 1} x - \int \tan^{n - 2}x \mathrm dx
\end{align}
$$

(11)
$$
\begin{align}
\int \frac{e^{2x}}{1 + e^x} \mathrm dx
&= \int \frac{e^x}{1 + e^x} \mathrm d \left( e^x \right) \\
&= \int \mathrm d \left( e^x \right) - \int \frac{1}{1 + e^x} \mathrm d \left( e^x \right) \\
&= e^x - \ln \left| 1 + e^x \right| + C
\end{align}
$$

(12)
$$
\begin{align}
\int \frac{1}{1 + e^x} \mathrm dx
&= \int \mathrm dx - \int \frac{e^x}{1 + e^x} \mathrm dx \\
&= x - \int \frac{1}{1 + e^x} \mathrm d \left( e^x \right) \\
&= x - \ln \left| 1 + e^x \right| + C
\end{align}
$$

(13)
$$
\begin{align}
\int \frac{1}{x \ln^2 x} \mathrm dx
&= \int \frac{1}{\ln^2 x} \mathrm d (\ln x) \\
&= - \frac{1}{\ln x} + C
\end{align}
$$

(14)
$$
\begin{align}
\int \frac{1}{x(1 + 2 \ln x)} \mathrm dx = \frac12 \ln | 1 + 2 \ln x | + C
\end{align}
$$

(15)
$$
\begin{align}
\int \frac{1}{a^2 \cos^2 x + b^2 \sin^2 x} \mathrm dx
&= \color{red} \int \frac{\sec^2 x}{a^2 + b^2\tan^2 x} \mathrm dx \\
&= \int \frac{1}{a^2 + b^2t^2} \mathrm dt \quad (t := \tan x) \\
&= \frac{1}{a^2} \int \frac{1}{1 + \left( \frac{bt}{a} \right)^2} \mathrm dt \\
&= \frac{1}{a^2} \frac{a}{b} \int \frac{1}{1 + u^2} \mathrm du \quad \left( u := \frac{bt}{a} \right) \\
&= \frac{1}{ab} \arctan u + C \\
&= \frac{1}{ab} \arctan \left( \frac{b}{a}\tan x \right) + C
\end{align}
$$

(16)
$$
\begin{align}
\int \frac{1}{a^2 + x^2} \mathrm dx
&= \frac{1}{a^2} \int \frac{1}{1 + \left( \frac{x}{a} \right)^2} \mathrm dx \\
&= \frac{1}{a} \int \frac{1}{1 + \left( \frac{x}{a} \right)^2} \mathrm d \left( \frac{x}{a} \right) \\
&= \frac{1}{a} \arctan \frac{x}{a} + C
\end{align}
$$

(17)
$$
\begin{align}
\int \frac{1}{a^2 - x^2} \mathrm dx
&= \int \frac{1}{(a + x)(a - x)} \mathrm dx \\
&= \frac{1}{2a} \int \left( \frac{1}{a + x} + \frac{1}{a - x} \right) \mathrm dx \\
&= \frac{1}{2a} \ln \left| \frac{a + x}{a - x} \right| + C
\end{align}
$$

(18)
$$
\begin{align}
\int \frac{1}{\sqrt{a^2 - x^2}} \mathrm dx
&= \frac{1}{a} \int \frac{1}{\sqrt{1 - \left( \frac{x}{a} \right)^2}} \mathrm dx \\
&= \int \frac{1}{\sqrt{1 - \left( \frac{x}{a} \right)^2}} \mathrm d \left( \frac{x}{a} \right) \\
&= \arcsin \frac{x}{a} + C
\end{align}
$$

(19)
$$
\begin{align}
\int \sin^3 x \mathrm dx
&= \int \sin x (1 - \cos^2 x) \mathrm dx \\
&= \int \sin x \mathrm dx - \int \cos^2 x \sin x \mathrm dx \\
&= - \cos x + \int \cos^2 x \mathrm d (\cos x) \\
&= - \cos x + \frac13 \cos^3 x + C
\end{align}
$$

(20)
$$
\begin{align}
\int \sin^5 x \mathrm dx
&= \int \sin^3 x (1 - \cos^2 x) \mathrm dx \\
&= \int \sin^3 x \mathrm dx - \int \cos^2 x (1 - \cos^2 x) \sin x \mathrm dx \\
&= \int \sin^3 x \mathrm dx + \int \cos^2 x \mathrm d (\cos x) - \int \cos^4 \mathrm d (\cos x) \\
&= - \cos x + \frac23 \cos^3 x - \frac15 \cos^5 x + C
\end{align}
$$

(21)
$$
\begin{align}
\int \cos^3 x \mathrm dx
&= \int \cos x (1 - \sin^2 x) \mathrm dx \\
&= \int \cos x \mathrm dx - \int \sin^2 x \mathrm d (\sin x) \\
&= \sin x - \frac13 \sin^3 x + C
\end{align}
$$

(22)
$$
\begin{align}
\int \sin^4 x \mathrm dx
&= \color{red} \int \left( \frac{1 - \cos 2x}{2} \right)^2 \mathrm dx \\
&= \frac14 \int \cos^2 2x \mathrm dx - \frac12 \int \cos 2x \mathrm dx + \frac14 \int \mathrm dx \\
\int \cos^2 2x \mathrm dx
&= \frac12 \int \left( 2\cos^2 2x - 1 + 1 \right) \mathrm dx \\
&= \frac12 \int \cos 4x \mathrm dx + \frac12 \int \mathrm dx \\
&= \frac18 \sin 4x + \frac12 x + C \\
\int \sin^4 x \mathrm dx
&= \frac{1}{32} \sin 4x + \frac18 x - \frac14 \sin 2x + \frac14 x + C \\
&= \frac{1}{32} \sin 4x - \frac14 \sin 2x + \frac38 x + C
\end{align}
$$

(22\*)
$$
\begin{align}
\int \sin^n x \mathrm dx
&= \int - \sin^{n - 1} x \mathrm d (\cos x) \\
&= - \sin^{n - 1} x \cos x + \int \cos x \mathrm d \left( \sin^{n - 1} x \right) \\
&= - \sin^{n - 1} x \cos x + \int (n - 1) \cos^2 x \sin^{n - 2} x \mathrm dx \\
&= - \sin^{n - 1} x \cos x + (n - 1) \int \sin^{n - 2} x \mathrm dx - (n - 1) \int \sin^n x \mathrm dx \\

n \int \sin^n x \mathrm dx &= - \sin^{n - 1}x \cos x + (n - 1) \int \sin^{n - 2} x \mathrm dx \\
\int \sin^n x \mathrm dx &= - \frac{1}{n} \sin^{n - 1}x \cos x + \frac{n - 1}{n} \int \sin^{n - 2} x \mathrm dx \\
\int \cos^n x \mathrm dx &= \frac{1}{n} \cos^{n - 1} x \sin x + \frac{n - 1}{n} \int \cos^{n - 2} x \mathrm dx
\end{align}
$$

(22\*\*)
$$
\begin{align}
\int \sin^{2k + 1} x \mathrm dx
&= \int \left( 1 - \cos^2 x \right)^k \sin x \mathrm dx \\
&= - \int \left( 1 - \cos^2 x \right)^k \mathrm d (\cos x) \\
&= - \int \sum_{i = 0}^k (- \cos^2 x)^{i} \mathrm d (\cos x) \\
&= - \sum_{i = 0}^k\ (-1)^i \int \cos^{2i} x \mathrm d (\cos x) \\
&= - \sum_{i = 0}^k \frac{(-1)^i}{2i + 1} \cos^{2i + 1} x + C \\

\int \cos^{2k + 1} x \mathrm dx
&= \int \left( 1 - \sin^2 x \right)^k \cos x \mathrm dx \\
&= \int \left( 1 - \sin^2 x \right)^k \mathrm d (\sin x) \\
&= \int \sum_{i = 0}^k (- \sin^2 x)^{i} \mathrm d (\sin x) \\
&= \sum_{i = 0}^k\ (-1)^i \int \sin^{2i} x \mathrm d (\sin x) \\
&= \sum_{i = 0}^k \frac{(-1)^i}{2i + 1} \sin^{2i + 1} x + C \\
\end{align}
$$

(23)
$$
\begin{align}
\int \sin^2 x \cos^5 x \mathrm dx
&= \int \cos^5 x \mathrm dx - \int \cos^7 x \mathrm dx \\

\int \cos^5 x \mathrm dx
&= \int \left( 1 - \sin^2 x \right)^2 \mathrm d (\sin x) \\
&= \int \left( \sin^4 x - 2 \sin^2 x + 1 \right) \mathrm d (\sin x) \\
&= \frac15 \sin^5 x - \frac23 \sin^3 x + x + C \\

\int \cos^7 x \mathrm dx
&= \int \left( 1 - \sin^2 x \right)^3 \mathrm d (\sin x) \\
&= \int \left( - \sin^6 x + 3 \sin^4 x - 3 \sin^2 x + 1 \right) \mathrm d (\sin x) \\
&= - \frac17 \sin^7 x + \frac35 \sin^5 x - \sin^3 x + x + C \\

\int \sin^2 x \cos^5 x \mathrm dx
&= \frac17 \sin^7 x - \frac25 \sin^5 x + \frac13 \sin^3 x + C
\end{align}
$$

(24)
$$
\begin{align}
\int \sec x \mathrm dx
&= \int \frac{1}{\cos x} \mathrm dx \\
&= \color{red} \int \frac{1}{\cos^2 x} \mathrm d (\sin x) \\
&= \int \frac{1}{(1 + \sin x)(1 - \sin x)} \mathrm d (\sin x) \\
&= \frac12 \int \left( \frac{1}{1 + \sin x} + \frac{1}{1 - \sin x} \right) \mathrm d (\sin x) \\
&= \frac12 \ln \left| \frac{1 + \sin x}{1 - \sin x} \right| + C \\
&= \frac12 \ln \left| \frac{(1 + \sin x)^2}{\cos^2 x} \right| +C \\
&= \ln \left| \frac{1 + \sin x}{\cos x} \right| + C \\
&= \ln | \sec x + \tan x | + C
\end{align}
$$

(25)
$$
\begin{align}
\int \sec^3 x \tan^5 x \mathrm dx
&= \int \sec^2 x \tan^4 x \mathrm d (\sec x) \\
&= \int \sec^2 x (\sec^2 - 1)^2 \mathrm d (\sec x) \\
&= \int \left( \sec^6 x - 2 \sec^4 x + \sec^2 x \right) \mathrm d (\sec x) \\
&= \frac17 \sec^7 x - \frac25 \sec^5 x + \frac13 \sec^3 x + C
\end{align}
$$

(26)
$$
\begin{align}
\int \tan^5 x \sec^4 x \mathrm dx
&= \int \tan^5 x \sec^2 x \mathrm d (\tan x) \\
&= \int \tan^5 x (\tan^2 x + 1) \mathrm d (\tan x) \\
&= \int \left( \tan^7 x + \tan^5 x \right) \mathrm d (\tan x) \\
&= \frac18 \tan^8 x + \frac16 \tan^6 x + C
\end{align}
$$

(27)
$$
\begin{align}
\int \frac{\ln (\tan x)}{\sin x \cos x} \mathrm dx
&= \int \frac{\ln (\tan x) \cos x}{\sin x \cos^2 x} \mathrm dx \\
&= \int \frac{\ln (\tan x)}{\tan x \cos^2 x} \mathrm dx \\
&= \int \frac{\ln t}{t} \mathrm dt \quad (t := \tan x) \\
&= \int \ln t \mathrm d (\ln t) \\
&= \frac12 \ln^2 t + C \\
&= \frac12 \ln^2 (\tan x) + C
\end{align}
$$

(28)
$$
\begin{align}
\int \cos 3x \cos 2x \mathrm dx
&= \frac12 \int \left( \cos 5x + \cos x \right) \mathrm dx \\
&= \frac{1}{10} \sin 5x + \frac12 \sin x + C
\end{align}
$$

(29)
$$
\begin{align}
\int \frac{\sin x}{1 + \sin x} \mathrm dx
&= \int \frac{\sin x - \sin^2 x}{\cos^2 x} \mathrm dx \\
&= \int \frac{\sin x}{\cos^2 x} \mathrm dx - \int \frac{1 - \cos^2 x}{\cos^2 x} \mathrm dx \\
&= \int \tan x \sec x \mathrm dx - \int \sec^2 x + \int \mathrm dx \\
&= \sec x - \tan x + x + C
\end{align}
$$

(30)
$$
\newcommand{\sgn}{\mathrm{sgn\,}}
\begin{align}
\int \frac{1}{\sin 2x \cos x} \mathrm dx
&= \frac12 \int \frac{1}{\sin x \cos^2 x} \mathrm dx \\
&= \frac12 \int \frac{1}{\sin x} \mathrm d (\tan x) \\

\int \frac{1}{\sin x} \mathrm d (\tan x)
&= \frac{\tan x}{\sin x} - \int \tan x \mathrm d \left( \frac{1}{\sin x} \right) \\

\int \tan x \mathrm d \left( \frac{1}{\sin x} \right)
&= - \int \frac{\tan x \cos x}{\sin^2 x} \mathrm dx \\
&= - \int \frac{1}{\sin x} \mathrm dx \\
&= - \int \frac{\sin x}{1 - \cos^2 x} \mathrm dx \\
&= \int \frac{1}{(1 + \cos x)(1 - \cos x)} \mathrm d (\cos x) \\
&= \frac12 \ln \frac{1 + \cos x}{1 - \cos x} + C \\

\int \frac{1}{\sin 2x \cos x} \mathrm dx
&= \frac12 \left( \sec x - \frac12 \ln \frac{1 + \cos x}{1 - \cos x} \right) + C \\
&= \frac12 \sec x - \frac14 \ln \frac{1 + \cos x}{1 - \cos x} + C
\end{align}
$$

(30+)
$$
\begin{align}
\int \frac{1}{\sin 2x \cos x} \mathrm dx
&= \frac12 \int \frac{1}{\sin x \cos^2 x} \mathrm dx \\
&= \color{red} \frac12 \int \frac{\sin^2 x + \cos^2 x}{\sin x \cos^2 x} \mathrm dx \\
&= \frac12 \int \frac{\sin x}{\cos^2 x} \mathrm dx + \frac12 \int \frac{1}{\sin x} \mathrm dx \\

\int \frac{\sin x}{\cos^2 x} \mathrm dx
&= \int - \frac{1}{\cos^2 x} \mathrm d (\cos x) \\
&= \frac{1}{\cos x} + C \\
&= \sec x + C \\

\int \frac{1}{\sin x} \mathrm dx
&= \int \frac{\sin x}{1 - \cos^2 x} \mathrm dx \\
&= - \int \frac{1}{(1 + \cos x)(1 - \cos x)} \mathrm d (\cos x) \\
&= - \frac12 \ln \frac{1 + \cos x}{1 - \cos x} + C \\

\int \frac{1}{\sin 2x \cos x} \mathrm dx
&= \frac12 \sec x - \frac14 \ln \frac{1 + \cos x}{1 - \cos x} + C
\end{align}
$$

(31)
$$
\begin{align}
\int \frac{\arctan \sqrt{x}}{\sqrt{x}(1 + x)} \mathrm dx
&= 2 \int \arctan \sqrt{x} \mathrm d \left( \arctan \sqrt{x} \right) \\
&= \arctan^2 \sqrt{x} + C
\end{align}
$$

(32)
$$
\begin{align}
\int \frac{1 + \ln x}{2 + (x \ln x)^2} \mathrm dx
&= \int \frac{1}{2 + t^2} \mathrm dt \quad (t := x \ln x) \\
&= \frac12 \int \frac{1}{1 + \left( \frac{t}{\sqrt{2}} \right)^2} \mathrm dt \\
&= \frac{\sqrt{2}}{2} \arctan \frac{t}{\sqrt{2}} + C \\
&= \frac{\sqrt{2}}{2} \arctan \frac{x \ln x}{\sqrt{2}} + C
\end{align}
$$

(33)
$$
\begin{align}
\int \frac{2x - 3}{x^2 - 3x + 1} \mathrm dx
&= \ln \left| x^2 - 3x + 1 \right| + C
\end{align}
$$

(34)
$$
\begin{align}
\int \frac{x + 1}{x^2 - 3x + 1} \mathrm dx
&= \int \frac{\frac12 (2x - 3) + \frac52}{x^2 - 3x + 1} \mathrm dx \\
&= \frac12 \int \frac{2x - 3}{x^2 - 3x + 1} \mathrm dx + \frac52 \int \frac{1}{x^2 - 3x + 1} \mathrm dx \\

\int \frac{1}{x^2 - 3x + 1} \mathrm dx
&= \int \frac{1}{\left( x - \frac{3 + \sqrt{5}}{2} \right)\left( x - \frac{3 - \sqrt{5}}{2} \right)} \mathrm dx \\
&= \frac{1}{\sqrt{5}} \int \left( \frac{1}{x - \frac{3 + \sqrt{5}}{2}} - \frac{1}{x - \frac{3 - \sqrt{5}}{2}} \right) \mathrm dx \\
&= \frac{1}{\sqrt{5}} \ln \left| \frac{x - \frac{3 + \sqrt{5}}{2}}{x - \frac{3 - \sqrt{5}}{2}} \right| + C \\

\int \frac{x + 1}{x^2 - 3x + 1} \mathrm dx
&= \frac12 \ln |x^2 - 3x + 1| + \frac{\sqrt{5}}{2} \ln \left| \frac{x - \frac{3 + \sqrt{5}}{2}}{x - \frac{3 - \sqrt{5}}{2}} \right| + C
\end{align}
$$

(35)
$$
\begin{align}
\int \frac{1 - \ln x}{(x - \ln x)^2} \mathrm dx
&= \int \frac{1 - \ln x}{x^2} \frac{1}{\left( 1 - \frac{\ln x}{x} \right)^2} \mathrm dx \\
&= \int \frac{1}{(1 - t)^2} \mathrm dt \quad \left( t := \frac{\ln x}{x} \right) \\
&= \frac{1}{1 - t} + C \\
&= \frac{1}{1 - \frac{\ln x}{x}} + C \\
&= \frac{x}{x - \ln x} + C
\end{align}
$$

(36)
$$
\begin{align}
\int \sqrt{a^2 - x^2} \ \mathrm dx \quad (a > 0)
&= a \int \sqrt{1 - \left( \frac{x}{a} \right)^2} \ \mathrm dx \\
&= a^2 \int \sqrt{1 - \left( \frac{x}{a} \right)^2} \ \mathrm d \left( \frac{x}{a} \right) \\
&= a^2 \int \sqrt{1 - \sin^2 t} \ \mathrm d (\sin t) \quad \left( \sin t := \frac{x}{a}, t \in \left( -\frac{\pi}{2}, \frac{\pi}{2} \right) \right) \\
&= a^2 \int \cos^2 t \mathrm dt \\
&= a^2 \int \frac{\cos 2t + 1}{2} \mathrm dt \\
&= \frac{a^2}{4} \int \cos 2t \mathrm d (2t) + \frac{a^2}{2} \int \mathrm dt \\
&= - \frac{a^2}{4} \sin 2t + \frac{a^2}{2}t + C \\
&= \frac{a^2}{2} (- \sin t \cos t + 1) + C \\
&= \frac{x \sqrt{a^2 - x^2}}{2} + \frac{a^2}{2} \arcsin \frac{x}{a} + C
\end{align}
$$

(37)
$$
\begin{align}
\int \frac{1}{\sqrt{x^2 - a^2}} \mathrm dx
&= \int \frac{|a|}{|a|} \frac{1}{\sqrt{\sec^2 t - 1}} \mathrm d (\sec t) \quad \left( \sec t := \frac{x}{|a|}, t \in \left( 0, \frac{\pi}{2} \right) \right) \\
&= \int \frac{1}{\tan t} \sec t \tan t \mathrm dt \\
&= \int \sec t \mathrm dt \\
&= \ln |\tan t + \sec t| + C \\
&= \ln \left| \frac{\sqrt{x^2 - a^2}}{|a|} + \frac{x}{|a|} \right| + C \\
&= \ln \left| \sqrt{x^2 - a^2} + x \right| + C
\end{align}
$$

(38)
$$
\begin{align}
\int \frac{1}{\sqrt{a^2 + x^2}} \mathrm dx
&= \frac{1}{|a|} \int \frac{1}{\sqrt{1 + \left( \frac{x}{|a|} \right)^2}} \mathrm dx \\
&= \int \frac{1}{\sqrt{1 + \left( \frac{x}{a} \right)^2}} \mathrm d \left( \frac{x}{a} \right) \\
&= \int \frac{1}{\sqrt{1 + \tan^2 t}} \mathrm d (\tan t) \quad \left( \tan t := \frac{x}{a} \right) \\
&= \int \sec t \mathrm dt \\
&= \ln |\tan t + \sec t| + C \\
&= \ln \left| \frac{x}{|a|} + \frac{\sqrt{x^2 + a^2}}{|a|} \right| + C \\
&= \ln \left| x + \sqrt{x^2 + a^2} \right| + C
\end{align}
$$