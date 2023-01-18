# Load the ggplot2 library
library(ggplot2)

# Load the faithful dataset
data("faithful")

# Create the histogram
# Use eruptions as x-axis
ggplot(faithful, aes(x = eruptions)) +
  # Add a histogram geometric object with a bin width of 0.2
  geom_histogram(binwidth = 0.2) +
  # Add a title to the plot
  ggtitle("Histogram of Old Faithful Eruptions") +
  # Add a label to the x-axis
  xlab("Duration of Eruption (in minutes)") +
  # Add a label to the y-axis
  ylab("Frequency")
