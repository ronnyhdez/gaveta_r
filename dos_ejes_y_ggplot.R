library(ggplot2)
head(iris)
iris <- iris

# Con estilo de ejemplo: ----
p <- ggplot(iris_data, aes(x = Petal.Length))
p <- p + geom_line(aes(y = Petal.Width))
p

p <- p + geom_line(aes(y = Sepal.Width))
p

# Tweaking para dos ejes:
p <- ggplot(iris_data, aes(x = Petal.Length))
p <- p + geom_line(aes(y = Petal.Width, colour = "Petal.Width"))

# Añadir sepal.width tranformado para relacionar con el rango de Petal width
p <- p + geom_line(aes(y = Sepal.Width/10, colour = "Sepal.Width"))

# Añadir ahora el eje secundario, y revirtiendo la transformacion anterior
p <- p + scale_y_continuous(sec.axis = sec_axis(~.*10, name = "Sepal Width"))

# Modificar colores
p <- p + scale_colour_manual(values = c("blue", "red"))
p <- p + labs(y = "Petal Width",
              x = "Petal Length",
              colour = "Parameter")
# p <- p + theme(legend.position = c(0.8, 0.9))
p

# Con mi estilo: ----
ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_line()
