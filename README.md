# Final_Project_Columbia

## Topic of Final Project

 Credit score classification
 
## Reasons for Selecting the Topic

As interest rate keeps on getting higher, the topic of credit will become pertinent in that current credit card holder will pay more interest, future credit applicant will face more hurdles to get approved. In order to better assess applicants and classify them in category that will help in the decision making process, we want to apply machine learning to the credit classification process. 

## Description of Source of Data

The data described the customer with identifiers that 1/ define the customer and 2/ define payment ability and credit score.  

## Questions to be answered 

 + Is credit score sufficient to classify a customer?
 + Is payment history sufficient to determine the credit risk? 
 + What is the best determinant to classify a customer?  

## Segment 1 

### Tools used in Segment 1
Some of the tools that we used during Segment 1 are Jupyter Notebook, SQL/PgAdmin and Excel.

### Description of Process in Segment 1
During the development of segment 1, we used Jupyter Notebook in order to analyze the data for the project by dropping any column that is not relevant to this analysis and exporting them into csv files using Excel. After that, we used PgAdmin and SQL to create the tables that contain all the csv data as shown below.

1. Credit_Change Table

![image](https://user-images.githubusercontent.com/115424156/225174416-988674ab-5002-47d4-8e67-2f7b3a945dd4.png)

2. Customer_Info Table

![image](https://user-images.githubusercontent.com/115424156/225174467-fba52f59-38d1-473d-afba-5d8bef1f9c9a.png)

![image](https://user-images.githubusercontent.com/115424156/225174483-3ffb4540-089b-446b-b4f5-d37ea1f58e34.png)

### Description of Process in Segment 2

## Description of the Deep Machine Learning model.

We are trying to make it possible for the readers to easily understand our data by using the deep learning model, . In this case, we first deleted some columns such as Type of Loan, Annual Income, Customer ID, Occupation, and more. 

Then, we also replace the values of the Credit Score with numbers easy to read and analyze. Good is equal to 2, Standard is equal to 1, and Poor is equal to 0. 

Finally, we train and test the data using the hidden layers getting a total train on 36,414 samples. Based on this analysis, we got a loss of -1.5519e+02 and an accuracy of 0.6093.

## Description of Ensemble Learning.

In this case, we try to use the ensemble machine learning model to achieve the imbalanced classification report. Just as in the previous model, we also drop some columns since their information was not fundamental to the success of the analysis and we proceed with the train test split function. 

After training the data, we resample it with the Balance Random Forest Classifier in order to obtain its random state and calculate its balanced accuracy score. Also, as part of trying to make this model succeed and ready to be shown to the customers, we listed the features sorted in descending order by feature importance and got displayed the confusion matrix by calculating the balanced accuracy score of the Easy Ensemble Classifier.

We finish this training by having an imbalanced classification report with a Precision of 0.43, 0.64, and 0.77, and a Specificity of 0.78, 0.83, and 0.82 to Good, Poor, and Standard respectively. 
