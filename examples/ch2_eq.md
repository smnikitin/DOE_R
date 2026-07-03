Here are the equations for Chapter 2 of the DOE book in LaTeX format:

---

* Equation (2.1):

$$
\boxed{\text{User Comfort} = 4.575 + 1.325 \times \text{FOV} + 2.775 \times \text{Brightness} + 0.925 \times (\text{FOV} \times \text{Brightness})}
$$

---

* Equation (2.2):

$$
Y = \beta_0 + \beta_1 \times  X_1 + \beta_2 \times  X_2 + \beta_{12} \times  X_1 \times  X_2
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

* Equation (2.7):

$$
\begin{bmatrix}
\beta_0 \\
\beta_1 \\
\beta_2 \\
\beta_{12}
\end{bmatrix}
= \frac{1}{4}
\begin{bmatrix}
+1 & +1 & +1 & +1 \\
-1 & -1 & +1 & +1 \\
-1 & +1 & -1 & +1 \\
+1 & -1 & -1 & +1
\end{bmatrix}
\begin{bmatrix}
Y_1 \\
Y_2 \\
Y_3 \\
Y_4
\end{bmatrix}
$$

---

* Equation (2.8):

$$
\beta_{12} = 0.25 \times  (1.4 - 2.2 - 5.1 + 9.6) = 0.925
$$

---

* Equation (2.9):

$$
\begin{aligned}
\begin{pmatrix} y_1 \\ y_2 \\ y_3 \\ y_4 \\ y_5 \\ y_6 \\ y_7 \\ y_8 \end{pmatrix} 
= &
\left( 
\begin{array}{cccccccc} 
\scriptstyle b_0 & \scriptstyle b_A & \scriptstyle b_B & \scriptstyle b_C & \scriptstyle b_{AB} & \scriptstyle b_{AC} & \scriptstyle b_{BC} & \scriptstyle b_{ABC} \\
+ & - & - & - & + & + & + & - \\
+ & + & - & - & - & - & + & + \\
+ & - & + & - & - & + & - & + \\
+ & + & + & - & + & - & - & - \\
+ & - & - & + & + & - & - & + \\
+ & + & - & + & - & + & - & - \\
+ & - & + & + & - & - & + & - \\
+ & + & + & + & + & + & + & + 
\end{array} 
\right)
\begin{pmatrix} b_0 \\ b_A \\ b_B \\ b_C \\ b_{AB} \\ b_{AC} \\ b_{BC} \\ b_{ABC} \end{pmatrix}
\end{aligned}
$$

---
