# Friday Week43 (UNDER CONSTRUCTION)

## Work plan 

### 1. MEGAX exercise to analyze patterns of synonymous vs. non–synonymous substitutions  

Learning goals of this computer session:

+ Getting familiar with methods available for estimating dN, dS and the dN/dS ratio
+ Choosing a method for estimating dN and dS adapted to your dataset. 
+ Testing for purifying selection versus selective neutrality and interpreting the tests results

Before this session, to understand all the notation, read the section [4.2 Synonymous and Nonsynonymous Substitutions](https://www.megasoftware.net/mega1_manual/Distance.html).

#### A. Examining patterns of substitution between a pair of sequences and using the large sample test

First we consider two datasets that examine only divergence between two species: 

1. `gstdDroso.meg`: exonic nuclear region sequence of 600 bp from two sister Drosophila species, *D. simulans* and *D. melanogaster*.
2. `Nd5.meg`: mitochondrial gene sequences from human chimpanzee.


##### 1. Estimate the number of synonymous (S) and non-synonymous (N) sites, Sd, Nd, pN, pS, dN, dS, w (omega), dN/dS using two different methods (Nei & Gojobori, Modified Nei & Gojobori) for each gene (making a table is helpful). Discuss the difference you observe in the estimates and how sensitive these are to the choice of methods.

For that, go to MEGAX > DISTANCE > Substitutions Type (Syn-Nonsynonymous), Genetic Code Table (choose the most apropiate), Model/Method ()


    S   |    N   |   Sd  |   Nd |   pS   |   pN   |   dN   |   dS 
--------|--------|-------|------|--------|--------|--------|-------
 143.44 | 457.20 | 10.17 | 9.83 | 0.0709 | 0.0215 | 0.0218 | 0.0745


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


