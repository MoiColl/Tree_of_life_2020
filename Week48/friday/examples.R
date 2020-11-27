## load ggplot library
install.packages("ggplot2") # run only if you don't have ggplot2 installed
library(ggplot2)

## load data and recreate plots from Mathieson et al., 2015
dataWE <- read.table("/Users/jura/Desktop/fridayNEW/dataWE.txt", sep="\t", header = TRUE)

p1 <- ggplot(dataWE, aes(x = PC1, y = PC2, color = POP)) + geom_point()
p1

p2 <- ggplot(dataWE, aes(x = PC1, y = PC2, color = ModAnc)) + geom_point()
p2

## choose your favourite populations
unique(dataWE$POP) # list of available populations

pops <- c("Croatian", "Iceman", "Czech", "Finnish")

dataWEsub <- subset(dataWE, POP %in% pops)

p3 <- ggplot(dataWEsub, aes(x = PC1, y = PC2, color = POP)) + geom_point()
p3
