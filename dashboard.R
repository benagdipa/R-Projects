# Load the necessary libraries
library(shiny)
library(ggplot2)
library(datasets)

# Load the data set
data <- mtcars

# Define the user interface
ui <- fluidPage(
  titlePanel("MTCARS Dashboard"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("cyl", "Select Cylinder:",
                  unique(data$cyl),
                  selected = unique(data$cyl)[1]),
    ),
    
    mainPanel(
      plotOutput("mpg_plot")
    )
  )
)

# Define the server logic
server <- function(input, output) {
  output$mpg_plot <- renderPlot({
    filtered_data <- data[data$cyl == input$cyl,]
    
    ggplot(filtered_data, aes(x = wt, y = mpg)) +
      geom_point() +
      ggtitle(paste("MPG vs Weight for", input$cyl, "cylinder cars"))
  })
}

# Run the app
shinyApp(ui, server)
