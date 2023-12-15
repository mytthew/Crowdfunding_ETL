-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Ge3nsB
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "CATEGORY" (
    "Category_ID" VARCHAR   NOT NULL,
    "Category" VARCHA   NOT NULL,
    CONSTRAINT "pk_CATEGORY" PRIMARY KEY (
        "Category_ID"
     )
);

CREATE TABLE "CONTACTS" (
    "Contact_ID" INT   NOT NULL,
    "First_Name" VARCHAR   NOT NULL,
    "Last_Nam" VARCHAR   NOT NULL,
    "Email" VARCHAR   NOT NULL,
    CONSTRAINT "pk_CONTACTS" PRIMARY KEY (
        "Contact_ID"
     )
);

CREATE TABLE "SUBCATEGORY" (
    "Subcategory_ID" VARCHAR   NOT NULL,
    "Subcategory" VARCHAR   NOT NULL,
    CONSTRAINT "pk_SUBCATEGORY" PRIMARY KEY (
        "Subcategory_ID"
     )
);

CREATE TABLE "CAMPAIGN" (
    "CF_ID" INT   NOT NULL,
    "Contact_ID" INT   NOT NULL,
    "Company_Name" VARCHAR   NOT NULL,
    "Description" VARCHAR   NOT NULL,
    "Goal" FLOAT   NOT NULL,
    "Pledged" FLOAT   NOT NULL,
    "Outcome" VARCHAR   NOT NULL,
    "Backers_Count" INT   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Currency" VARCHAR   NOT NULL,
    "Launched_Date" DATE   NOT NULL,
    "End_Date" DATE   NOT NULL,
    "Category_ID" VARCHAR   NOT NULL,
    "Subcategory_ID" VARCHAR   NOT NULL,
    CONSTRAINT "pk_CAMPAIGN" PRIMARY KEY (
        "CF_ID"
     )
);

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_Contact_ID" FOREIGN KEY("Contact_ID")
REFERENCES "CONTACTS" ("Contact_ID");

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_Category_ID" FOREIGN KEY("Category_ID")
REFERENCES "CATEGORY" ("Category_ID");

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_Subcategory_ID" FOREIGN KEY("Subcategory_ID")
REFERENCES "SUBCATEGORY" ("Subcategory_ID");

## VERIFY THE DATA WAS IMPORTED 

SELECT "Goal" FROM "CAMPAIGN";
SELECT * FROM "CATEGORY";
SELECT "First_Name" FROM "CONTACTS";
SELECT * FROM "SUBCATEGORY";