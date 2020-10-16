# Friday Week43

## Work plan 

### 1. MEGAX exercise to analyze patterns of synonymous vs. non–synonymous substitutions  

Learning goals of this computer session:

+ Getting familiar with methods available for estimating dN, dS and the dN/dS ratio
+ Choosing a method for estimating dN and dS adapted to your dataset. 
+ Testing for purifying selection versus selective neutrality and interpreting the tests results

Before this session, to understand all the notation, read the section [4.2 Synonymous and Nonsynonymous Substitutions](https://www.megasoftware.net/mega1_manual/Distance.html) from MEGAX help and the section *Rates of Substitution of Selected Alleles* from Chapter 8 in Nielsen's and Slatkin's book, specially BOX 8.2 and 8.3.

We are going to work with the following [data sets](data.zip):

1. `gstdDroso.meg`: exonic nuclear region sequence of 600 bp from two sister Drosophila species, *D. simulans* and *D. melanogaster*. This gene is involved in the detoxification.

2. `Nd5.meg`: mitochondrial gene sequences from human and chimpanzee. It's a subunit of the largest of the five complexes of the electron transport chain. 

3. `HLA-3Seq.meg` : is a group of related proteins that are encoded by the major histocompatibility complex (MHC) gene complex in humans. The dataset has been downloaded from *Molecular Evolution and Phylogenetics* book (Nei and Kumar 2000).

#### A. Examining patterns of substitution between a pair of sequences and using the large sample test

##### 1. Estimate the number of synonymous (S) and non-synonymous (N) sites, Sd, Nd, pS, pN, dS, dN, w (omega), dN/dS using two different methods (Nei & Gojobori and Modified Nei & Gojobori) for each gene. Discuss the difference you observe in the estimates and how sensitive these are to the choice of methods.

To get all this statistics, on MEGAX, you have to:

1. Load the data
2. Click on `DISTANCE` and click on `Compute Overall Mean Distance...`
3. Change:
    - `Substitutions Type` to `Syn-Nonsynonymous` option
    - `Genetic Code Table` to the most apropiate option
    - `Model\Method` you can choose `Nei-Gojobori method` or `Modified Nei-Gojobori method` depending the method you want to check. Be aware that when you choose `Modified Nei-Gojobori method` you are aked to input a Transition/Transversion (R) value; you must check for that using MEGAX. Then, once you have selected the method, you have 3 aditional options for each:
        + `No. differences` to get Sd and Nd
        + `Proportion` to get pS, pN
        + `Jukes-Cantor` to get dN, dS
    - `Substitutions to Include` to either `Synonymous only` (Sd, pS, dS) or `Nonsynonymous only` (Nd, pN, dN) depending on what you want to compute
 
By repeating the steps above, you have to fill up a table like this:

|      Data     |          Method         | R | S | N | Sd | Nd | pS | pN | dS | dN | w = dN/dS |
|---------------|-------------------------|---|---|---|----|----|----|----|----|----|-----------|
| gstdDroso.meg | Nei & Gojobori          |   |   |   |    |    |    |    |    |    |           |
|               | Modified Nei & Gojobori |   |   |   |    |    |    |    |    |    |           |
| Nd5.meg       | Nei & Gojobori          |   |   |   |    |    |    |    |    |    |           |
|               | Modified Nei & Gojobori |   |   |   |    |    |    |    |    |    |           |
| HLA-3Seq.meg  | Nei & Gojobori          |   |   |   |    |    |    |    |    |    |           |
|               | Modified Nei & Gojobori |   |   |   |    |    |    |    |    |    |           |

I recomend you team up with some people (5 more) and distribute each line to be computed. 

##### 2. Are these genes apparently evolving neutrally? 

First, think about it from the previous table. Then, check it with a more formal test of selection following these steps:

1. Click on `SELECTION` and click on `Codon-based Z-test of Selection`
2. Select `Overall Average` on `Scope`
3. Select the either Nei-Gojobori or the modified version on `Model/Method`

Note the Z-value and the p-values extending the table you filled up before. 

##### What are the different alternative hypothesis you can choose from (different options under the `Test Hypothesis (HA: alternative)`)? Why are they different?

##### 3. Do you get different results depending on the method used? Why? which one do you think is more correct?

In the section *Adaptive evolution* in [scan 1](scan1.pdf) and [scan 2](scan2.pdf) you can see the results obtained in the *Molecular Evolution and Phylogenetics* book (Nei and Kumar 2000). 

##### How do they compare to your results? If you get different results, why do you think that happens? 

### 2. Finish with exercises from Nielsen and Slatkin or make 2 Kahoot questions

