genetic_drift <- function(N = 1000, f_0 = 1/2, G = 1000, R = 10){
  R_c <- rep(NA, R*G)    #Prepare vectors
  G_c <- rep(NA, R*G)
  F_c <- rep(NA, R*G)
  i = 1                      #Index variable for vector position
  for(r in 1:R){             #Replicates
    f = f_0                  #Initialize frequency
    for(g in 1:G){           #Generations
      R_c[i] <- r            #Remember variables in the corresponding vectors
      G_c[i] <- g
      F_c[i] <- f
      
      if(f == 0 || f == 1){  #If the allele is lost of gets fixation, stop the for loop and jump to the next one (this sppeds the process)
        i = i+1
        break
      }
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
    geom_line(aes(x = g, y = f, group = r, color = as.factor(r)), alpha = 0.5, show.legend = F) +
    ylim(c(0, 1)) +
    xlab("Generation") +
    ylab("Frequency") +
    theme_light()
}

gf_stats <- function(gf){
  print("Mean frequence and variance")
  gf %>%
    group_by(r) %>%
    filter(g == max(g)) %>%
    ungroup() %>%
    summarize(mean = mean(f), var = var(f)) %>%
    print()
  
  print("Counts of fixed, intermediate and lost alleles")
  gf %>%
    group_by(r) %>%
    filter(g == max(g)) %>%
    ungroup() %>%
    mutate(f = ifelse(f == 0, "lost", ifelse(f == 1, "fixed", "intermediate"))) %>%
    count(f) %>%
    print()
  
  print("Mean and variance of generations to allele fixation")
  gf %>%
    filter(f == 1) %>%
    summarize(mean = mean(g), var = var(g)) %>%
    print()
    
  print("Mean and variance of generations to allele loss")
  gf %>%
    filter(f == 0) %>%
    summarize(mean = mean(g), var = var(g)) %>%
    print()
    
  gf %>%
    group_by(r) %>%
    filter(g == max(g)) %>%
    ggplot() +
    geom_histogram(aes(x = f), bins = 30)
  
}

# gf <- genetic_drift(N = 500*2, f_0 = 1/2, G = 1000, R = 50)
# plot_genetic_drift(gf)
# gf_stats(gf)
