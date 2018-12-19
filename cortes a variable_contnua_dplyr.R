#  Para hacer cortes de variables continuas:

datos %>%
  mutate(variable_continua = cut(variable_continua, breaks  = 5))
