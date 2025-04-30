# Installing packages

# install.packages("shiny")

# Loading Packages
library(shiny)

# Here is some text to test!

# Define UI for app the draws a histogram ----

ui <- page_sidebar(
  title = "title panel",
  sidebar = sidebar("sidebar"),
  "main contents"
)


# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)