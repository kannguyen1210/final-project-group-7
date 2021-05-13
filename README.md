# final-project-group-7

For our final project, we are looking at police brutality. We are still refining the question we want to ask, but so far we have looked at if the use of body cameras play a significqnt role in preventing police shooting of civilians. We are also looking at a number of other factors like if they were showing signs of mental illness, if they were armed, and if they were trying to flee. 

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
