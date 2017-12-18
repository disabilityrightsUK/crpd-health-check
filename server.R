
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(readxl)
library(ggplot2)
library(dplyr)

  crpd <- readxl::read_xlsx("crpd-health.xlsx")

crpd$Rating <- factor(crpd$Rating, levels=c("G", "A", "R"), labels = c("Green", "Amber", "Red"))
  
  

shinyServer(function(input, output) {
  

crpd$colour <- case_when(
  crpd$Rating == "Green" ~ "green",
  crpd$Rating  == "Amber" ~ "orange",
  crpd$Rating == "Red" ~ "red"
)

crpd$icon <- case_when(
  crpd$Rating == "Green" ~ "certificate",
  crpd$Rating  == "Amber" ~ "thumbs-up",
  crpd$Rating == "Red" ~ "thumbs-down"
)
  
  
output$concern_table <- renderTable({crpd[crpd$Rating=="Red",c("Article","Description")]})
  
  
  output$status_plot <- renderPlot({
    
    ggplot(crpd, aes(Rating)) +
      geom_bar(aes(fill=Rating)) +
      scale_fill_manual(values=c("#4CB373", "#FFC200", "#DA2D2D")) + 
      theme(axis.title.y=element_blank(), legend.position="none")
    
  })
  
 
  # article 4---------------------------------------------------------------

    output$article4_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article4"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article4"]),
      color = crpd$colour[crpd$article_shortname=="Article4"]
    )
  })
  
    output$article4_details <- renderText(crpd$Details[crpd$article_shortname=="Article4"])
  
  # article 5---------------------------------------------------------------

    output$article5_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article5"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article5"]),
      color = crpd$colour[crpd$article_shortname=="Article5"]
    )
  })
  
    output$article5_details <- renderText(crpd$Details[crpd$article_shortname=="Article5"])
  
  # article 6---------------------------------------------------------------

    output$article6_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article6"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article6"]),
      color = crpd$colour[crpd$article_shortname=="Article6"]
    )
  })
  
