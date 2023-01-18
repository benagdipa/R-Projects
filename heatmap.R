# Load the ggplot2 library
library(ggplot2)

# Load the mtcars dataset
data("mtcars")

# Create the heatmap using the mtcars dataset
# Use the variable "cyl" as the x-axis and "gear" as the y-axis
# Use the variable "mpg" as the fill
ggplot(mtcars, aes(x = cyl, y = gear, fill = mpg)) +
  # Use geom tile to create the heatmap
  geom_tile() +
  # Add a title to the plot
  ggtitle("Heatmap of Miles per Gallon by Cylinders and Gears") +
  # Add a label to the x-axis
  xlab("Cylinders") +
  # Add a label to the y-axis
  ylab("Gears") +
  # Change the color scale to viridis
  scale_fill_viridis_b()
