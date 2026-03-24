# global.R
library(shiny)
library(bslib)
library(ggplot2)

# Load a clinical-style dataset for testing
data(faithful) 

# You can define shared functions or constants here
APP_TITLE <- "Clinical Dashboard Alpha"