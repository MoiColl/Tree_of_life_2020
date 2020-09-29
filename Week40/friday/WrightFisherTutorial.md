##### This tutorial was obtained from [Fernando Racimo's GitHub](https://github.com/FerRacimo/CopenhagenTutorial/blob/master/WrightFisherTutorial.md). I modified the original version to fit the tutorial to my class needs. 

# Exercises using the Wright-Fisher model

(based on scripts by Graham Coop)


Start running the RStudio and load the following R file (you must download the [`simulateWF.R`](simulateWF.R) code and change the path to it in the next R command):

```
source("/Users/au552345/Documents/Tree_of_life_2020/Week40/friday/simulateWF.R")
```

This script contains a set of functions for simulating the Wright-Fisher model, both forwards and backwards in time. We'll play with these functions to gain some intuition about how the model works.

## 1 - Thinking forwards in time: 2 alleles

First, we'll run a Wright-Fisher model beginning with a population with two alleles. The population will have size 2N = 10 (so N = 5 diploids) and we'll run the simulation for 15 generations:

```
WF_twoalleles(5,15)
```

What do you observe plotted on the screen?

> Qa) Run this line 5 times, and record how many times the red allele fixes, how many times the blue allele fixes and how many times the population remains polymorphic (both the blue and the red allele still co-exist). Compare your results with your neighbor. Does there seem to be a preference for whether the blue or red allele fixes? Why do you think this is so? Hint: check the frequency of the two alleles at the beginning of the simulation.

You may have noticed that a vector of values also gets printed into the console every time we run this simulation. This is the allele counts of the blue allele. We can use this vector to trace the frequency of the blue allele over time:

```
bluecounts <- WF_twoalleles(5,15)
bluefreq <- bluecounts / (2 * 5)
plot(bluefreq,ylim=c(0,1),type="b",col="blue",pch=19,xlab="generations",ylab="Blue frequency")
```

> Qb) Repeat exercise Qa) but with N=3 and N=10. Do alleles tend to "fix" faster when N is large or when N is small?


## 2 - Thinking forwards in time: many alleles

We can also run a Wright-Fisher model with more than two alleles. The function below begins with a population in which each individual contains two distinct alleles, which are different from all other alleles in the population.

```
WF_manyalleles(5,15)
```

> Qa) What happens to the allelic diversity (number of alleles present) as time goes forward? Are there more or less heterozygotes at the end of the simulation than at the beginning?

> Qb) Check what happens to allelic diversity over time, when N = 3 and when N = 10.

## 3 - Thinking backwards in time

So far, we've been running the Wright-Fisher model forwards in time. We began with a population of individuals with (possibly) distinct alleles and observed what happened as we approached the present. Now, we'll start in the present and go backwards in time. Specifically, we'll aim to trace the lineages of particular individuals that exist in the present and see how they "coalesce" (find a common ancestor) in the past.

> Qa) We will trace the genealogy of 3 lineages in a population of size N = 10 (2N = 20) over 20 generations:

```
track_lineages(N.vec=rep(10,20), n.iter=1, num.tracked=3)
```

Repeat this simulation 10 times. For each simulation, record the time between the present and the first coalescent event, and the time between the first coalescent event and the second coalescent event (i.e. the most recent common ancestor of all 3 lineages). You can ignore simulations where lineages have not coalesced at generation 20. Which of the two times tends to be larger? Why do you think this is?

> Qb) Check what happens to the coalescence rate, when N = 7 and when N = 20. Do lineages coalesce faster or slower with larger population size?
