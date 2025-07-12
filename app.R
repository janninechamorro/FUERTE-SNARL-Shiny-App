# Installing packages
# sanjana test

 #install.packages("shiny")

# Loading Packages
library(shiny)
library(bslib)

# Define UI ----

ui <- tags$html(
  tags$head(
    tags$title("FUERTE")  # tab title
  ),
  tags$body(
    page_sidebar(
      title = "FUERTE",                # body title
      sidebar = sidebar("Whitebark Pine"),   #left sidebar 
      #WHITEBARK
      navset_tab(nav_panel("Intro",
      card(
        card_header("Whitebark Pine Background"),
        tags$figure(card_image("www/fuerte_pine.png"), tags$figcaption(style = "font-size: 0.5em; color: #555; font-style: italic; margin-top: 0.5em;","Kat measuring a transect*replace image later")),
        tags$p("Whitebark pine is a species of..."),
 
tags$p("White Bark Pine Health
Research Goal: Survey variability of bark beetle infestation and overall tree health at different elevations on Mammoth Mountain"),

tags$p("Skills Learned: Transect setup, mapping, species identification, assessment of tree health"))),
nav_panel("2023",
          card(card_header("Summer 2023 Research"),
               "Data and Researchers from the summer of 2023")),
nav_panel("2024",
          card(card_header("Summer 2024 Research"),
               "Data and Researchers from the summer of 2024"))))))


#One of our goals during our annual FUERTE field trip at SNARL is to establish long-term place-based datasets where our new fellows can learn about data collection and analysis.

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)
