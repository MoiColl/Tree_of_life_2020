# Friday Week37 (UNDER CONSTRUCTION)

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

This will estimate likelihoods for each substitution model available and rank them according to the Bayesian information criterion (BIC). This value is similar to AIC. For now just accept that the smallest value is best.

1. Which model is best for this data? Save the Table of model scores since when running some of the tree building methods, you may not be able to use the best model.
2. What does G and I mean?
3. What is R? and what is in the 4 columns following the R column?
4. List the main differences between JC, Kimura, HKY, and Tamura/Nei models, based on Table 3.2 a,b,e below (Fig2). Relate what you find to question 3 above. 


<img src="Fig2.png" width="75%">

From now on, before you start any analysis you are well advised to determine the best substitution model first

### 2. Tree building

<img src="Fig3.png" width="75%">

Follow [Building Trees From Sequence Data](https://www.megasoftware.net/web_help_10/index.htm#t=Part_I_Getting_Started%2FA_Walk_Through_MEGA%2FBuilding_Trees_From_Sequence_Data.htm) tutorial from [MEGAX-Help](https://www.megasoftware.net/web_help_10/index.htm#t=Preface.htm)






