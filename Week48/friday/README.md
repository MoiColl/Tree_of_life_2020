# Friday Week48

## Work plan
For this week's exercise, we will recreate the PCA results of the paper we discussed on Tuesday, and start working on a new dataset. The questions at the end of the document are your 3rd hand-in exercise to be e-mailed to `jurajbergman@birc.au.dk` by Friday, 12:00 (noon) - Dec. 4th.

## Background (adapted from [link](https://github.com/stschiff/compvar-workshop-docs/tree/master/contents/02_pca))

### Principal Components Analysis (PCA)
Principal components analysis (PCA) is one of the most useful techniques to visualise genetic diversity in a dataset. The methodology is not restricted to genetic data, but in general allows breaking down high-dimensional datasets to two or more dimensions for visualisation in a two-dimensional space.

To understand how PCA works, consider a single individual and its representation by its genomic markers. Formally, each individual is a point in an n-dimensional space, where each dimension is a marker with its corresponding genotype, or missing data. To visualise this high-dimensional dataset, we would like to project it down to two dimensions. But as there are many ways to project the shadow of a three-dimensional object on a two dimensional plane, there are many more ways to project an n-dimensional cloud of points to two dimensions. What PCA does is figuring out the "best" way to do this projection in order to visualise the major components of variance in the data.

### Eigensoft package ([link](https://github.com/DReichLab/EIG))
For actually running the analysis, we use a software called `smartPCA` from the Eigensoft package. As many other tools from this and related packages, smartPCA reads in a parameter file which specifies its input and output files and options. There are four files required as input to the program. The `.snp` file contains the SNP positions. It consists of six columns: SNP-name, chromosome, genetic positions, physical position, reference allele, alternative allele. The `.ind` file contains the names of the individuals. It consists of three columns: Individual Name, Sex (encoded as M(ale), F(emale), or U(nknown)), and population name. The `.geno` file contains the genotype matrix, with individuals laid out from left to right, and SNP positions laid out from top to bottom. The last input file is a list of populations that you want to use to calculate the output files.

### Population lists vs. Projection
The list of populations is very crucial for inference. It specifies the populations whose individuals are used to calculate the principal components. Why not just use all populations? For two reasons: First, there are simply too many of them. We don't want to use all of them, since the computation would take too long. More importantly, however, we also try to avoid using ancient samples to compute principal components, to avoid specific ancient DNA-related artefacts affecting the computation.

So what happens to individuals that are not in populations listed in the population list? Well, fortunately, they are not just ignored, but "projected". This means that after the principal components have been computed, all individuals (not just the ones belonging to the populations in the initial list) are projected onto these principal components. That way, we can visualise ancient populations in the context of modern genetic variation. While that may sound a bit problematic at first (surely there must be variation in ancient populations that is not represented well by modern populations), it turns out to be nevertheless one of the most useful tools for this purpose. The advantage of avoiding ancient DNA artefacts and batch effects to affect the visualisation outweighs the disadvantage of missing some private genetic variation components in the ancient populations themselves. Of course, that argument breaks down once the analysed populations become too ancient and detached from modern genetic variation. 

## Data
The data you will be analyzing in this exercise has already been run with `smartPCA` and you will be working with principal components of west and east Eurasian populations.

### West Eurasian populations
The principal component dataset is contained in [`dataWE.txt.zip`](dataWE.txt.zip). The columns of the dataset contain the ID of an individual, followed by the first 10 principal components, followed by the population identifier column (`POP`) and modern or ancient population identifier (`ModAnc`). Some populations in the `POP` column may be unfamiliar to you - I encourage you to google the populations. 

The [`dataWE_LatLong.txt.zip`](dataWE_LatLong.txt.zip) file contains three columns: ID of an ancient individual, latitude and longitude of ancient samples (note that latitude/longitude data is not available for all ancient samples).

### East Eurasian populations
The datasets are contained in the [`dataEE.txt.zip`](dataEE.txt.zip) file. The dataset contains modern individuals from Russia and Siberia, and four ancient Eskimo populations - two from Russian Eskimo people and two from USA Eskimo populations.

## Strategy
I suggest loading the data into `R` and familiarizing yourself with it. Use the script [`examples.R.zip`](examples.R.zip) to get started with plotting data. Plot the first two PCs from the [`dataWE.txt.zip`](dataWE.txt.zip) dataset to make sure the plot is qualitatively similar to the PC plot from Mathieson et al. (2015).

## Questions
### West Eurasian populations
1. Plot the first two principal components of the [`dataWE.txt.zip`](dataWE.txt.zip) file. Use the `ModAnc` column to color the points.
2. Subset the dataset to the English, Norwegian, Finnish and Icelandic population (using the `POP` column) and plot the result. Interpret the relationship between populations (e.g., which populations cluster together, is this expected given the geography of the populations, how do the PCs split the populations?).
3. Subset the dataset to four populations of your choice and plot the result. Interpret the relationship between populations.
4. Plot the third and fourth principal component. Has the relationship between populations changed?
5. Correlate the latitude and longitude of ancient individuals with the first two principal components (hint: use the `R` function `merge` to merge the [`dataWE.txt.zip`](dataWE.txt.zip) and [`dataWE_LatLong.txt.zip`](dataWE_LatLong.txt.zip) datasets by the `IND` column). Report the correlation coefficients and their significance. Comment on the result.

### East Eurasian populations
1. Plot the first two principal components of the [`dataEE.txt.zip`](dataWE.txt.zip) dataset. Use the `POP` column to color the points. Interpret the relationship between populations (e.g., which populations cluster together, is this expected given the geography of the populations, how do the PCs split the populations?).
2. Plot the third and fourth principal component. How has the relationship between populations changed?
