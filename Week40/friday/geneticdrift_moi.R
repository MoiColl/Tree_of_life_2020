genetic_drift <- function(N = 1000, f_0 = 1/2, G = 1000, R = 10){
  R_c <- rep(NA, R*G)    #Prepare vectors
  G_c <- rep(NA, R*G)
  F_c <- rep(NA, R*G)
  i = 1                        #Index variable for vector position
  for(r in 1:R){             #Replicates
    f = f_0
    for(g in 1:gen){           #Generations
      if(f == 0 || f == 1){    #If the allele is lost of gets fixation, stop the for loop and jump to the next one (this sppeds the process)
        break
      }
      R_c[i] <- r            #Remember variables in the corresponding vectors
      G_c[i] <- g
      F_c[i] <- f
      f = sum(rbinom(n = N, size = 1, prob = f))/N #compute f 
      i = i+1
    }
  }
  data.frame(r = R_c, g = G_c, f = F_c) # Return data frame
}

plot_genetic_drift <- function(gf){
  gf %>%
    filter(!is.na(r)) %>%
    ggplot() +
    geom_line(aes(x = g, y = f, group = r, color = as.factor(r)), alpha = 0.25, show.legend = F) +
    ylim(c(0, 1)) +
    xlab("Generation") +
    ylab("Frequency") +
    theme_light()
}

# library(tidyverse)
# gf <- genetic_drift(N = 1000, f_0 = 1/2, G = 1000, R = 50)
# plot_genetic_drift(gf)
