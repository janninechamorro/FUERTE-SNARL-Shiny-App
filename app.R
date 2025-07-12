# Installing packages
# sanjana test

 #install.packages("shiny")

# Loading Packages
library(shiny)
library(bslib)

#Define UI
ui <- fluidPage(
  #font
  tags$head(tags$style(HTML("body{font-family:'Georgia', serif;}"))),
  #not entire sure what this is..
  tags$head(tags$title("FUERTE")),
  ##fuerte Banner
  div(
    style = "background-color: #0072B2; padding: 15px; color: white; font-size: 28px; font-weight: bold; text-align: left;", tags$img(src = "fuerte-logo.svg", height = "40px", style = "margin-right: 15px;"), span("FUERTE")),
  
  #content starts
  #sidebar
  navlistPanel(
    widths = c(3, 9),  # 3-column sidebar, 9-column content
    ###INTRODUCTION PAGE
    nav_panel("Introduction",
              card(
                h2("FUERTE Program Overview"),
                tags$p("One of our goals during our annual FUERTE field trip at SNARL is to establish long-term place-based datasets where our new fellows can learn about data collection and analysis."))),
    
    ###WHITEBARK PINE PAGE, 3 subtabs: intro, 2023, 2024
    nav_panel("Whitebark Pine",
              navset_tab(
                nav_panel("Intro",
                          card(
                            h2("Whitebark Pine Background"),
                            tags$figure(
                              card_image("www/fuerte_pine.png"),
                              tags$figcaption(
                                style = "font-size: 0.7em; color: #555; font-style: italic; margin-top: 0.5em;",
                                "Kat measuring a transect *replace image later")),
                            tags$p("Whitebark pine is a species of..."),
                            tags$p("White Bark Pine Health Research Goal: Survey variability of bark beetle infestation and overall tree health at different elevations on Mammoth Mountain."),
                            tags$p("Skills Learned: Transect setup, mapping, species identification, assessment of tree health."))),
                nav_panel("2023",
                          card(
                            h2("Summer 2023 Research"),
                            tags$p("Data and Researchers from the summer of 2023."))),
                nav_panel("2024",
                          card(
                            h2("Summer 2024 Research"),
                            tags$p("Data and Researchers from the summer of 2024."))))),
    
    ###MAMMALS PAGE
    nav_panel("Mammals",
              card(
                h2("Camera Traps around SNARL"),
                tags$p("This page contains information about mammals observed through camera trap data, identification methods, and habitats.")))))


##Run app
server <- function(input, output) {}

shinyApp(ui = ui, server = server)
