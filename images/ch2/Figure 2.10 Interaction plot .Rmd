```{r interaction_plot, fig.width=8, fig.height=8, dpi=100}
par(
  mar = c(5, 5.5, 3.5, 1.5), 
  family = "sans", 
  cex = 2, 
  cex.lab = 1, 
  cex.axis = 1,
  mgp = c(2, 0.5, 0)
)

x_ticks <- seq(-1, 1, by = 0.25)
y_ticks <- seq(5, 8, by = 0.5)

x_blue <- c(-1, 1)
y_blue <- c(5.0, 6.0)

x_orange <- c(-1, 1)
y_orange <- c(7.0, 8.0)

plot(NA, xlim = c(-1.1, 1.1), ylim = c(4.8, 8.2),
     xaxs = "i", yaxs = "i", axes = FALSE,
     xlab = "Brightness", ylab = "User Comfort",
     main = "Interaction Plot", font.main = 1, cex.main = 1)

abline(v = x_ticks, col = "gray80", lwd = 1)
abline(h = y_ticks, col = "gray80", lwd = 1)

lines(x_blue, y_blue, col = "#3182bd", lwd = 2.5)
lines(x_orange, y_orange, col = "#ff7f0e", lwd = 2.5)

legend("topleft", 
       title = "FOV",
       legend = c("FOV (-1,)", "FOV (1,)"), 
       col = c("#3182bd", "#ff7f0e"), 
       lty = 1, 
       lwd = 2.5, 
       bty = "o",
       box.col = "gray80",
       bg = "white",
       cex = 0.7)

axis(1, at = x_ticks, labels = sprintf("%.2f", x_ticks), tck = -0.015)
axis(2, at = y_ticks, labels = sprintf("%.1f", y_ticks), las = 1, tck = -0.015)

box(col = "gray40", lwd = 1.2)
```
