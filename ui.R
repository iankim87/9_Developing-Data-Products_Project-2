library(shiny)

shinyUI(pageWithSidebar(
        
        # title
        headerPanel("Time for light to reach Earth"),
        
        # sidebar panel
        sidebarPanel(
                helpText("Instructions / Documentation:"),
                helpText("Simply select an object in our Solar System using the drop down box.
                         This app will calculate the estimated time for light to reach Earth from this object.
                         Time is displayed in seconds by default, but you may use the checkbox 
                         to select whether you would like the time displayed in minutes."),
                selectInput("object", "Object:",
                            list("Sun" = "Sun",
                                 "Mercury" = "Mercury",
                                 "Venus" = "Venus",
                                 "Mars" = "Mars",
                                 "Jupiter" = "Jupiter",
                                 "Saturn" = "Saturn",
                                 "Uranus" = "Uranus",
                                 "Neptune" = "Neptune",
                                 "Pluto" = "Pluto")),
                checkboxInput("disp_minutes", "Show in minutes", FALSE)
                ),
        
        # main panel
        mainPanel(
                h3("Results"),
                h4("You entered:"),
                verbatimTextOutput("inputValue"),
                h4("The time taken for light from this object to reach Earth is:"),
                verbatimTextOutput("outputValue")
        )
))
