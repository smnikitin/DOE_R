# Set square display dimensions (enlarged for cex = 2)
options(repr.plot.width = 8, repr.plot.height = 8)

# Configure graphics parameters with global cex = 2
par(
  mar = c(5, 5.5, 3.5, 1.5), 
  family = "sans", 
  cex = 2, 
  cex.lab = 1, 
  cex.axis = 1,
  mgp = c(2, 0.5, 0)
)

# Grid ticks matching the image
x_ticks <- seq(-1, 1, by = 0.25)
y_ticks <- seq(5, 8, by = 0.5)

# Line data points for interaction plot
x_blue <- c(-1, 1)
y_blue <- c(5.0, 6.0)

x_orange <- c(-1, 1)
y_orange <- c(7.0, 8.0)

# 1. Create empty plot canvas
plot(NA, xlim = c(-1.1, 1.1), ylim = c(4.8, 8.2),
     xaxs = "i", yaxs = "i", axes = FALSE,
     xlab = "Brightness", ylab = "User Comfort",
     main = "Interaction Plot", font.main = 1, cex.main = 1)

# 2. Draw background grid lines
abline(v = x_ticks, col = "gray80", lwd = 1)
abline(h = y_ticks, col = "gray80", lwd = 1)

# 3. Draw interaction lines
lines(x_blue, y_blue, col = "#3182bd", lwd = 2.5)      # Blue line: FOV (-1,)
lines(x_orange, y_orange, col = "#ff7f0e", lwd = 2.5)  # Orange line: FOV (1,)

# 4. Add legend at top left
legend("topleft", 
       title = "FOV",
       legend = c("FOV (-1,)", "FOV (1,)"), 
       col = c("#3182bd", "#ff7f0e"), 
       lty = 1, 
       lwd = 2.5, 
       bty = "o",
       box.col = "gray80",
       bg = "white",
       cex = 0.4)

# 5. Custom axes with tick mark values
axis(1, at = x_ticks, labels = sprintf("%.2f", x_ticks), tck = -0.015)
axis(2, at = y_ticks, labels = sprintf("%.1f", y_ticks), las = 1, tck = -0.015)

# 6. Draw outer frame box
box(col = "gray40", lwd = 1.2)
