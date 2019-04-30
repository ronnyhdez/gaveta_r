# Para generar cuadro en shiny que se despliegue el codigo puede ser

output$oportunidad <- DT::renderDataTable({
  DT::datatable(`Identificado`, extensions = 'Responsive',
                options = list(dom = 't'))
})
