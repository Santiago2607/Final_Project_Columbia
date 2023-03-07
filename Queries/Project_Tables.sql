CREATE TABLE "Credit_Change" (
    "ID" varchar(10)   NOT NULL,
    "Customer_ID" varchar(10)   NOT NULL,
    "Month" int   NOT NULL,
    "Annual_Income" float   NOT NULL,
    "Monthly_Inhand_Salary" float   NOT NULL,
    "Num_Bank_Accounts" int   NOT NULL,
    "Num_Credit_Card" int   NOT NULL,
    "Interest_Rate" int   NOT NULL,
    "Num_of_Loan" float   NOT NULL,
    "Type_of_Loan" varchar(10)   NOT NULL,
    "Delay_from_due_date" int   NOT NULL,
    "Num_of_Delayed_Payment" float   NOT NULL,
    "Num_Credit_Inquiries" float   NOT NULL,
    "Outstanding_Debt" float   NOT NULL,
    "Credit_Utilization_Ratio" float   NOT NULL,
    "Credit_History_Age" float   NOT NULL,
    "Payment_of_Min_Amount" varchar(10)   NOT NULL,
    "Total_EMI_per_month" float   NOT NULL,
    "Amount_invested_monthly" float   NOT NULL,
    "Payment_Behaviour" varchar(10)   NOT NULL,
    "Monthly_Balance" float   NOT NULL,
    "Credit_Score" varchar(10)   NOT NULL,
    CONSTRAINT "pk_Credit_Change" PRIMARY KEY (
        "ID"
     ),
	UNIQUE ("ID")
);

CREATE TABLE "Credit_Score_New" (
    "ID" varchar(10)   NOT NULL UNIQUE,
    "Customer_ID" varchar(10)   NOT NULL,
    "Name" varchar(10)   NOT NULL,
    "Age" float   NOT NULL,
    "Occupation" varchar(10)   NOT NULL,
    "Month" int   NOT NULL,
    "Annual_Income" float   NOT NULL,
    "Monthly_Inhand_Salary" float   NOT NULL,
    "Num_Bank_Accounts" int   NOT NULL,
    "Num_Credit_Card" int   NOT NULL,
    "Interest_Rate" int   NOT NULL,
    "Num_of_Loan" float   NOT NULL,
    "Type_of_Loan" varchar(10)   NOT NULL,
    "Delay_from_due_date" int   NOT NULL,
    "Num_of_Delayed_Payment" float   NOT NULL,
    "Num_Credit_Inquiries" float   NOT NULL,
    "Outstanding_Debt" float   NOT NULL,
    "Credit_Utilization_Ratio" float   NOT NULL,
    "Credit_History_Age" float   NOT NULL,
    "Payment_of_Min_Amount" varchar(10)   NOT NULL,
    "Total_EMI_per_month" float   NOT NULL,
    "Amount_invested_monthly" float   NOT NULL,
    "Payment_Behaviour" varchar(10)   NOT NULL,
    "Monthly_Balance" float   NOT NULL,
    "Credit_Score" varchar(10)   NOT NULL,
    CONSTRAINT "pk_Credit_Score_New" PRIMARY KEY (
        "Customer_ID"
     )
);

CREATE TABLE "Customer_Info" (
    "Customer_ID" varchar(10)   NOT NULL UNIQUE,
    "Name" varchar(10)   NOT NULL,
    "Age" float   NOT NULL,
    "Occupation" varchar(10)   NOT NULL
);

ALTER TABLE "Credit_Change" ADD CONSTRAINT "fk_Credit_Change_ID" FOREIGN KEY("ID")
REFERENCES "Credit_Score_New" ("ID");

ALTER TABLE "Credit_Score_New" ADD CONSTRAINT "fk_Credit_Score_New_Customer_ID" FOREIGN KEY("Customer_ID")
REFERENCES "Customer_Info" ("Customer_ID");
