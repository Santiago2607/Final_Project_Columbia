CREATE TABLE "Credit_Change" (
    "ID" varchar  NOT NULL UNIQUE,
    "Customer_ID" varchar   NOT NULL,
    "Month" int   NOT NULL,
    "Annual_Income" float   NOT NULL,
    "Monthly_Inhand_Salary" float   NOT NULL,
    "Num_Bank_Accounts" int   NOT NULL,
    "Num_Credit_Card" int   NOT NULL,
    "Interest_Rate" int   NOT NULL,
    "Num_of_Loan" float   NOT NULL,
    "Type_of_Loan" varchar   NOT NULL,
    "Delay_from_due_date" int   NOT NULL,
    "Num_of_Delayed_Payment" float   NOT NULL,
    "Num_Credit_Inquiries" float   NOT NULL,
    "Outstanding_Debt" float   NOT NULL,
    "Credit_Utilization_Ratio" float   NOT NULL,
    "Credit_History_Age" float   NOT NULL,
    "Payment_of_Min_Amount" varchar   NOT NULL,
    "Total_EMI_per_month" float   NOT NULL,
    "Amount_invested_monthly" float   NOT NULL,
    "Payment_Behaviour" varchar   NOT NULL,
    "Monthly_Balance" float   NOT NULL,
    "Credit_Score" varchar  NOT NULL,
    CONSTRAINT "pk_Credit_Change" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Customer_Info" (
    "Customer_ID" varchar   NOT NULL UNIQUE,
    "Name" varchar   NOT NULL,
    "Age" float   NOT NULL,
    "Occupation" varchar   NOT NULL
);


