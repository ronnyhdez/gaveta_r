
# Calcule  la sumatoria  de los numeros enteros multiplos
# de 5,  comprendidos entre el 1 y el n (no se puede usar sum)
#

# Prueba

# 5 y 10 == 5 + 10 = 15



# Solucion nueva ----------------------------------------------------------

x <- c(1:10, 20.5)
x <- c(1:10)

x[x %% 5 == 0] # Si funciona

x[as.integer(x)] # No funciona porque me coerciona todo y me crea un NA

x == as.integer(x)

x[x == as.integer(x)] # Este si funciona porque a partir del logico me hace el subset

total=0
for (i in 1:99) {
  total<-total+(10^2 + 10^3)
}
total

sumatoria <- 0
for (i in (x)) {

  # Vamos a traer del vector los enteros y  multiplos de cinco
  multiplos_cinco <- x[x %% 5 == 0]
  multiplos_cinco <- as.integer(multiplos_cinco)

  # Aca sumamos los enteros y multiplos de cinco
  for (i in (multiplos_cinco)) {
    sumatoria <- multiplos_cinco + i
    print(sumatoria)
  }
  }



# Solucion moreno ---------------------------------------------------------


x <- 1:25

suma_multiplos_cinco <- function(x) {
  sumamult5 <- 0
  for (i in x) {
    if(i %% 5 == 0) {
      sumamult5 <- sumamult5 + i
    }
  }
  cat("El total de la suma de los multiplos de cinco es:", sumamult5)
}


suma_multiplos_cinco(x)
suma_multiplos_cinco(1:10)

