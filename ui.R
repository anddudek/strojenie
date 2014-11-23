library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Projekt G5"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      #textInput("adres", "Podaj sciezke do dzwieku .wav", value = "http://student.agh.edu.pl/~andudek/GUITAR.WAV"),
      selectInput("plik", "Wybierz plik:",
                  c("Wybierz dzwiek..." = "none", "GUITAR.WAV" = "data/GUITAR.WAV")),
      radioButtons("typ", "Typ wykresu", c("Plik wave"="wave",                                        
                                                    "FFT"="FFT")),
      actionButton("play", "Odtworz")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      h4("Czestotliwosc o najwyzszej amplitudzie"),
      verbatimTextOutput("nText")
    )
  )
))