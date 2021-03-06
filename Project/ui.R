library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage( #create the overall page
  
  # Application title
  titlePanel("Rice data. Comparing protein content to other traits"),
  
  # Some helpful information
  helpText("This application creates a boxplot to show the difference between",
           "seed volume, length, width coloured by the region of the world they are found in. Please use the radio box below to choose a species",
           "for plotting"),
  
  # Sidebar with a radio box to input which trait will be plotted
  sidebarLayout(
    sidebarPanel(
      radioButtons("Phenotype", #the input variable that the value will go into
                   "Choose a trait to compare to Protein content:",
                   c("Amylose.content",
                     "Seed.length",
                     "Seed.width")
      )),
    
    # Show a plot of the generated distribution
    mainPanel(plotOutput("point")
    )
  )
))