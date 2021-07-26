library(tidyverse)
# Check for command line arguments
args <- commandArgs(trailingOnly = TRUE)
print(args[1])
if (length(args) != 1) {
  stop("Please supply the figure file name!")
}
