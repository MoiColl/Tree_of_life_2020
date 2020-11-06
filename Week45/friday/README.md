# Friday Week45

## Work plan

1. Gene Duplication tutorial in MEGAX
2. Globins Gene Duplication exercise in MEGAX

### 1. Gene Duplication tutorial in MEGAX

This example shows how to identify gene duplications and speciation in MEGAX. For this analysis, MEGA uses a Gene Duplication Wizard window which will walk you through the necessary steps. The data files used in this example can be found  in the MEGA/Examples folder (The default location for Windows users is in `~\Documents\MEGAX\Examples\`

From the main MEGAX window, select `USER TREE` and click on `Find Gene Duplications`. The Gene Duplication Wizard window, which outlines the 6 steps, will be displayed.

#### Step1:

First, we will load a gene tree file. 

1. Click `Browse...` in the `LOAD GENE TREE FILE` section
2. Find and select the “gene_tree.nwk” tree file in the `MEGA X\Examples` directory

#### Step 2:

Second, we will provide species names for each taxon in the gene tree. 

1. Click the `Map species` button in the `MAP SPECIES NAMES TO TAXA` 

Species names could be mapped manually using the grid displayed in this dialog, but we will load the names from a text file that specifies the mapping as taxon_name=species_name for each taxon in the gene tree. 

2. Click `File` in the upper bar, then `Import` and then find the “taxa_to_species_map.txt” file

Once MEGAX loads the file, the grid will be populated with species names for each taxon. 

3. Click the `OK` button.

#### Step 3:

Next, we can optionally load a trusted species tree file. 

1. Click `Browse...` in the `LOAD SPECIES TREE (OPTIONAL)` section
2. Find and select the “species_tree.nwk” file in the MEGA\Examples directory 

After the species tree file is parsed by MEGAX, the Gene Duplication Wizard will jump to Step 5. This is because the tree in the “gene_tree.nwk” file is already rooted so we don’t need to specify the root to MEGAX.

#### Step 4: 

We skip this step for brevity (but don’t worry, it is done exactly as in Step 5). Note – if our gene tree was not rooted, we could optionally skip this step. In that case, MEGA would execute the analysis with all possible placements of the root and keep the result(s) that minimize the number of gene duplications found.

#### Step 5:

Next, must specify the placement of the root for the species tree as this is required for the analysis. 

1. Click the `Set Root` in the `ROOT THE SPECIES TREE` section 

The species tree will be displayed in Tree Explorer window and the cursor will be adorned with the root placement tool icon. 

2. Click on the branch to “puffer fish” in the tree and then click the `OK` button on the toolbar at the top of the window

#### Step 6: 

Finally, in the Gene Duplications Wizard window, click the `Launch Analysis` button. Progress will be displayed as the analysis runs. When the analysis completes, the Tree Explorer window will return and display the gene tree.
 
#### Viewing the results

In the Tree Explorer window, the gene tree will be displayed with gene duplications and speciation events shown. Blue diamonds indicate those nodes which represent gene duplication events. Red diamonds indicate speciation events. 

To display species names instead of taxa names:

1. Click `View` 
2. Click `Show/ Hide`
3. Click `Species Names` 

You can toggle the display of markers for gene duplications and speciation events by:

1. Click `View`
2. Click `Show/Hide`
3. Click `Gene Duplication Markers` or `Speciation Markers`

You can also traverse gene duplications or speciations throughout the tree by:

1. Click `Search`
2. Click `Gene Duplication/Speciation Events`

### 2. Globins Gene Duplication exercise in MEGAX

As you read in page 297 of Dan Graur's book ([here](scan.zip) you have the scaned copies), the human globins have a deeply studied gene duplication history (Fig 1). In this exercise, you are only provided with some globin genes from humans, chimps, rats and fruit fies ([globins.fa.zip](globins.fa.zip)). 

<img src="Fig1.png" width="50%">

>**Fig 1.** Dan Graur's Book Figure 7.16

By using all the knowledge you aquired during this course, you will have to:

1. Align the sequences
2. Test which substitution model and other parameters explain the best your data
3. Construct a phylogenetic tree
4. Interpret the phylogenetic tree with what it is explained in Dan Graur's (chapter 7)

NOTE: When you construct the phylogenetic tree, remember you can root the tree for better visualization. 

Then, asnwer those questions:

##### 1. For each internal node discuss if it represents a gene duplication or a speciation event.
##### 2. Do HBA genes in primates and in rats have a common ancestor? Think about an scenario that could lead to this tree
##### 3. Comment the phylogenetic relationship between the HBA in primates.
##### 4. Check your hypothesis of gene duplication and species split in humans from the first question and by comparing with Figure 7.16 in Dan Graur's book and the split times between species (check this [link](http://www.timetree.org)).




