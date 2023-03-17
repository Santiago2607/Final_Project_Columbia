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
Some of the tools that we used during Segment 1 are Jupyter Notebook, SQLAlchemy, and Excel.

### Description of Process in Segment 1
During the development of segment 1, we used Jupyter Notebook in order to analyze the data for the project by dropping any column that is not relevant to this analysis and exporting them into csv files using Excel. After that, we used SQLAlchemy to create the tables that contain all the csv data as shown below.

1. Credit_Change Table

![image](https://user-images.githubusercontent.com/115424156/225174416-988674ab-5002-47d4-8e67-2f7b3a945dd4.png)

2. Customer_Info Table

![image](https://user-images.githubusercontent.com/115424156/225174467-fba52f59-38d1-473d-afba-5d8bef1f9c9a.png)

![image](https://user-images.githubusercontent.com/115424156/225174483-3ffb4540-089b-446b-b4f5-d37ea1f58e34.png)

## Segment 2

### Description of the data exploration phase of the project

Preliminary data analysis is conducted to explore the data. There are 48,553 rows of data in the credit score dataset, in which, 25,753 credit scores are standard score, 14,164 are Poor credit score and 8,636 are good credit score. Below is the statistical information of the features of variables. 
![image](https://github.com/Santiago2607/Final_Project_Columbia/blob/main/images/Data%20Description.png)

From exploration of the data, there are some trends to be found. the higher credit score, the lower interest rate and the narrower the range of the interest rate. From the second screenshot, the average interest rate did not present obvious differences among the different occupations. As for the relationship of number of delayed times and the inhand salary, the higher inhand salary, the lower risk of paying delayed. 

![image](https://github.com/Santiago2607/Final_Project_Columbia/blob/main/images/DV1.png)
![image](https://github.com/Santiago2607/Final_Project_Columbia/blob/main/images/Dv2.png)
![image](https://github.com/Santiago2607/Final_Project_Columbia/blob/main/images/DV3.png)

### Description of the analysis phase of the project

In the analysis phase of the project, we mainly focus on building database, integrating the database to the project, establishing machine learning model and evaluating the prediction results. 

### The technologies, languages, tools, and algorithms that the team used throughout the project 

We use Python to establish different machine learning models including deep machine learning model and supervised machine learning model. As the output of the model should be the name or group of class, it is proper for us to use the classification algorithm. In the supervised machine learning model, we use oversampling RandomOverSampler, SMOTE algorithms and the undersampling ClusterCentroids algorithm. 

### Description of Process of building machine learning model 

- Data preprocessing.  
- Decide on models, and create model instance.
- Split into training and testing sets and preprocess the data.
- Train/fit the training data to the model. 
- Use the model for predictions and transformations.

### Description of preliminary data preprocessing

Before establishing the machine learning models, the data is cleaned and transformed to the appropriate data types. the prepliminary data preprocessing includes dropping the redundent columns such as unamed:0, SSN and so on, dropping the null value and deplicate data, and change the specific columns (eg. month, annual income) to numerical data type. Most crucial part of preprocessing is encoding the features using the OneHotEncoder. In the deep machine learning part, the good credit score is replaced with the number 2, the standard credit score represents number 1 adn the poor credit score represents number 0. 

### Description of preliminary feature engineering and preliminary feature selection, including their decision-making process

Customer credit score is the target we will make predictions through establishing the model. In the dataset of credit score, there are a few variables that are considered as the features to predict the model from customer age, annual income, monthly in-hand salary, the interest and so on. 

### Description of how data was split into training and testing sets

we use train_test_split function to split the preprocessed data into a training and testing dataset. 

### Model choice, including limitations and benefits

Because the credit score dataset had labeled data, so it is appropriate to use supervised machine learning. Since the input data contains a large number of variables, the deep machine learning is considered to build. 

#### Benefit of ensemble learning model: 
- Are robust against overfitting 
- be used to rank the importance of input variables
- Can handle thousands of input variables without variable deletion
- Are robust to outliers and nonlinear data
- Run efficiently on large datasets

#### Limitations of ensemble learning model: 
- Ensembling is less interpretable. 
- The art of ensembling is hard to learn
- Ensembling is expensive in terms of both time and space. 

#### Benefit of Deep Learning Model: 

There are a number of advantages to using a neural network instead of a traditional statistical or machine learning model. For instance, neural networks are effective at detecting complex, nonlinear relationships. Additionally, neural networks have greater tolerance for messy data and can learn to ignore noisy characteristics in data.

#### Limitations of Deep Learning Model: 

The two biggest disadvantages to using a neural network model are that the layers of neurons are often too complex to dissect and understand (creating a black box problem), and neural networks are prone to overfitting (characterizing the training data so well that it does not generalize to test data effectively). However, both of the disadvantages can be mitigated and accounted for.


#### Description of the Deep Machine Learning model.

We are trying to make it possible for the readers to easily understand our data by using the deep learning model, . In this case, we first deleted some columns such as Type of Loan, Annual Income, Customer ID, Occupation, and more. 

Then, we also replace the values of the Credit Score with numbers easy to read and analyze. Good is equal to 2, Standard is equal to 1, and Poor is equal to 0. 

Finally, we train and test the data using the hidden layers getting a total train on 36,414 samples. Based on this analysis, we got a loss of -1.5519e+02 and an accuracy of 0.6093.

#### Description of Ensemble Learning.

In this case, we try to use the ensemble machine learning model to achieve the imbalanced classification report. Just as in the previous model, we also drop some columns since their information was not fundamental to the success of the analysis and we proceed with the train test split function. 

After training the data, we resample it with the Balance Random Forest Classifier in order to obtain its random state and calculate its balanced accuracy score. Also, as part of trying to make this model succeed and ready to be shown to the customers, we listed the features sorted in descending order by feature importance and got displayed the confusion matrix by calculating the balanced accuracy score of the Easy Ensemble Classifier.

We finish this training by having an imbalanced classification report with a Precision of 0.43, 0.64, and 0.77, and a Specificity of 0.78, 0.83, and 0.82 to Good, Poor, and Standard respectively. 

#### Description of Resampling Learning

The last machine learning model we are testing with our dataset is the resampling model. This model is very similar compared to the ensemble learning and the deep machine learning model since we have to drop columns, test data using the train test split, and get the balanced accuracy score.

By using the resampling learning model, we also calculate the logistic regression and SMOTEENN training data which helped us get the confusion matrix and imbalanced classification report. 

In this case, the imbalanced classification report of this analysis ends up with 0.27, 0.55, and 0.62 of Precision, and 0.49, 0.73, and 1 of Specificity for Good, Poor, and Standard respectively. 

## Decision of the model learning

To sum up, after analyzing these three models and based on the results we gathered, we decided that the best machine learning model to use with our dataset is the Ensembled Learning model. This model was the only one whose balanced accuracy score using the balanced random forest classifier surpassed the accuracy score by more than 70 by having a total percentage of 0.75565 and a total specificity of 0.80. 

## What are the factors that drive credit scores with actual real life cases? 
![image](https://user-images.githubusercontent.com/115424156/225769459-cde04173-ac10-45d3-ae7b-a71978de425e.png)
source https://www.experian.com/blogs/ask-experian/how-is-your-credit-score-determined/

## Google Slides Link: 
[Google Slides Link ](https://docs.google.com/presentation/d/1Xr6VbgO_vj1QAAAZu4b_5EFu6M2g8TAmaSNqEO9UapM/edit#slide=id.p)


