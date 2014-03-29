library(shiny)
library(choroplethr)

shinyServer(function(input, output) {

  output$title <- renderText({
    "US Population Explorer"
  })

  output$choro <- renderPlot({
    if(input$single_state==FALSE) {
      print(choroplethr_acs("B01003", input$lod))
    }

    else {
      print(choroplethr_acs("B01003", input$lod, num_buckets=9, states=input$state))
    }

  output$table <- renderDataTable({
    acs_data <- acs.fetch(geography=make_geo(input$lod), table.number = "B01003", col.names = "pretty", 
                endyear = 2012, span = 5)
    df_temp <-  data.frame(region = geography(acs_data), value  = as.numeric(estimate(acs_data[,1])))
    df <- data.frame(Region=df_temp$region.NAME, Value=df_temp$value)
    df <- df[order(-df$Value),]
    df
    })

  })
})
