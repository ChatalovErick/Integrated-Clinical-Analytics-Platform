# dependencies.R
# Run this script to install all necessary libraries for the Shiny Apps

pkgs <- c(
  "shiny", "shinydashboard", "shinyWidgets", # UI
  "gtsummary", "flextable", "haven",         # Table 1
  "survival", "survminer", "plotly",         # Survival
  "pwrss", "gsDesign",                       # Power Analysis
  "vroom", "ggvariant", "qqman"              # Genomics
)

install_if_missing <- function(p) {
  if (!require(p, character.only = TRUE)) {
    install.packages(p, dependencies = TRUE)
  }
}

invisible(sapply(pkgs, install_if_missing))

message("All dependencies for R 4.5.3 are installed.")