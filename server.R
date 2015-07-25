library(shiny)

# simple function that returns distance from Earth to specified planetary object
get_distance_to_object <- function(object) {
        
        # create data frame / lookup table
        objects <- c("Sun", "Mercury", "Venus", "Mars", 
                     "Jupiter", "Saturn", "Uranus", 
                     "Neptune", "Pluto")
        distances <- c(149600000000, 91691000000, 41400000000, 78340000000,
                       628730000000, 1275000000000, 2723950000000,
                       4351400000000, 6090000000000)
        df <- data.frame(objects, distances)
        
        # get corresponding distance value
        distance <- df[which(objects==object), 2]
        
        return(distance)
}

# simple function to calculate time provided a distance input
get_time_taken <- function(distance, disp_minutes) {
        speed_of_light <- 299792458  # ms-1
        time_taken <- (distance/speed_of_light) 
        if (disp_minutes == TRUE) {
                time_taken <- time_taken / 60
        }
        return(time_taken)
}

# define server logic
shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$object})
                distance_to_object <- reactive({get_distance_to_object(input$object)})
                output$outputValue <- renderPrint({get_time_taken(distance_to_object(),
                                                                  input$disp_minutes)})
        }
)
