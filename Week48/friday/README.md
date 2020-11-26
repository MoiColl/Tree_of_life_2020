# Friday Week47

## Work plan
For this week's exercize, we will recreate the PCA results of the paper we discussed on Tuesday, and start working on a new dataset that is part of your 3rd hand-in exercize.

## Background (adapted from [link](https://github.com/stschiff/compvar-workshop-docs/tree/master/contents/02_pca))

### Principal Components Analysis (PCA)
Principal components analysis (PCA) is one of the most useful techniques to visualise genetic diversity in a dataset. The methodology is not restricted to genetic data, but in general allows breaking down high-dimensional datasets to two or more dimensions for visualisation in a two-dimensional space.

To understand how PCA works, consider a single individual and its representation by its 593,124 markers. Formally, each individual is a point in a 593,124-dimensional space, where each dimension can take only the three possible genotypes indicated above, or have missing data. To visualise this high-dimensional dataset, we would like to project it down to two dimensions. But as there are many ways to project the shadow of a three-dimensional object on a two dimensional plane, there are many (and even more) ways to project a 593,124-dimensional cloud of points to two dimensions. What PCA does is figuring out the "best" way to do this project in order to visualise the major components of variance in the data.

### Eigensoft package ([link](https://github.com/DReichLab/EIG))
For actually running the analysis, we use a software called `smartPCA` from the Eigensoft package. As many other tools from this and related packages, smartPCA reads in a parameter file which specifies its input and output files and options. The basic format of the parameter file with one extra option (lsqproject) looks like this:

`genotypename: <GENOTYPE_DATA>.geno`
`snpname: <GENOTYPE_DATA>.snp`
`indivname: <GENOTYPE_DATA>.ind`
`evecoutname: <OUT_FILE>.evec`
`evaloutname: <OUT_FILE>.eval`
`poplistname: <POPULATION_LIST_FILE>.txt`
`lsqproject: YES`
`numoutevec: 4`
`numthreads: 1`

Here, the first three parameters specify the input genotype files, as discussed above. The next two rows specify two output file names, typically with ending *.evec and *.eval. The parameter line beginning with poplistname contains a file with a list of populations used for calculating the principal components (see below). The option lsqproject is important for applications including ancient DNA with lots of missing data, which I will not elaborate on. For the purpose of this workshop, you should use lsqproject: YES. The last option numoutevec specifies the number of principal components that we compute.
