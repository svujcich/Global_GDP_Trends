# Global GDP Trends

## Overview
The purpose of the project is to analyze the Gross Domestic Product (GDP) of the countries in the world from the year 2001 to 2019 and to find out which are the high GDP and low GDP countries in the world. 

Also to understand how to utilize Machine Learning, statistical algorithms to make predictions based on the data patterns provided. For this project, we used Supervised Machine Learning to predict the income groups of the countries i.e., to see whether countries belong to the high income group or low income group.

This project is to understand the economic growth of the countries in the world and their distribution of money on various factors such as goods & services, government spending on education, health, military, exports & imports. Also to know the inflation rate and the unemployment rate.

## Background
Economic growth is an increase in the production of goods and services, compared from one period of time to another. The best way to understand economic growth is through GDP.

GDP stands for “Gross Domestic Product” and represents the total monetary value of all final goods and services produced within a country during a period of time. GDP is the most commonly used measure of economic activity.
	
  The components of GDP includes Consumption (C), Investment (I), govt. Spending (G), exports (X), Imports (M)
			
						GDP = C + I + G + (X - M)

GDP Growth rate is the percentage increase in the GDP from year to year. If the growth rate is negative, indicates economic contraction and a sign of recession. If the growth rate is too high, it creates inflation.

## Questions we Want to Answer
1) How the GDP is affecting the economic growth of the country?
2) Which components of the GDP are playing a vital role for the country's growth?
3) How the countries unemployment rate and inflation trending in a decade?
4) Identify countries with low income groups?

## Resources

### Technologies
Jupyter Notebook, Visual Studio Code (VS Code), Python, Postgres, MatPlotLib, PG Admin, Tableau.

### Data Sources
1. GDP_growth.csv, 
2. education_expenditure.csv, 
3. exports_of_goods&services.csv, 
4. final_consumption_expenditure.csv, 
5. health_expenditure.csv, 
6. inflation_rates.csv, 
7. miltary_expenditure.csv, 
8. unemployment_rates.csv                                     
9. population.csv, 
10. country-codes.csv, 
11. countries_region_income.csv
from worldbank.org

### Web Scraping
webscraped_university_names.csv collected from https://www.4icu.org/reviews/
Information not a focus of the final project 

### Group Communication Protocols
Group meets every weekday at 6 pm to troubleshoot any issues we encounter.

## Analysis

### Cleaning the Datasets
The data sets are imported into the jupyter notebook, where the data is cleaned by dropping the years from 1960 to 2000 and also dropping all the null values from the year 2001 to 2019 then the data is merged with the country codes and the income groups. Lastly, looking at the high valued countries and low valued countries.

### Database
After cleaning, the individual data sets are imported in the database as tables then a query was used to merge the data sets with country name, country code, income group, 2019 year values from individual data sets together to use this data in training the Machine Learning Model.

### Tableau Storyboard
The main objectives of the storyboard is to provide a series of data visuals that explore any changes over time, compare the distribution of data across income groups, and to gain a better understanding of the top ten countries for each data set. We also added an interactive map and line chart to enhance the user experience.

To explore the change over time, we used several bar charts to show the global average of each measure from 2001-2019. The example below shows the change over time for the average global inflation rate. Through this analysis we were able to see that certain data sets such as inflation rates, unemployment rates gradually decrease over time. Other metrics such as a country’s health expenditure, export value, and consumption have generally increased over time. The global inflation rate also appears to be the most fluctuant data set over time. These results should be interpreted with caution since the average may heavily be influenced by some extreme outliers.

