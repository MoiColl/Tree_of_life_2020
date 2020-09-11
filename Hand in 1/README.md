# Hand in 1 - 5 datasets analysis (UNDER CONSTRUCTION)

In this hand in you will analyse [5 datasets](handin1_dataset.zip) in order to build phylogenetic trees and answer some questions (below) for each data set. You must write a report answering the questions including the trees you build for each with the detailed information on how this tree was constructed (substitution model, alignment method, number of bootstraps...). This report must be uploaded in Blackboard in **PDF** format before **Friday 11:59 am**. 

Short description of the [5 datasets](handin1_dataset.zip):

1. **primates**: Mitochondrial gene in 5 primates used in many examples in Nei and Kumar.

2. **homomtDNA**: Aligned full mtDNA sequences from two Neanderthals, 1 homo sapiens, 2 denisovans and one homo heidelbergensis.

3. **whales**: Whale phylogeny data set discussed in the book. It is from the gamma-fibronogen gene in 16 mammalian species. It should be in reading frame so it can be analysed as coding. 

4. **BRCA1**: Orthologue genes to the human breast cancer susceptibility gene (BRCA1) from 20 different rodent species. It is in reading frame.

5. **shaplotypeslyrata**: Protein coding sequences from different self-incompatibility alleles from the species Arabidopsis lyrata together with sequences from other members of the same gene family. 


### 1. Primates

1.1.	Reproduce the different trees from the Nei and Kumar book (Fig 1). Just do UPGMA and NJ trees. Paste in your trees.

<img src="Fig1.png" width="50%">

**Fig 1.** Nei and Kumar book figure for the primate dataset.

1.2.	Why are the branch lengths longer when Kimura distances are used compared to p distances? 
1.3.	Try to reproduce the best parsimony tree. Does the topology agree with distance methods? What are the bootstrap values? What do they indicate in this tree?

### 2. HomomtDNA

2.1.	Build a tree using NJ and 100 bootstrap replicates. 
2.2.	Is the branching order as you would expect? (exploit your bootstrap evidence)
2.3.	Estimate the transition/transversion bias as well as the gamma parameter using maximum likelihood under the Models menu and write down your result

### 3. Whales

3.1.	Build trees using parsimony and NJ, UPGMA and likelihood (paste in your trees)
3.2.	Do you find the same branching order and bootstrap values? 
3.3.	Which methods provide the largest bootstrap support? Is this what you expected?

### 4. BRCA1

4.1.	Make two phylogenetic trees using different methods. Paste in your trees
4.2.	Are they significantly different when comparing bootstrap values? (assume that a bootstrap value above 70% is significant)
4.3.	Is the phylogeny well resolved, i.e. are most bootstrap values > 80%? 

### 5. Shaplotypeslyrata

5.1.	Construct different phylogentic trees and bootstrap them. Are they well resolved? 
5.2.	Try to estimate two phylogenetic trees using either synonymous or non-synonymous substitutions and Neigbour-Joining using MEGA. Paste in your trees. Are the trees different? Which one do you trust most? 
Translate into amino acid sequences using MEGA and export an amino acid alignment. View this alignment in alignment explorer, if you are not happy with it you may realign, save in MEGA format and reanalyze in MEGA or another program, now as amino acids 
5.3.	Construct protein based trees in MEGA. Paste in your tree
5.4.	Does the tree look most like the synonymous or non-synonymous tree from question 14?

