# final-project-group-7

For our final project, we are looking at police brutality.
Present-day conflicts of equality vs. equity
We decided to relate the difference between equity and equality using data on police violence against minorities
We will use machine learning to see if it can predict the race of an individual killed by police using multiple variables such as: if armed, fleeing from police, age, 
We want to see if the individuals killed by police were indeed a threat, or were the killings race driven.



## A Logistic Regression model was used to predict if the individuals were African American or not.

In the first portion we want to see if the individuals killed by police were indeed a threat, or race driven. 

Various variables:
* Age
* Gender
* Threat Level
* Armed
* Fleeing
* Police Body Cameras
* Signs of Mental Illness
* Armed

These variables were inputed into our Logistic Regression Model to see if the model could accurately predict of the individuals killed were African American. And in the final portion of the Logistic Regression Model, each individual variable was inputed to find any correlation between a specific variable.

### Results

#### All Variables
* Random Forest

<img src="https://raw.githubusercontent.com/kannguyen1210/final-project-group-7/main/Data/All_Variables_Results_Random_Forest.png" width="550" height="400">
* Easy Ensemble

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/All_Variables_Results_Easy_Ensemble.png" width="550" height="400">

#### Age
* Random Forest

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/Age_Results_Random_Forest.png" width="550" height="400">
* Easy Ensemble

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/Age_Results_Easy_Ensemble.png" width="550" height="400">

#### Gender
* Random Forest

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/Gender_Results_Random_Forest.png" width="550" height="400">
* Easy Ensemble

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/Gender_Results_Easy_Ensemble.png" width="550" height="400">

#### Threat Level
* Random Forest

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/Threat_Level_Results_Random_Forest.png" width="550" height="400">
* Easy Ensemble

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/Threat_Level_Results_Easy_Ensemble.png" width="550" height="400">

#### Armed
* Random Forest

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/Armed_Results_Random_Forest.png" width="550" height="400">
* Easy Ensemble

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/Armed_Results_Easy_Ensemble.png" width="550" height="400">

#### Fleeing
* Random Forest

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/Fleeing_Results_Random_Forest.png" width="550" height="400">
* Easy Ensemble

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/Fleeing_Results_Easy_Ensemble.png" width="550" height="400">

#### Body Cameras
* Random Forest

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/Body_Camera_Results_Random_Forest.png" width="550" height="400">
* Easy Ensemble

<img src="https://github.com/kannguyen1210/final-project-group-7/blob/main/Data/Body_Camera_Results_Easy_Ensemble.png" width="550" height="400">

## In the second portion of the project we used CosineSimilarity Scores as part of NLP 

### Model

The initial part of the analysis relies on a word embedding model derived from GloVe (Global Vectors for Word Representation). The model was published by Stanford in 2018 and relies on an unsupervised learning algorithm to obtain vector representations for words using a variety of neuralnetwork models. Training is performed on an aggregated global word co-occurrence matrix from a massive corpus of text (close to 1.5 million words). Ultimately, the output of that training - which we draw on heavily here - is a 300-dimensional vector to represent each word. These resulting representations showcase interesting linear substructures of the word vector space. The main intuition underlying the model is the simpleobservation that ratios of word-word co-occurrence probabilities have the potential for encoding some form of meaning. Using these vector representations, one can ascertain cosine similarity between word vectors. This is an effective method for measuring the linguistic or semantic similarityof the corresponding words. 

### Similarity score: 
GloVe produces word vectors with a marked banded structure that is more easily apparent upon visualization (particularly when dimensionality reduction is achieved via PCA or t-SNE). The cosine similarity score ranges from 0-1 and it measures the degree of similarity between two vectors (how closely they are to pointing in the same direction). While it doesn’t represent a percentage – it can be thought of in a similar way where the closer the value is to 1 the more closely aligned the two vectors are in this massive 300-dimensional word space. The SpaCy library (an open-source software foradvanced natural language processing) was used in order to measure cosine similarity.

### Context 
The analysis included a wordlist of 9 words and listed the top 300 similarity scores for each word.

### Findings 

brutality 0.687317760308143 Oppression Rank 8
hate-crime 0.568610358797755 Racism Rank 24
policing 0.406902994213914 Racism Ranke 178
injustice 0.688244656577722 Racism Rank 7

We didn't find any relevant similarity scores int he top 300 words for: arrest report, arrest, black, african-american and mental health

## Dashboard: Our plans for the dashboard revolves around an interactive Tableau page that demonstrates visuals surrounding police brutality/targeted racism.
https://public.tableau.com/profile/madelyn.mathai#!/vizhome/PoliceBrutalityFinalProjectDashboard/Story1?publish=yes

Key Learnings:
Of those murdered by police, more African American victims tended to be fleeing.
African Americans also tended to be younger on average.
African Americans have a higher perceived threat level.
Despite having a higher perceived threat level, in instances of police brutality against African Americans, body cameras were more likely to be off.

We also produced some visuals in Tableau if the Natural Language Processing.

The dataset takes in the various facotrs: age, gender, signs of mental illness, if the individual tried to flee and if in all of these instances a body camera was worn by a police officer who shot and killed the suspect. Support Vector Machine (SVM) was used to split and train our model because it can give us a binary classifier True or False answer, if police were or were not wearing a body camera. 

## Raw dataset :

### Fatal Encounters
* Source: fatalencounters.org
* Number of records: 28,621
* Number of columns imported: 21

### Washington post shootings
* Source: Washington Post
* Number of records: 5,552
* Number of columns imported: 14


### State Demographic:
* Source: KFF estimates based on the 2008-2019 American Community Survey, 1-Year Estimates
* Number of records imported: 53

Raw data loaded into the database tables.

## Database with tables and relationship
* **Service**  : AWS RDS

* **Endpoint** : database-1.cukfyvhxl6ur.us-west-1.rds.amazonaws.com 

* **Database** : PostgresSQL


* **Tables**   :
  * State_demographic : Holds the statewise race details.
  * Fatal_encounter_org : Fatal Encounter details of each state
  * Shootings_washington_post : Shooting details of each state 
  * Fatal_ec_w_demog : Fatal encounters joined with state demographics
  * Shootings_wp_w_demog : Shootings joined with state demographics

* DB create Scripts is available in the sql folder , [init_scripts](https://github.com/kannguyen1210/final-project-group-7/blob/Srini/sql/init_scripts.sql) folder 

## ERD 
The diagram is in the following link  https://app.quickdatabasediagrams.com/#/d/ZZa7tm

![Police Brutality - Entity Relationship Diagram ](https://github.com/kannguyen1210/final-project-group-7/blob/Srini/sql/DFD.png)

## DB Code Snippet 

![Police Brutality - Code Snippet ](https://github.com/kannguyen1210/final-project-group-7/blob/Srini/sql/sql1.png)

![Police Brutality - Code Snippet ](https://github.com/kannguyen1210/final-project-group-7/blob/Srini/sql/sql2.png)


* DB work Script is available in the sql folder, [work.sql](https://github.com/kannguyen1210/final-project-group-7/blob/Srini/sql/work.sql) 


## Technical stack
* Cloud  		: AWS RDS
* Database  	: PostgresQL
* Scripts		: Python, JavaScript
* Tools 		: VSCode, Terminal, Tableau
* Repository	: Github, GitLab

