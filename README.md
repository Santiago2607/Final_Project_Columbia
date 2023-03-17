# Final_Project_Columbia

## Topic of Final Project

 Credit score classification
 
## Reasons for Selecting the Topic

As interest rate keeps on getting higher, the topic of credit will become pertinent in that current credit card holder will pay more interest, future credit applicant will face more hurdles to get approved. In order to better assess applicants and classify them in category that will help in the decision making process, we want to apply machine learning to the credit calssification process. 

## Description of Source of Data

## Questions to be answered 

## Segment 1 

### Tools used in Segment 1

Some of the tools that we used during Segment 1 are Jupyter Notebook, SQL/PgAdmin and Excel.

### Description of Process in Segment 1

During the development of segment 1, we used Jupyter Notebook in order to analyze the data for the project by dropping any column that is not relevant to this analysis and exporting them into csv files using Excel. After that, we used PgAdmin and SQL to create the tables that contain all the csv data as shown below.

1. Credit_Change Table

![image](https://user-images.githubusercontent.com/113261292/223599378-2e8043a8-3a27-48fd-8c63-d7cd66709b84.png)

2. Customer_Info Table

![image](https://user-images.githubusercontent.com/113261292/223599491-f6938355-25c6-48b2-ae88-00007f591de8.png)


## Description of the Deep Machine Learning model.

By using this model, we are trying to make it possible for the readers to understand easily our data. In this case, we first deleted some columns such as Type of Loan, Annual Income, Customer ID, Occupation, and more. 

Then, we also replace the values of the Credit Score with numbers easy to read and analyze. Good is equal to 2, Standard is equal to 1, and Poor is equal to 0. 

Finally, we train and test the data using the hidden layers getting a total train on 36,414 samples. Based on this analysis, we got a loss of -1.5519e+02 and an accuracy of 0.6093.

## Description of Ensemble Learning.

In this case, we try to use the ensemble machine learning model to achieve the imbalanced classification report. Just as in the previous model, we also drop some columns since their information was not fundamental to the success of the analysis and we proceed with the train test split function. 

After training the data, we resample it with the Balance Random Forest Classifier in order to obtain its random state and calculate its balanced accuracy score. Also, as part of trying to make this model succeed and ready to be shown to the customers, we listed the features sorted in descending order by feature importance and got displayed the confusion matrix by calculating the balanced accuracy score of the Easy Ensemble Classifier.

We finish this training by having an imbalanced classification report with a Precision of 0.43, 0.64, and 0.77, and a Specificity of 0.78, 0.83, and 0.82 to Good, Poor, and Standard respectively. 

## Description of Resampling Learning

The last machine learning model we are testing with our dataset is the resampling model. This model is very similar compared to the ensemble learning and the deep machine learning model since we have to drop columns, test data using the train test split, and get the balanced accuracy score.

By using the resampling learning model, we also calculate the logistic regression and SMOTEENN training data which helped us get the confusion matrix and imbalanced classification report. 

In this case, the imbalanced classification report of this analysis ends up with 0.27, 0.55, and 0.62 of Precision, and 0.49, 0.73, and 1 of Specificity for Good, Poor, and Standard respectively. 

## Decision of the model learning

To sum up, after analyzing these three models and based on the results we gathered, we decided that the best machine learning model to use with our dataset is the Ensembled Learning model. This model was the only one whose balanced accuracy score using the balanced random forest classifier surpassed the accuracy score by more than 70 by having a total percentage of 0.75565 and a total specificity of 0.80. 

## Google Slides

If you want to have more user experience by interacting with our Google Slides you can click [Here](https://docs.google.com/presentation/d/1Xr6VbgO_vj1QAAAZu4b_5EFu6M2g8TAmaSNqEO9UapM/edit?usp=sharing)
