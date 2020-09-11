# Hand in 1 - 5 datasets analysis (UNDER CONSTRUCTION)

In this hand in you will analyse 5 datasets in order to build phylogenetic trees and get some conclusions out of them. You must write a report answering the questions you will find below including the trees you build with the detaild of how this tree was build (substitution model, alignment method, number of bootstraps...). This report must be uploaded in Blackboard in **PDF** format before **Friday 11:59 am**. 

Short description of data sets:

1. primates: Small data set from mitochondrial gene in 5 primates used many places Nei and Kumar.

2. homomtDNA: Aligned full mtDNA sequences from two Neanderthals, 1 homo sapiens, 2 denisovans (closer to Neanderthals than humans) and one homo heidelbergensis (outgroup)

3. whales: This is a whale phylogeny data set discussed in the book. It is from the gamma-fibronogen gene in 16 mammalian species. It should be in reading frame so it can be analysed as coding. 

4. BRCA1: This consists of sequences of the orthologue to the human breast cancer susceptibility gene, BRCA1, from 20 different rodent species. It is in reading frame.

5. shaplotypeslyrata: This data set consists of protein coding sequences from different self-incompatibility alleles from the species Arabidopsis lyrata together with sequences from other members of the same gene family. 





## Work plan

Remember from last week that we did part of the **steps of the phylogenetic analysis**, from sequence retrieve to distance matrix computation (Fig1).

<img src="Fig1.png" width="100%">

**Fig 1.** Steps of the phylogenetic analysis

This week we are going to explore which substitution model fits best our data, which tree building algorithm to use and how to assess confidence to that tree. During this exercise it is important that you keep all the results (screenshots with notes in a text editor, such as word, for example) that you obtain in the different parts in order to be able to compare them.

### 1. Testing substitution model

Here we are going to test which substitution model is the best of our data.

1. Download [`primates.meg`](primates.meg) which is the one from Chapter 3 in Nei and Kumar.
2. Open MEGAX and import this data to MEGAX. This can be easily done dragging the file to the main MEGAX window or cliking on the **DATA** button. 
3. Click **MODELS** on the main MEGAX window and click **Find Best DNA/Protein Models (ML)...**
