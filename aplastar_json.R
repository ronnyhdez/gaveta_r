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
