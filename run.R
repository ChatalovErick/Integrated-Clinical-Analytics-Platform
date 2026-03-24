# This script launches the Clinical Dashboard App
library(shiny)

# Set the working directory to the folder where this script is saved
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Run the app
runApp()