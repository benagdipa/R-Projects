# Load the ggplot2 library
library(ggplot2)

# Load the iris dataset
data("iris")

# Create a box plot using the iris dataset
# Use the variable "Species" as the x-axis and "Petal.Length" as the y-axis
ggplot(iris, aes(x = Species, y = Petal.Length)) +
  # Use geom_boxplot to create the box plot
  geom_boxplot() +
  # Add a title to the plot
  ggtitle("Box plot of Petal Length by Species") +
  # Add a label to the x-axis
  xlab("Species") +
  # Add a label to the y-axis
  ylab("Petal Length")