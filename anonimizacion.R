# Generar id's para anonimizar conjuntos de datos
install.packages("ids")
library(ids)

random_id(100) # Genera 100 ids


# Para cambiar orden de valores en una columna:

# Create a vector
v <- 11:20

# Randomize the order of the vector
v <- sample(v)

# Create a data frame
data <- data.frame(label=letters[1:5], number=11:15)
data
#>   label number
#> 1     a     11
#> 2     b     12
#> 3     c     13
#> 4     d     14
#> 5     e     15

# Randomize the order of the data frame
data <- data[sample(1:nrow(data)), ]
data
#>   label number
#> 5     e     15
#> 2     b     12
#> 4     d     14
#> 3     c     13
#> 1     a     11


