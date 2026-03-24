# ui.R
ui <- page_sidebar(
  title = APP_TITLE,
  theme = bs_theme(preset = "bootstrap"), # Easy to swap for "shiny" or "slate"
  
  sidebar = sidebar(
    title = "Controls",
    sliderInput("bins", "Histogram Bins:", min = 1, max = 50, value = 30),
    hr(),
    p("This structure is ready for Table 1 and Survival modules.")
  ),
  
  # Main Content Area
  card(
    card_header("Data Distribution Test"),
    plotOutput("distPlot")
  )
)