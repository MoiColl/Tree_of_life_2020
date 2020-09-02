# Friday Week36

### Work plan


### 1. Understanding the use of PubMed and GenBank

GenBank is a useful database that we will acces trhough MEGAX to downlowad sequences of interest. You can read more [here](https://www.ncbi.nlm.nih.gov/genbank/). In order to use GenBank efficiently, as other databases such as [PubMed](https://pubmed.ncbi.nlm.nih.gov) to search for papers, it is a good idea to use specific search fields. These can be specified as e.g. [Author], [pdat] (publication time) and [Title] and use logical operators to combine search terms, e.g. AND, OR, NOT. For example, try to search “Zhao[Author] AND Wu[Author] AND Yu[Author] AND coronavirus[Title]” on [GenBank](https://www.ncbi.nlm.nih.gov/genbank/).

By seraching papers in [PubMed](https://pubmed.ncbi.nlm.nih.gov) and [GenBank](https://www.ncbi.nlm.nih.gov/genbank/), answer the following questions:

1. Find and download the paper by Craig Venter from 2001 describing sequencing of the first human genome. How many pages is the paper? Where was it published? How can the sequence be obtained?
2. Find the paper on the high coverage archaic Denisovan sequence published by Svante Pääbo's group and answer the same questions. Who were the Denisovans?
How many DNA sequences and protein sequences have been determined in the dolphin (you might want to use the latin name)
Find the Taxonomic position of Dolphins and find the number of DNA sequences deposited in GenBank for each of the dolphin species
Find sequences from FOXP2, which is a protein involved in human speech. How many different species has the nucleotide sequence been determined for? Try downloading the sequences (in FASTA format). Save them (or add sequences to the MEGA alignment editor). You should download equally sized sequences of the same kind (i.e. either genomic sequences, mRNA sequences or protein sequences, not a mixture). You are free to download either protein or nucleotide sequences. Create a file called foxp2.fas

### 2. Aligning sequences with MEGAX

Follow [2. Align Sequences](https://www.megasoftware.net/web_help_10/index.htm#t=Part_I_Getting_Started%2FA_Walk_Through_MEGA%2FAligning_Sequences.htm) tutorial from [MEGAX-Help](https://www.megasoftware.net/web_help_10/index.htm#t=Introduction.htm)

    There are some parts of the tutorial that are wrong. Here you have some fixies:

    1. In the **Aligning Sequences by ClustalW** section, there is an step that says

    ```Exit the Alignment Explorer by selecting Data | Exit Aln Explorer from the main menu.```
    
    Instead of **Exit Aln Explorer**, you will find **Quit**
    
    2. In the **Aligning Sequences Using Muscle** there is a sentence that tells you that

    ```Near the bottom of the MUSCLE - AppLink window, you will see a row called Alignment Info. You can read information about the Muscle program.```
    
    But I could not find it. If you can't neither, skip this step

    3. In the **Obtaining Sequence Data from the Internet (GenBank)** section, you will see that the tutorial says

    ```If you have checked more than one box: locate the Display Settings dropdown (located near the top left hand side of the page directly under the tab headings).```
    
    You just have to click on **Summary** drop down menu (Fig1) and follow the next indications. Be aware that once you press **Fasta (text)** it automatically applies it, so you don't need to press any **Apply button**.
    

    <img src="Fig1.png" width="50%">

    **Fig1.** Summary drop down menu location


#### Extra info

1. Paper that investigate the COVID19 spread in the early times of the first outbreak and study of some particular cases in Iceland

    Gudbjartsson D, Helgason A, Jonsson H, Magnusson O, Melsted P, Norddahl G et al. [Spread of SARS-CoV-2 in the Icelandic Population](https://www.nejm.org/doi/full/10.1056/NEJMoa2006100). New England Journal of Medicine. 2020;382(24):2302-2315.

2. Repository of all sequenced SARS-CoV2 worldwide with interactive phylogenetic tree of the sequences ([link](https://nextstrain.org/ncov/global))
