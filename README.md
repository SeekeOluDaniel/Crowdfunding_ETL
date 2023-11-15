# Project 2 - Crowdfunding_ETL
 In this project, we are building an ETL pipeline using Python, Pandas, and Python dictionary methods to extract and transform the Crowdfunding data. 

 ## Step 1 : Extraction
    This step comprises of reading(extracting) the data provided in excel format in the files crowdfunding.xlsx and contacts.xlsx located in the Resources folder.

## Step 2 : Transformation
    In this step we've transformed the extracted data to create different Pandas dataframes and manipulated the columns by changing datatypes, adding new columns, joining dataframes.
     We're adding these DataFrames to four CSV files(in the Resources folder) namely:
        1. campaign.csv
        2. category.csv
        3. subcategory.csv
        4. contacts.csv

## Step 3 : Load
    This step is done to load the transformed data into Postgres Database. For doing this first we are creating ERD diagrams(crowdfunding_db_ERD.PNG) and generating schema(crowdfunding_db_schema.sql) by using the CSV file data obtained in Step 2.


Collaborators : Olu-Daniel, OmoSeeke and Sharma, Neha. [^1]

[^1]: This is the footnote.
