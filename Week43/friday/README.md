# Friday Week43 (UNDER CONSTRUCTION)

## Work plan 

### 1. MEGAX exercise to analyze patterns of synonymous vs. non–synonymous substitutions  

Learning goals of this computer session:

+ Getting familiar with methods available for estimating dN, dS and the dN/dS ratio
+ Choosing a method for estimating dN and dS adapted to your dataset. 
+ Testing for purifying selection versus selective neutrality and interpreting the tests results

Before this session, to understand all the notation, read the section [4.2 Synonymous and Nonsynonymous Substitutions](https://www.megasoftware.net/mega1_manual/Distance.html) from MEGAX help and the section Rates of Substitution of Selected Alleles from Chapter 8 in Nielsen's and Slatkin's book, specially BOX 8.2 and 8.3.

#### A. Examining patterns of substitution between a pair of sequences and using the large sample test

First we consider two datasets that examine only divergence between two species: 

1. `gstdDroso.meg`: exonic nuclear region sequence of 600 bp from two sister Drosophila species, *D. simulans* and *D. melanogaster*.
2. `Nd5.meg`: mitochondrial gene sequences from human chimpanzee.


##### 1. Estimate the number of synonymous (S) and non-synonymous (N) sites, Sd, Nd, pS, pN, dS, dN, w (omega), dN/dS using two different methods (Nei & Gojobori and Modified Nei & Gojobori) for each gene. Discuss the difference you observe in the estimates and how sensitive these are to the choice of methods.

To get all this statistics you have to:

1. click on `DISTANCE`
2. Change:
    - `Substitutions Type` to `Syn-Nonsynonymous` option
    - `Genetic Code Table` to the most apropiate option
    - `Model\Method` : You can choose `Nei-Gojobori method` or `Modified Nei-Gojobori method` depending the method you want to check. Then you have 3 options for each method.
        + `No. differences` to get Sd and Nd
        + `Proportion` to get pS, pN
        + `Jukes-Cantor` to get dN, dS
    - `Substitutions to Include` to either `Synonymous only` (Sd, pS, dS) or `Nonsynonymous only` (Nd, pN, dN) depending on what you want to compute
 

You have to fill up a table like this:

|      Data     |          Method         | S | N | Sd | Nd | pS | pN | dS | dN | w | dN/dS |
|---------------|-------------------------|---|---|----|----|----|----|----|----|---|-------|
| gstdDroso.meg | Nei & Gojobori          |   |   |    |    |    |    |    |    |   |       |
|               | Modified Nei & Gojobori |   |   |    |    |    |    |    |    |   |       |
|---------------|-------------------------|---|---|----|----|----|----|----|----|---|-------|
| Nd5.meg       | Nei & Gojobori          |   |   |    |    |    |    |    |    |   |       |
|               | Modified Nei & Gojobori |   |   |    |    |    |    |    |    |   |       |

##### 2. Can you explain the differences in the results you get above by examining the pattern of molecular evolution of Gstd and Nd5? 

Hint: discuss what assumptions are underlying Nei &  Gojobori versus modified Nei & Gojobori methods for estimating dN and dS.

##### 3. Are these genes apparently evolving neutrally or under purifying selection?

Hint use the large sample test provided by Mega to test that hypothesis

B. Patterns of substitution in the MHC molecule
Next we consider a dataset provided by Nei and Kumar on the MHC molecule (example dataset of MEGA “HLA-3Seq.meg" data file). 
1. Use two different methods (Nei Gojobori, Modified Nei Gojobori) to examine patterns of substitution and discuss your finding: Is this gene apparently evolving neutrally/under purifying selection/ positive selection?
2. Is the finding robust to the method used? Discuss how this pattern of evolution can be explained by the biological function of the MHC. 
Hint: Compare your results with those reported in Chapter 4.
Examining heterogeneity in selective constraint and substitution rate along a sequence
Nef (Negative Regulatory Factor) is a protein encoded by HIV (among other lentiviruses). Nef is often referred to as a virulence factor. The Nef function is to manipulate the host's cellular machinery and thus allow infection, survival or replication of the pathogen. 
(This bit and the drawing below is taken from a defunct Wikipedia article. Fore more on this see:
http://en.wikipedia.org/wiki/Nef_%28protein%29)
 
1. Is the nef gene undergoing purifying selection? 
2. Use the HIV_nef gene dataset and use the HyPhy interface provided in Mega to study variation in dN and dS along the molecule. 
To do so you first need to choose a substitution model (F81 and HKY, or Tamura Nei).  Base your choice on what you know about the pattern of evolution of that gene 
Hint to learn about the pattern of evolution you can examine first a few substitution models)
3. Discuss the variation in dN and dS. Why is the dN/dS ratio is not reported here, what alternative contrast between dN and dS can be used to detect sites evolving under strong purifying selection? Are some sites evolving neutrally / possibly under positive selection?
4. Discuss what meaning has the p-value reported for each codon position ( Hint examine the details in the caption of the analysis output)


