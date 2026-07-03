Here are the equations for Chapter 2 of the DOE book in LaTeX format:

---

* Equation (2.1):

$$
\boxed{\text{User Comfort} = 4.575 + 1.325 \cdot \text{FOV} + 2.775 \cdot \text{Brightness} + 0.925 \cdot (\text{FOV} \cdot \text{Brightness})}
$$

---

* Equation (2.2):

$$
Y = \beta_0 + \beta_1 * X_1 + \beta_2 * X_2 + \beta_{12} * X_1 * X_2
$$

---

* Equation (2.3):

$$
\boxed{
\begin{aligned}
Y_1 &= \beta_0(+1) + \beta_1(-1) + \beta_2(-1) + \beta_{12}(-1)(-1) \\
Y_2 &= \beta_0(+1) + \beta_1(+1) + \beta_2(-1) + \beta_{12}(+1)(-1) \\
Y_3 &= \beta_0(+1) + \beta_1(-1) + \beta_2(+1) + \beta_{12}(-1)(+1) \\
Y_4 &= \beta_0(+1) + \beta_1(+1) + \beta_2(+1) + \beta_{12}(+1)(+1)
\end{aligned}
}
\implies
\boxed{
\begin{aligned}
Y_1 &= \beta_0(+1) + \beta_1(-1) + \beta_2(-1) + \beta_{12}(+1) \\
Y_2 &= \beta_0(+1) + \beta_1(+1) + \beta_2(-1) + \beta_{12}(-1) \\
Y_3 &= \beta_0(+1) + \beta_1(-1) + \beta_2(+1) + \beta_{12}(-1) \\
Y_4 &= \beta_0(+1) + \beta_1(+1) + \beta_2(+1) + \beta_{12}(+1)
\end{aligned}
}
$$

---

* Equation (2.4):

$$
\begin{array}{|c|}
\hline
M = \begin{bmatrix}
+1 & -1 & -1 & +1 \\
+1 & -1 & +1 & -1 \\
+1 & +1 & -1 & -1 \\
+1 & +1 & +1 & +1
\end{bmatrix} \\
\hline
\end{array}
$$

$$
\begin{array}{|c|}
\hline
\boldsymbol{\beta} = \begin{bmatrix}
\beta_0 \\
\beta_1 \\
\beta_2 \\
\beta_{12}
\end{bmatrix} \\
\hline
\end{array}
\quad
\begin{array}{|c|}
\hline
\mathbf{Y} = \begin{bmatrix}
Y_1 \\
Y_2 \\
Y_3 \\
Y_4
\end{bmatrix} \\
\hline
\end{array}
$$

---

* Equation (2.5):

$$
\mathbf{Y} = M \boldsymbol{\beta}
$$

---


* Equation (2.6):

$$
\boldsymbol{\beta} = M^{-1} \mathbf{Y}
$$

---
