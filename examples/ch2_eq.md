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
\hat{b}_A = b_A + b_{CB}
$$

---
  
* Equation (2.10):
  
$$
y = \beta_0 + \beta_1 \times A + \beta_2 \times B + \beta_{12} \times A \times B
$$

---

* Equation (2.11):

$$
y = \beta_0 + \beta_1 \times A + \beta_2 \times B + \beta_{12} \times A \times B + \beta_{11} \times A^2 + \beta_{22} \times B^2
$$

---

* Equation (2.13):

$$
N = 2^k + 2 \times k + n_c
$$

---

* Equation (2.14):

$$
\alpha = (2^k)^{1/4}
$$

---

* Equation (2.15):

$$
y = \beta_0 + \sum \beta_i \times x_i + \sum \beta_{ij} \times x_i \times x_j
$$

