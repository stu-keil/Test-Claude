# 100 valores aleatorios de una distribución uniforme U(0, 1):
# gráfica, media y desviación estándar.

set.seed(42)  # misma muestra en cada ejecución
x <- runif(100, min = 0, max = 1)

media <- mean(x)
desv  <- sd(x)

cat(sprintf("Media:               %.4f  (teórica 0.5000)\n", media))
cat(sprintf("Desviación estándar: %.4f  (teórica %.4f)\n", desv, 1 / sqrt(12)))

# Colores
serie  <- "#2a78d6"
fondo  <- "#fcfcfb"
tinta  <- "#0b0b0b"
tenue  <- "#52514e"
reja   <- "#e6e5e1"

png("uniforme.png", width = 1600, height = 700, res = 150, bg = fondo)
par(mfrow = c(1, 2), mar = c(4.5, 4.5, 3.5, 1.5), family = "sans",
    col.axis = tenue, col.lab = tenue, fg = tenue, bty = "n", las = 1)

# 1) Valores en orden de generación
plot(x, pch = 16, cex = 0.9, col = serie, ylim = c(0, 1),
     xlab = "Observaci\u00f3n", ylab = "Valor", axes = FALSE,
     main = "100 valores de U(0, 1)", col.main = tinta, font.main = 1, cex.main = 1.2)
abline(h = seq(0, 1, 0.25), col = reja, lwd = 1)
points(x, pch = 16, cex = 0.9, col = serie)
abline(h = media, col = tinta, lwd = 2, lty = 2)
axis(1, lwd = 0, lwd.ticks = 0)
axis(2, at = seq(0, 1, 0.25), lwd = 0, lwd.ticks = 0)
text(100, media, sprintf("media %.3f", media), pos = 3, col = tinta, cex = 0.85, xpd = NA)

# 2) Histograma
cortes <- seq(0, 1, by = 0.1)
h <- hist(x, breaks = cortes, plot = FALSE)
plot(NULL, xlim = c(0, 1), ylim = c(0, max(h$counts) + 3), axes = FALSE,
     xlab = "Valor", ylab = "Frecuencia",
     main = "Histograma", col.main = tinta, font.main = 1, cex.main = 1.2)
abline(h = pretty(c(0, max(h$counts) + 3)), col = reja, lwd = 1)
hueco <- 0.006
rect(cortes[-length(cortes)] + hueco, 0, cortes[-1] - hueco, h$counts,
     col = serie, border = NA)
abline(h = 10, col = tenue, lwd = 1.5, lty = 3)  # frecuencia esperada: 100 / 10
text(0.25, 10, "esperado (10)", pos = 3, col = tenue, cex = 0.8, offset = 0.3, xpd = NA)
abline(v = media, col = tinta, lwd = 2, lty = 2)
text(media, max(h$counts) + 2.5, sprintf("media %.3f\nd.e. %.3f", media, desv),
     pos = 4, col = tinta, cex = 0.85)
axis(1, at = seq(0, 1, 0.2), lwd = 0, lwd.ticks = 0)
axis(2, lwd = 0, lwd.ticks = 0)

invisible(dev.off())
cat("Gráfica guardada en uniforme.png\n")
