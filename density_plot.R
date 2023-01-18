# Load the ggplot2 library
library(ggplot2)

# Load the mtcars dataset
data("mtcars")

# Create the density plot
# Use mpg as x-axis
ggplot(mtcars, aes(x = mpg)) +
  # Add a density geometric object
  geom_density() +
  # Add a title to the plot
  ggtitle("Density plot of Miles per Gallon") +
  # Add a label to the x-axis
  xlab("Miles per Gallon")