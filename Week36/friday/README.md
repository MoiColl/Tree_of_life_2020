# Friday Week36

### Work plan

During this TA session you are going to learn how to retrieve sequences (DNA, RNA, protein) and information about them from public datasets, align those sequences and finally compute a pairwise distance matrix with MEGAX. For each step, you are going to follow a tutorial to understand the basiscs and then, you will apply what you've learnt with a case example. I suggest to take the protein FOXP2 as a case example, but you are totally free to choose any other DNA, RNA or protein sequence. 

### 1. Understanding the use of PubMed and GenBank

GenBank is a useful database that conains DNA, RNA and protein sequences publicly available that we will acces trhough MEGAX to downlowad sequences of interest. You can read more abut it [here](https://www.ncbi.nlm.nih.gov/genbank/). 

In order to use GenBank efficiently, as other databases such as [PubMed](https://pubmed.ncbi.nlm.nih.gov) used to search for papers, it is a good idea to use specific search fields. These can be specified as e.g. [Author], [pdat] (publication time) and [Title] and use logical operators to combine search terms, e.g. AND, OR, NOT. For example, try to search “Zhao[Author] AND Wu[Author] AND Yu[Author] AND coronavirus[Title] AND 2020[pdat]” on [GenBank](https://www.ncbi.nlm.nih.gov/genbank/). Which paper comes up?

By seraching papers in [PubMed](https://pubmed.ncbi.nlm.nih.gov) and [GenBank](https://www.ncbi.nlm.nih.gov/genbank/), answer the following questions:

1. Find and download the paper of the first sequence of the human genome by the International Human Genome Sequencing Consortium or the one assembled by Craig Venter et al in 2001. How many pages is the paper? Where was it published? How can the sequence be obtained?
2. Find the paper on the high coverage archaic Denisovan sequence published by Svante Pääbo's group published in 2012 and answer the same questions. Who were the Denisovans?
3. How many sequences from the dolphin (you might want to use the latin name) can you find? You can choose any other animal!
4. Find the Taxonomic position of Dolphins and find the number of DNA sequences deposited in GenBank for some of the dolphin species
5. Find sequences from FOXP2. What can you learn about this protein?

### 2. Retrieving sequences from GenBank and Aligning them with MEGAX

#### 2.1. Retrieving sequences DIRECTLY from GenBank and Aligning them with MEGAX

In this section we are going to access GenBank from MEGAX to retrieve sequences and Align them using different multiple sequence aligners included in MEGAX.

Follow [2. Align Sequences](https://www.megasoftware.net/web_help_10/index.htm#t=Part_I_Getting_Started%2FA_Walk_Through_MEGA%2FAligning_Sequences.htm) tutorial from [MEGAX-Help](https://www.megasoftware.net/web_help_10/index.htm#t=Introduction.htm)

There are some parts of the tutorial that are wrong. Here you have some fixies:

1. In the **Aligning Sequences by ClustalW** section, there is an step that says

    ```Exit the Alignment Explorer by selecting Data | Exit Aln Explorer from the main menu.```
    
    Instead of **Exit Aln Explorer**, you will find **Quit**
    
2. In the **Aligning Sequences Using Muscle** there is a sentence that tells you that

    ```Near the bottom of the MUSCLE - AppLink window, you will see a row called Alignment Info. You can read information about the Muscle program.```
    
    But I could not find it. If you can't neither, skip this step


3. In the **Obtaining Sequence Data from the Internet (GenBank)** section, when it tells you to look for CFS sequence, I suggest that you look for any sequence you might be interested in. In my case I looked for the Neanderthal, Denisovan and Human mitocondrial DNA. If you follow what I've done, be aware that since they are big sequences, aligning them is going to take some time than smaller protein sequences.  
    
    
4. In the **Obtaining Sequence Data from the Internet (GenBank)** section, you will see that the tutorial says

    ```If you have checked more than one box: locate the Display Settings dropdown (located near the top left hand side of the page directly under the tab headings).```
    
    You just have to click on **Summary** drop down menu (Fig1) and follow the next indications. Be aware that once you press **Fasta (text)** it automatically applies it, so you don't need to press any **Apply button**.
    

    <img src="Fig1.png" width="50%">

    **Fig1.** Summary drop down menu location

#### 2.2. Retrieving sequences BY SEQUENCE HOMOLOGY from GenBank using BLAST and Aligning them with MEGAX

In this secction, in comparison to the previous one, we are going to choose a single sequence (query) and search other sequences that are homologous to that one (targets) using BLAST. Then, we are going to retrieve those sequences from GenBank and align them as we did in the previous seciton. 

BLAST (basic local alignment search tool) is an algorithm and program for comparing primary biological sequence information, such as the amino-acid sequences of proteins or the nucleotides of DNA and/or RNA sequences. A BLAST search enables a researcher to compare a subject protein or nucleotide sequence (called a query) with a library or database of sequences, and identify library sequences that resemble the query sequence above a certain threshold. [Wikipedia](https://en.wikipedia.org/wiki/BLAST_(biotechnology)).

Thus, we can search sequences that are homologous to a sequence of our interest using BLAST through MEGAX. Here you have a small tutorial of how to do so:

1. Open MEGAX
2. Click on **ALIGN** on the top menu and select **Edit/Build Alignment**. Press **OK** and then **DNA**
3. On the top menu you have a shortcut for **Query GenBank**. Otherwise you can click on **Web** and select **Query GenBank **.
4. As you did in the [2. Align Sequences](https://www.megasoftware.net/web_help_10/index.htm#t=Part_I_Getting_Started%2FA_Walk_Through_MEGA%2FAligning_Sequences.htm) tutorial, look for a protein. The Human FOXP2 could be an example and retrieve that sequence to MEGAX
5. Click on your sequence (it has to turn yellowish)
6. Similarly as you did to access GenBank, click on **Do BLAST search**. In the Query text box, you should see your sequence. If not, it means that you haven't selected your sequence.
7. Scroll down and click on **BLAST**
8. On the results page, scroll down and unselect the **select all** option. Then, select the sequences you might be interested in and click on the **GeneBank** link on top of the sequence results.
9. Finally, follow what you did in the [2. Align Sequences](https://www.megasoftware.net/web_help_10/index.htm#t=Part_I_Getting_Started%2FA_Walk_Through_MEGA%2FAligning_Sequences.htm) tutorial to retrieve the sequences you selected in BLAST and align those sequences

### 3. Get your case example sequences and align them

Now is the time for you to decide which sequence you want to investigate. I prepared this exercises with the **CDS** (**C**o**D**ing **S**equence) of FOXP2. It is important that you obtain a CDS DNA sequence in order to translate DNA to protein. If you don't, if you get a whole DNA sequence, be aware that the steps in which we translate the protein might not make sense for you, specially when we align sequences. 

You should also be aware that when you retrieve sequences, they should have similar lengths. If you get, for example, the CDS DNA sequence of the Human FOXP2, but you get the whole mRNA sequece of the Chimp FOXP2, then, you will get lots of gaps in your alignment, since you are not dealing with the same type of sequence. 

You might find an entry for the CDS of the gene you are interested. However, if you only find the mDNA sequence entry you will have to look for the CDS coordinates in the GenBank page of the gene (Fig2).

<img src="Fig2a.png" width="50%">
<img src="Fig2b.png" width="50%">
<img src="Fig2c.png" width="50%">
**Fig2.** How to get the CDS sequence form the RefSeq entry in GenBank

#### Extra info

1. Paper that investigate the COVID19 spread in the early times of the first outbreak and study of some particular cases in Iceland

    Gudbjartsson D, Helgason A, Jonsson H, Magnusson O, Melsted P, Norddahl G et al. [Spread of SARS-CoV-2 in the Icelandic Population](https://www.nejm.org/doi/full/10.1056/NEJMoa2006100). New England Journal of Medicine. 2020;382(24):2302-2315.

2. Repository of all sequenced SARS-CoV2 worldwide with interactive phylogenetic tree of the sequences ([link](https://nextstrain.org/ncov/global))