output$article6_details <- renderText(crpd$Details[crpd$article_shortname=="Article6"])
  
  # article 7---------------------------------------------------------------

    output$article7_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article7"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article7"]),
      color = crpd$colour[crpd$article_shortname=="Article7"]
    )
  })
  
    output$article7_details <- renderText(crpd$Details[crpd$article_shortname=="Article7"])
  
   # article 8---------------------------------------------------------------

    output$article8_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article8"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article8"]),
      color = crpd$colour[crpd$article_shortname=="Article8"]
    )
  })
  
  output$article8_details <- renderText(crpd$Details[crpd$article_shortname=="Article8"])
  
  # article 9---------------------------------------------------------------

    output$article9_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article9"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article9"]),
      color = crpd$colour[crpd$article_shortname=="Article9"]
    )
  })
      output$article9_details <- renderText(crpd$Details[crpd$article_shortname=="Article9"])
  
  # article 10---------------------------------------------------------------

    output$article10_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article10"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article10"]),
      color = crpd$colour[crpd$article_shortname=="Article10"]
    )
  })
  
      output$article10_details <- renderText(crpd$Details[crpd$article_shortname=="Article10"])
  
  # article 11---------------------------------------------------------------

    output$article11_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article11"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article11"]),
      color = crpd$colour[crpd$article_shortname=="Article11"]
    )
  })
  
      output$article11_details <- renderText(crpd$Details[crpd$article_shortname=="Article11"])
  
  # article 12---------------------------------------------------------------

    output$article12_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article12"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article12"]),
      color = crpd$colour[crpd$article_shortname=="Article12"]
    )
  })
  
      output$article12_details <- renderText(crpd$Details[crpd$article_shortname=="Article12"])
  
  # article 13---------------------------------------------------------------

    output$article13_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article13"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article13"]),
      color = crpd$colour[crpd$article_shortname=="Article13"]
    )
  })
  
      output$article13_details <- renderText(crpd$Details[crpd$article_shortname=="Article13"])
  
  # article 14---------------------------------------------------------------

    output$article14_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article14"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article14"]),
      color = crpd$colour[crpd$article_shortname=="Article14"]
    )
  })
  
      output$article14_details <- renderText(crpd$Details[crpd$article_shortname=="Article14"])
  
  # article 15---------------------------------------------------------------

    output$article15_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article15"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article15"]),
      color = crpd$colour[crpd$article_shortname=="Article15"]
    )
  })
  
      output$article15_details <- renderText(crpd$Details[crpd$article_shortname=="Article15"])
  
  # article 16---------------------------------------------------------------

    output$article16_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article16"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article16"]),
      color = crpd$colour[crpd$article_shortname=="Article16"]
    )
  })
  
      output$article16_details <- renderText(crpd$Details[crpd$article_shortname=="Article16"])
  
  # article 17---------------------------------------------------------------

    output$article17_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article17"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article17"]),
      color = crpd$colour[crpd$article_shortname=="Article17"]
    )
  })
  
      output$article17_details <- renderText(crpd$Details[crpd$article_shortname=="Article17"])
  
  # article 18---------------------------------------------------------------

    output$article18_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article18"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article18"]),
      color = crpd$colour[crpd$article_shortname=="Article18"]
    )
  })
  
      output$article18_details <- renderText(crpd$Details[crpd$article_shortname=="Article18"])
  
  # article 19---------------------------------------------------------------

    output$article19_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article19"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article19"]),
      color = crpd$colour[crpd$article_shortname=="Article19"]
    )
  })
  
    output$article19_details <- renderText(crpd$Details[crpd$article_shortname=="Article19"])
  
  # article 20---------------------------------------------------------------

    output$article20_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article20"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article20"]),
      color = crpd$colour[crpd$article_shortname=="Article20"]
    )
  })
  
    output$article20_details <- renderText(crpd$Details[crpd$article_shortname=="Article20"])
  
  # article 21---------------------------------------------------------------

    output$article21_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article21"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article21"]),
      color = crpd$colour[crpd$article_shortname=="Article21"]
    )
  })
  
    output$article21_details <- renderText(crpd$Details[crpd$article_shortname=="Article21"])
  
  # article 22---------------------------------------------------------------

    output$article22_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article22"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article22"]),
      color = crpd$colour[crpd$article_shortname=="Article22"]
    )
  })
  
    output$article22_details <- renderText(crpd$Details[crpd$article_shortname=="Article22"])
  
  # article 23---------------------------------------------------------------

    output$article23_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article23"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article23"]),
      color = crpd$colour[crpd$article_shortname=="Article23"]
    )
  })
  
    output$article23_details <- renderText(crpd$Details[crpd$article_shortname=="Article23"])
  
  # article 24---------------------------------------------------------------

    output$article24_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article24"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article24"]),
      color = crpd$colour[crpd$article_shortname=="Article24"]
    )
  })
  
  output$article24_details <- renderText(crpd$Details[crpd$article_shortname=="Article24"])
  
  # article 25---------------------------------------------------------------

    output$article25_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article25"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article25"]),
      color = crpd$colour[crpd$article_shortname=="Article25"]
    )
  })
  
    output$article25_details <- renderText(crpd$Details[crpd$article_shortname=="Article25"])
  
  # article 26---------------------------------------------------------------

    output$article26_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article26"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article26"]),
      color = crpd$colour[crpd$article_shortname=="Article26"]
    )
  })
  
    output$article26_details <- renderText(crpd$Details[crpd$article_shortname=="Article26"])
  
  # article 27---------------------------------------------------------------

    output$article27_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article27"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article27"]),
      color = crpd$colour[crpd$article_shortname=="Article27"]
    )
  })
  
  output$article27_details <- renderText(crpd$Details[crpd$article_shortname=="Article27"])
  
  
  # article 28---------------------------------------------------------------

    output$article28_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article28"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article28"]),
      color = crpd$colour[crpd$article_shortname=="Article28"]
    )
  })
  
  output$article28_details <- renderText(crpd$Details[crpd$article_shortname=="Article28"])
  
  
  # article 29---------------------------------------------------------------

    output$article29_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article29"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article29"]),
      color = crpd$colour[crpd$article_shortname=="Article29"]
    )
  })
  
  output$article29_details <- renderText(crpd$Details[crpd$article_shortname=="Article29"])
      
      
  # article 30---------------------------------------------------------------

    output$article30_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article30"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article30"]),
      color = crpd$colour[crpd$article_shortname=="Article30"]
    )
  })
  
    output$article30_details <- renderText(crpd$Details[crpd$article_shortname=="Article30"])
  
  # article 31---------------------------------------------------------------

    output$article31_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article31"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article31"]),
      color = crpd$colour[crpd$article_shortname=="Article31"]
    )
  })
  
  output$article31_details <- renderText(crpd$Details[crpd$article_shortname=="Article31"])
  
  # article 32---------------------------------------------------------------

    output$article32_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article32"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article32"]),
      color = crpd$colour[crpd$article_shortname=="Article32"]
    )
  })
  
      output$article32_details <- renderText(crpd$Details[crpd$article_shortname=="Article32"])
  
  # article 33---------------------------------------------------------------

    output$article33_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article33"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article33"]),
      color = crpd$colour[crpd$article_shortname=="Article33"]
    )
  })
  
    output$article33_details <- renderText(crpd$Details[crpd$article_shortname=="Article33"])
  
  # article 34---------------------------------------------------------------

    output$article34_rating <- renderValueBox({
    infoBox(
      "Comments:",
      crpd$Description[crpd$article_shortname=="Article34"], 
      icon = icon(crpd$icon[crpd$article_shortname=="Article34"]),
      color = crpd$colour[crpd$article_shortname=="Article34"]
    )
  })

  output$article34_details <- renderText(crpd$Details[crpd$article_shortname=="Article34"])

})
