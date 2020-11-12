# Friday Week46

## Work plan

This week, we will be analyzing the data from the [Skov et al. (2017)](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1006834) paper. You will need to extract gene-specific data from the provided files using R and answer questions about your findings.

### Data files
Download and unzip the data from [`data.zip`](data.zip). The folder contains three tab-delimited text files:
#### 1. genes.txt
This file contains basic information about Y chromosome genes, the most important being the gene symbols and positional coordinates on the Y.
#### 2. variants.txt
This file contains information about all the variants found of the Y (both in genic and inter-genic regions). The most important data here are the Position and Type column of the file.
#### 3. copyNumbers.txt
This file contains copy number variation information for each gene and individual.

### R examples
The most useful R functions that you will need to answer the questions are [`subset`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/subset) and [`melt`](https://www.rdocumentation.org/packages/reshape2/versions/1.4.4/topics/melt). Examples on how to use these functions can be found in the [`examples.R.zip`](examples.R.zip) file. However, there are many ways in R to subset and extract information from datasets, so those of you who are comfortable with R programming can use whichever method you choose to get to the required answers.

The [`subset`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/subset) function is useful when you want to extract a proportion of a dataset that matches specific criteria. For example, you will need to extract variants in a specific region of the Y (e.g. a gene). Assuming that variants are contained in a `variants` data.frame loaded into R, and that the column `Position` contains information about variant position, you can subset the data.frame using the command:

`variants_8000000_9000000 <- subset(variants, (Position>=8000000) & (Position<=9000000))`

This will create a new data.frame `variants_8000000_9000000` that contains variants between positions 8000000 and 9000000.

The [`melt`](https://www.rdocumentation.org/packages/reshape2/versions/1.4.4/topics/melt) function is part of the [`reshape2`](https://www.rdocumentation.org/packages/reshape2/versions/1.4.4) library and is useful when you want to transform column data into row data. Specifically, the `genes.txt` file has a `Symbol` column where each row contains a gene symbol, while the `copyNumbers.txt` file has gene symbols as columns. For subsetting purposes, it may be easier to `melt` the `copyNumbers.txt` data.frame as shown in [`examples.R.zip`](examples.R.zip).

### Strategy
#### 1. Familiarize yourselves with the data.frames.
Load the data.frames into R, plot some variables and try to understand how the data is structured.
#### 2. Read the questions.
At the end of this text, there are 10 questions you need to find answers to. Read them carefully before you start programming so that you can have an idea of what is required of you.
#### 3. Start programming.
My advice is to use data subsetting in combination with for loops to calculate the necessary statistics quickly and efficiently. Again, those of you more confident in your programming skill, feel free to use other methods of your choosing to answer questions.

### Questions
#### 1. What is the mean SNP frequency across genes? (Hint: normalize the number of SNPs in a gene with gene length to get the frequency.)
#### 2. Which gene has the highest SNP frequency and what is the value?
#### 3. What is the mean mutation frequency of non-SNP mutations? Compare this value to mean SNP frequency - is this expected and why?
#### 4. Which gene has the highest non-SNP frequency per position and what is the value?
#### 5. Which individual (column `Ind` in the `copyNumbers` data.frame) has the highest mean copy number across genes?
#### 6. Which gene has the highest mean copy number across individuals?
#### 7. Is mean copy number more vairable across genes or individuals? Why might this be the case?
#### 8. What is the correlation coefficient between mean gene copy number and SNP frequency? Is this expected and why?
#### 9. For each gene, re-caclulate SNP frequency by normalizing the number of SNPs with the product of gene length and mean copy number (i.e. the sum total sequence length of all copies of a gene). Which gene has the highest SNP frequency now?
#### 10. Why do the results differ between question 2 and 9? (Hint: Look at the "SNP calling in palindromes" section of the paper.)

### Optional exercize A
Divide the the Y chromosome into 100kb non-overlapping windows and calculate mutation frequences for each window. Plot mutation frequencies along window positions. What patterns can you see?

### Optional exercize B
Are there differences in mutation frequencies or copy numbers between genes that differ in tissue expression (testis vs. non-testis expression) or regional position (X-degenerate vs. ampliconic)? Are there differences between different Y haplogroups?

