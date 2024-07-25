# Project 3 - Team 1 - Data Engineer Track

Group Members:
```
Kayla Blais
Andrew Bullard
Daniel Pulliam
Savi Rahiman
Madeline Rondino
```

## Data and Delivery
- Team 1 has chosen the path of Data Engineering. The industry we have selected is Leisure & Travel. The objective of this project is to explore the most populated cities of the US ranked by the top 5 and bottom 5 affluent States through the lens of household spending. 
- The goal is that the result of the database design will be useful for future users to access and plan their very own vacation by leveraging the table views from SQL to preform analysis, create stimulating visualizations, and have informative conversations.
- In selecting our dataset the team was careful to select reputable sources erring on the side of caution. We wanted to ensure there was no bias in our data such as Algorithmic bias which refers to situations in which automated systems have a bias either in favor of or against certain groups of people. Lastly, we were careful to not include data that would have any PII (Personally Identifiable Information) to maintain privacy and prevent identity theft. With these items top of mind the team selected census.gov to obtain the primary data set. 
- For this project the team selected Pandas DataFrame. It was selected as the data collected from our sources are Two-Dimensional Structure with rows and columns. It will also allow users interacting with the data to utilize Labeled Axes to access, manipulate and perform analysis.  


### Census Data
- [Census Business Builder](https://cbb.census.gov/cbb/#view=map&industries=00&clusterName=Custom+Industries&geoType=state&dataVariable=179&dashboardVars=15-17-33-64&centerX=-10802692&centerY=4568679&level=4&theme=default&dynHeader=Custom+Region) Primary Variable is State, Secondary Variable is Consumer Spending, and Secondary Categories is Percent working age (25 to 64 years) 
    - MapData.csv is a list of all US states, estimate of consumer expenditures per household as well as the percent of the working population age 25-64. This is the list from where the team captured the top 5 and bottom 5 affluent states. This was derived from the estimate of consumer expenditures per household. Top 5 States in order is DC, Maryland, Massachusetts, New Jersey & Washington. Bottom 5 States in order is West Virginia, Mississippi, Louisiana, Arkansas & Alabama. 
    - SUB-IP-EST2023-POP.csv is a list exported from [City and Town Population Totals 2020-2023](https://www.census.gov/data/tables/time-series/demo/popest/2020s-total-cities-and-towns.html) for the United States from census.gov was downloaded to get the population for each city in the US. The highest populated city from the top 5 and bottom 5 affulent States were noted. Washington city, District of Columbia, Boston city, Massachusetts, Newwark City, New Jersey, Baltimore city, Maryland, Seattle city, Washington, Huntsville city, Alabama, Little Rock city, Arkansas, Charleston city, West Virginia, New Orleans city, Louisiana and Jackson city, Mississippi.
    - Together these files were imported into a python for creating the necessary  DataFrame **(state_pop_complete.ipynb)** to export **max_population_cities.csv** & **cleaned_state_data.csv**.
    - For each of the State a detailed view report was exported to a csv file to include [demographic & socioeconomic characteristics] (https://cbb.census.gov/cbb/#view=report&industries=00&clusterName=Custom+Industries&geoType=state&dataVariable=179&dashboardVars=15-17-33-64&centerX=-8597980&centerY=4694599&level=7&theme=default&geoId=24&dynHeader=Custom+Region). These 20 csv files were clean and prepped using python.**Consumer_Spending_and_Socioeconomic_Characteristics_by_State.ipynb** & **State_Affluency.ipynb** to export **Top5.csv** & **Bottom5.csv**


