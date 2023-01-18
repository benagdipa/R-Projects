# Load the ggplot library
library(ggplot2)

# Load the diamonds dataset
data("diamonds")

# Create the bar plot
# Use cut as x-axis and fill the bars based on clarity
ggplot(diamonds, aes(x = cut, fill = clarity)) +
  # Add a bar geometric object
  geom_bar() +
  # Add a title to the plot
  ggtitle("Bar plot of Diamonds by Cut and Clarity") +
  # Add a label to the x-axis
  xlab("Cut") +
  # Add a label to the y-axis
  ylab("Number of Diamonds")