![bar_chart](https://user-images.githubusercontent.com/107777321/203223799-31e86b3f-4d1a-4745-a6ff-cab3d39cae1e.png)

We then created several box plots to better understand the spread of data across countries who fall within the high income and low income groups. The boxplot below shows the spread of data for unemployment rates in 2019. This visual shows us that the range of data between the two income groups is fairly similar. The range of data is also similar for the health expenThe higher income group has a wider range of values and several outliers in the consumption, export, and education expenditure data sets. The lower-income group has a wider range of value and several outliers in the inflation rates dataset. 

![box_plot](https://user-images.githubusercontent.com/107777321/203223857-32e45432-66fc-41b5-a4ce-3418ecb4cc03.png)

Our group identified the top ten and bottom ten countries within each data set in our jupyter notebooks. We decided to use a bubble chart to better understand the scale of differences in each data set. The example below shows a bubble chart of the export values in 2019. We can see that the export value of the United States, China, and Germany is much greater than all the other countries. The countries in the higher income groups generally appear as the largest bubbles in each data set. However, countries within the low-income data set have greater values within the inflation and unemployment rates datasets.

![bubble_chart](https://user-images.githubusercontent.com/107777321/203223892-849a3cb8-7ecd-40ac-960a-e1308edb02a4.png)

The final component of our storyboard is an interactive heat map and line chart. We used a world map to show the value of each country within their respective datasets. Countries with greater values in the data set have darker colors within the map and those with lighter countries have less value within the data set. The example below shows the population of each country. The labels include the name of the country, their income group, and the given value for 2019. The line chart can be used to show the change of an individual country’s data over time. The filter allows us to choose what countries to include in the line chart and those begin to populate in the key in the worksheet.


## Machine Learning Model

### Overview
The aim of the machine learning component  was to build a model which would predict whether a given country falls into a high income group or a low income group. This classification might be useful in the scenario of a global pandemic; by identifying countries with low income groups, it would be possible to identify which countries could benefit from financial aid the most.

### Data Preparation
In order to run our model, the data needed to be transformed into a usable data set. To accomplish this, all of the individual data sets were cleaned and uploaded into an SQL database. A query was then used to generate the data set for the machine learning component by selecting each spending category for the most recent year data was available (2019), creating a new table of 2019 data, and exporting the data into a csv format. Once the data was loaded into the jupyter notebook, the data was scaled into a consistent format for the model.

### Logistic Regression
Our model was best suited for logistic regression because identifying high income vs low income falls into the category of classification. There were also several variables that could potentially impact the income groups, and it was unknown which variables would impact the model the most
It was predicted that the random forest algorithm would perform the best because the data set has many features:
       
       --> Exports
       
       --> Healthcare Expenditures
       
       --> Inflation Rate
       
       --> Population
       
       --> Education Expenditures
       
       --> Consumption
       
       --> GDP Growth
       
       --> Unemployment

Since the Random Forest Algorithm structure learns by generating many simple decision trees using randomly selected data, it was expected that the model would be able to identify more specific trends for each feature, and perform better in predicting the overall income group. To compare slightly different algorithms, Both the Random forest and Balanced random forest models were investigated in an effort to select the better testing model. 

It was noted, the subject might be subject to some mild class imbalance; the low income group accounts for 38% of the data while the high income group accounts for 62% of the data. As an additional step, the oversampling, undersampling, and a combination of over and under sampling models were applied to investigate whether the class imbalance models were appropriate for this data set.

### Results

Random Forest Algorithm Summary Metrics
    Balanced Accuracy Score: 0.83
    Precision Score: 0.86
    Sensitivity Score: 0.90

Balanced Random Forest Algorithm Summary Metrics
    Balanced Accuracy Score: 0.80
    Precision Score: 0.85
    Sensitivity Score: 0.85 

Oversampling
    Balanced Accuracy Score: 0.50
    Precision Score: 0.63
    Sensitivity Score: 1.00

Undersampling
    Balanced Accuracy Score: 0.74
    Precision Score: 0.86
    Sensitivity Score 0.65

Combination Over and under Sampling sampling
    Balanced Accuracy Score: 0.50
    Precision Score: 0.63
    Sensitivity Score: 1.00
   
### Conclusion
On a high level, both the random forest algorithm and balanced random forest algorithm performed well. Although the undersampling method was effective at identifying precision, in general, the techniques for addressing class imbalance, (oversampling, undersampling, and a combination of over and under sampling) did not perform as well; the sensitivity for the oversampling and SMOTEENN models were suspiciously high, and the level of accuracy was unimpressive. From these results, we were able to validate that the random forest models were better suited for our data set.

In our case, the goal of the model was to identify all of the low income countries. It follows that the most important metric to consider is sensitivity, because it is important to identify all the  low income countries which would benefit from financial support. Missing a low income country might mean a country that needs financial aid might miss out on the opportunity for support. The results show that the random forest algorithm performed better than the balanced forest algorithm in this regard.

Another metric to consider is precision, which measures out of all the positive predictions both actual and false, how many of the actual positive values were predicted correctly. Both models performed at a similar level, but the random forest algorithm slightly out performed the balanced random forest algorithm. This result means that among the countries that are actually low income, most of them will be classified correctly. 
Next, the accuracy of the models was evaluated; the accuracy of the random forest algorithm and balanced random forest algorithm are 83% and 80% respectively. Although these results are acceptable, the length of the data set was only 128 rows. Given more data, the accuracy of the models would likely improve. 
All things considered, the random forest algorithm performed the best for predicting low income countries. As a final step, the importance of the features was ranked. 

The table shows that the feature that plays the greatest role in determining calculating income groups is the exports value, followed by healthcare expenditures, and the inflation rate. The table also shows the least important feature is unemployment.

### Final Thoughts
Overall, GDP provides insight into understanding the economic trends across countries. By visualizing the trends in data and identifying the features that affect the income groups the most, it is possible to focus the analysis on features of the data set that have the greatest impact on GDP. This allows for closer inspection of trends to identify similarities between countries with high income groups, similarities between countries with low income groups, and differences between high income group countries and low income group countries.

## Presentation

## Link to Tableau Storyboard
https://public.tableau.com/app/profile/brandon.cruz7008/viz/Global_GDP_Trends/Global_GDP_Analysis?publish=yes
