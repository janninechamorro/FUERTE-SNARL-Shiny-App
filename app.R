# Installing packages
# sanjana test

 #install.packages("shiny")

# Loading Packages
library(shiny)
library(bslib)

# Define UI ----
#ui <- page_sidebar(
 # title = "FUERTE", sidebar = sidebar("sidebar"), "main contents")

ui <- fluidPage(
  tags$head(tags$title("FUERTE ")),  # browser tab title
  page_sidebar(
    title = "FUERTE",  # title in the body of page
    sidebar = sidebar("sidebar"),
    "Whitebark Pine"
  )
)

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)
