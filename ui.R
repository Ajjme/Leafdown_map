dashboardPage(
  title = "Basic Dashboard",
  header = dashboardHeader(border = FALSE, status = "purple"),
  sidebar = dashboardSidebar(disable = TRUE),
  footer = dashboardFooter(),
  body = dashboardBody(
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "style-app.css")
    ),
    use_theme(create_theme(
      bs4dash_color(
        purple = "#454d55"
      )
    )),
    fluidRow(
      box(
        tags$style(HTML(".leaflet-container {background: #343a40;}")),
        useShinyjs(),
        actionButton("drill_down", "Drill Down"),
        actionButton("drill_up", "Drill Up"),
        leafletOutput("leafdown", height = 700),
        collapsible = FALSE,
        width = 6,
        headerBorder = FALSE
      ),
      column(
        width = 6,
        fluidRow(
          bs4Card(
            plotOutput("scatter_plot", height = 328),
            width = 12,
            collapsible = FALSE,
            headerBorder = FALSE
          )
        ),
        fluidRow(
          box(
            plotOutput("bar_plot", height = 328),
            width = 12,
            collapsible = FALSE,
            headerBorder = FALSE
          )
        )
      )
    )
  ),
  dark = TRUE
)
