r <- GET(lacram_url, query = list(
  UserCode = lacram_api$UserCode,
  APIToken = lacram_api$APIToken,
  Function = 'GetPipelineReport',
  Parameters = paste0('{"PipelineId":','"', opportunity_pipelineid, '"', '}')
)
)

jsondata_general <- content(r, "text")
jsondata_general <- fromJSON(jsondata_general,
                             simplifyVector = TRUE)
jsondata_general <- as.data.frame(jsondata_general)
jsondata_general <- flatten(jsondata_general)



# De como con un dataframe con listas que son vacias pero tienen estructura,
# se pueden sacar el datagrame con NAs para que calce con los demas rows

# Limpieza PHONE ----------------------------------------------------------
# Cambio de listas vacias por data.frame similar con
# estructura igual a listas con entradas
for (i in 1:nrow(contenido)) {
  contenido$result_phone[i][(length(contenido$result_phone[[i]]$Text) == 0)] <- list(data.frame("Text" = NA, "Type" = NA, "Clean" = NA))
}

# Aplanar lista uniforme y adjuntarla con dataframe completo por posicion
phone <- do.call(rbind.data.frame, contenido$result_phone)
phone <- phone %>%
  select(Text, Type) %>%
  select(phone_numer = Text, phone_type = Type)
