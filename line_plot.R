# Load the ggplot2 library
library(ggplot2)

# Load the economics dataset
data("economics")

# Create the line plot
# Use the x-axis and psavert as y-axis
# Color the line based on the variable "Personal Savings Rate"
ggplot(economics, aes(x = date, y = psavert, color = "Personal savings rate")) +
  # Add a line geometric object
  geom_line() +
  # Add a title to the plot
  ggtitle("Line plot of Personal savings rate over time") +
  # Add a label to the x-axis
  xlab("Year") +
  # Add a label to the y-axis
  ylab("Personal savings rate")
