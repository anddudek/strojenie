library(tuneR)

dzwiek <- readWave("GUITAR.wav");
plot(dzwiek);
which_mod = which(Mod(fft(dzwiek@left)) == max(abs(Mod(fft(dzwiek@left))))) * dzwiek@samp.rate / length(dzwiek@left);
#plot dzwiek, plot(Mod(fft(dzwiek@left))), podaj adres- readw(adres), playsound