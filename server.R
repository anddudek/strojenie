library(shiny)
library(tuneR)

shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
      dzwiek <- readWave(input$plik);
      #which_mod = which(Mod(fft(dzwiek@left)) == max(abs(Mod(fft(dzwiek@left))))) * dzwiek@samp.rate / length(dzwiek@left);
      if (input$typ == "wave"){
        plot(dzwiek);
      }
      else if (input$typ == "FFT"){
        plot(Mod(fft(dzwiek@left)));
      }
  })
  output$nText <- renderText({
    dzwiek <- readWave(input$plik);
    input$play;
    isolate(play(dzwiek));
    which_mod = which(Mod(fft(dzwiek@left)) == max(abs(Mod(fft(dzwiek@left))))) * dzwiek@samp.rate / length(dzwiek@left);

  })
})
