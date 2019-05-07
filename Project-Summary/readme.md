## STAT-109 Intro to Statistical Modeling - Final Project
#### Contributors : [Phillip Booth](mailto:phillip.booth2015@gmail.com), [Eliud Omollo](woordy2000@gmail.com) , [Jack Carter](jcarter2014@gmail.com), [Vivek Mishra](mailto:iblpvivek@icloud.com)
<HR>

### [**_Welcome_**](readme.md)&emsp;|&emsp;[Data Set](data-set.md)&emsp;|&emsp;[Introduction and EDA](eda.md)&emsp;|&emsp;[Model Building](model-building.md)&emsp;|&emsp;[Summary](summary.md)
<HR>

### Content:
1. [Motivation](#motivation)
2. [Thesis](#thesis)
3. [Use Cases](#use-cases)
4. [Problem Statement](#problem-statement)

<HR>

### Motivation 

In 2017, U.S. health care costs In the United States reached an all time high of $3.5 trillion dollars. 

Health care was/is one of the country’s largest industries and as a share of the nation's Gross Domestic Product, healthcare spending accounted for 17.9 percent. If these numbers are broken down on a per person scale that equates to $10,739 spent on healthcare per person 

To put these numbers into perspective, in 1960, health care accounted for only 5 percent of Gross Domestic Product, totaling $27.2 billion dollars.

With healthcare being both a critical issue in the life of every American, and a major topic in the upcoming presidential election, we chose to do our analysis on a health care related dataset.  After taking a look into various data sources we chose one that allowed us to explore the federal health insurance program Medicare.

We chose a data set from Data.CMS.gov, a federal government website managed by the Centers for Medicare and Medicaid Services.


[Back to top](#content)

<HR>
  
### Thesis

It is possible to use the Business level data provided in the Medicare Home Health Agency (HHA) Provider Aggregate Report, CY 2016 to create an accurate model for representing the Total amount that Medicare pays Home Health Agencies for non-LUPA episodes adjusted for geographic differences in payment rates.

The dataset provides aggregated information about the customer bodies that these Home Health Agencies service, as well as information about the agencies underlying servicing practices, and with this info we should be able to explore a link between these variables and the amount that these businesses are paid by the Medicare system for non-LUPA medical episodes.

<HR>

### Use Cases

**Home Health Agencies**: Assessing business performance by using the aggregated characteristics of your servicing practices to determine if your business’s performance is within industry standards.

**U.S. Government**: Auditing Home Health Agencies to accurately determine when fraudulent claim activity is occurring.

<HR>

### Problem Statement:

In this project, the goal is to Analyze the data set obtained from federal government and try to regress the amount paid with multiple features in the given dataset.

1. The first step would be clean the data and divide it in test and train data for our analysis.

2. The next step is to plot the data in various ways to try and get and understanding of trends in our data. This might also help us selecting our features.

3. After that we will now run some tests like  multi collinearity, normality etc to observe our feature variables.

4. Now our model building starts and we will use multiple models, compare residuals , run transformations where required.

5. Test our final model with test data and compute R squared value.

[Back to top](#content)
