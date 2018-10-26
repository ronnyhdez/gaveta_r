## Para extraer numeros de un string, que sea completo el numero y
## no solo el primer digito

x  <- c("01 uno", "02 dos")
str_extract(x, "\\d+")


## Para encontrar duplicados:
df.unique <- prueba[duplicated(prueba$canton), ]
