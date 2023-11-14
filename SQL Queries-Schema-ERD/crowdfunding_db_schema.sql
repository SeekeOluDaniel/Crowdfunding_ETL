-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/VxFzsi
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Contacts" (
    "Contact_ID" INTEGER   NOT NULL,
    "First_Name" VARCHAR   NOT NULL,
    "Last_Name" VARCHAR   NOT NULL,
    "Email" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "Contact_ID"
     )
);

CREATE TABLE "Category" (
    "Category_ID" VARCHAR   NOT NULL,
    "Category" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "Category_ID"
     )
);

CREATE TABLE "Subcategory" (
    "Subcategory_ID" VARCHAR   NOT NULL,
    "Subcategory" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "Subcategory_ID"
     )
);

CREATE TABLE "Campaign" (
    "CF_ID" INTEGER   NOT NULL,
    "Contact_ID" INTEGER   NOT NULL,
    "Company_Name" VARCHAR   NOT NULL,
    "Description" VARCHAR   NOT NULL,
    "Goal" REAL   NOT NULL,
    "Pledged" REAL   NOT NULL,
    "Outcome" VARCHAR   NOT NULL,
    "Backers_Count" INTEGER   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Currency" VARCHAR   NOT NULL,
    "Launched_Date" DATE   NOT NULL,
    "End_Date" DATE   NOT NULL,
    "Category_ID" VARCHAR   NOT NULL,
    "Subcategory_ID" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "CF_ID"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Contact_ID" FOREIGN KEY("Contact_ID")
REFERENCES "Contacts" ("Contact_ID");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Category_ID" FOREIGN KEY("Category_ID")
REFERENCES "Category" ("Category_ID");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Subcategory_ID" FOREIGN KEY("Subcategory_ID")
REFERENCES "Subcategory" ("Subcategory_ID");

