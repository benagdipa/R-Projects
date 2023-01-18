# Load the plotly library
library(plotly)

# Load the mtcars dataset
data("mtcars")

# Create an interactive scatter plot of the mtcars dataset
# x and y values are assigned to the engine displacement and horsepower respectively
# type is set to scatter and mode is set to markers
# marker size is set to 5, color is set to red and text is set to the car name
# hoverinfo is set to show the car name on hover

mtcars_plot <- plot_ly(x = mtcars$disp, y = mtcars$hp,
                       type = 'scatter', mode = 'markers',
                       text = rownames(mtcars),
                       marker = list(size = 5, color = 'red'),
                       hoverinfo = 'text')

# Add axis labels and title to the plot
mtcars_plot <- layout(mtcars_plot, xaxis = list(title = "Engine Displacement"),
                      yaxis = list(title = "Horsepower"),
                      title = "Interactive Scatter Plot of Cars")

# Show the plot
show(mtcars_plot)