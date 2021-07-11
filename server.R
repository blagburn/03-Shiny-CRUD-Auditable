server <- function(input, output, session) {
    
    # user session$userData to store user data that will be needed throughout
    # the Shiny application
    session$userData$email <- 'matt.blagburn@td2m.io'
    session$userData$db_trigger <- reactiveVal(0)
    
    callModule(
        cars_table_module,
        "cars_table"
    )
}