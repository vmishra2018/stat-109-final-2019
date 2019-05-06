## STAT-109 Intro to Statistical Modeling - Final Project

#### Contributors : [Phillip Booth](mailto:phillip.booth2015@gmail.com), [Eliud Omollo](woordy2000@gmail.com) , [Jack Carter](jcarter2014@gmail.com), [Vivek Mishra](mailto:iblpvivek@icloud.com)

<HR>

### [Welcome](readme.md)&emsp;|&emsp;[Data Set](data-set.md)&emsp;|&emsp;[**_Introduction and EDA_**](eda.md)&emsp;|&emsp;[Model Building](model-building.md)&emsp;|&emsp;[Summary](summary.md)

<HR>



## Content:
- [Data Resources](#data-resources)
- [EDA](#eda) 
  * [Sample Data](#sample-data) <BR>
  * [Missing Data](#missing-data) <BR>
    [Impute Missing Values](#impute-the-missing-values)<BR>
  * [Number of Agencies By State](#number-of-agencies-by-state) <BR>
  * [Top 15 Cities with most Agencies](#top-15-cities-with-most-agencies) <BR>
  * [Number of Episodes By State](#number-of-episodes-by-state) <BR>
  * [Number of Episodes By City](#number-of-episodes-by-city) <BR>
  * [Expected Amount Vs Total Episodes](#expected-amount-vs-total-episodes) <BR>
  * [Number of Males and Females by State](#number-of-males-and-females-by-state) <BR>
- [Key Features](#key-features)

<HR>

### Data Resources

We have aleady got the complete data set from federal gov website, now we will split them into train and test data and run all the analysis on that data.



### EDA

#### Sample data

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Provider ID</th>
      <th>Agency Name</th>
      <th>Street Address</th>
      <th>City</th>
      <th>State</th>
      <th>Zip Code</th>
      <th>Total Episodes (non-LUPA)</th>
      <th>Distinct Beneficiaries (non-LUPA)</th>
      <th>Average Number of Total Visits Per Episode (non-LUPA)</th>
      <th>Average Number of Skilled Nursing Visits Per Episode (non-LUPA)</th>
      <th>...</th>
      <th>Percent of Beneficiaries with COPD</th>
      <th>Percent of Beneficiaries with Depression</th>
      <th>Percent of Beneficiaries with Diabetes</th>
      <th>Percent of Beneficiaries with Hyperlipidemia</th>
      <th>Percent of Beneficiaries with Hypertension</th>
      <th>Percent of Beneficiaries with IHD</th>
      <th>Percent of Beneficiaries with Osteoporosis</th>
      <th>Percent of Beneficiaries with RA/OA</th>
      <th>Percent of Beneficiaries with Schizophrenia</th>
      <th>Percent of Beneficiaries with Stroke</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>17008</td>
      <td>JEFFERSON COUNTY HOME CARE</td>
      <td>2201 ARLINGTON AVENUE</td>
      <td>BESSEMER</td>
      <td>AL</td>
      <td>35020</td>
      <td>133</td>
      <td>54</td>
      <td>11.6</td>
      <td>7.4</td>
      <td>...</td>
      <td>0.16667</td>
      <td>0.18519</td>
      <td>0.57407</td>
      <td>0.44444</td>
      <td>NaN</td>
      <td>0.29630</td>
      <td>0.00000</td>
      <td>0.48148</td>
      <td>0.27778</td>
      <td>0.07407</td>
    </tr>
    <tr>
      <th>1</th>
      <td>17009</td>
      <td>ALACARE HOME HEALTH &amp; HOSPICE</td>
      <td>2970 LORNA ROAD</td>
      <td>BIRMINGHAM</td>
      <td>AL</td>
      <td>35216</td>
      <td>12879</td>
      <td>6616</td>
      <td>18.9</td>
      <td>9.2</td>
      <td>...</td>
      <td>0.38316</td>
      <td>0.39389</td>
      <td>0.45118</td>
      <td>0.67427</td>
      <td>NaN</td>
      <td>0.56439</td>
      <td>0.13286</td>
      <td>0.64631</td>
      <td>0.05230</td>
      <td>0.12757</td>
    </tr>
    <tr>
      <th>2</th>
      <td>17013</td>
      <td>GENTIVA HEALTH SERVICES</td>
      <td>1239 RUCKER BLVD</td>
      <td>ENTERPRISE</td>
      <td>AL</td>
      <td>36330</td>
      <td>1236</td>
      <td>612</td>
      <td>23.4</td>
      <td>8.5</td>
      <td>...</td>
      <td>0.32516</td>
      <td>0.38235</td>
      <td>0.45261</td>
      <td>0.66176</td>
      <td>NaN</td>
      <td>0.51144</td>
      <td>0.16503</td>
      <td>0.67157</td>
      <td>0.05229</td>
      <td>0.12745</td>
    </tr>
    <tr>
      <th>3</th>
      <td>17014</td>
      <td>AMEDISYS HOME HEALTH</td>
      <td>68278 MAIN STREET</td>
      <td>BLOUNTSVILLE</td>
      <td>AL</td>
      <td>35031</td>
      <td>685</td>
      <td>403</td>
      <td>21.4</td>
      <td>8.2</td>
      <td>...</td>
      <td>0.36476</td>
      <td>0.46898</td>
      <td>0.44417</td>
      <td>0.60794</td>
      <td>NaN</td>
      <td>0.54591</td>
      <td>0.12903</td>
      <td>0.67246</td>
      <td>0.08685</td>
      <td>0.17370</td>
    </tr>
    <tr>
      <th>4</th>
      <td>17016</td>
      <td>SOUTHEAST ALABAMA HOMECARE</td>
      <td>804 GLOVER AVENUE</td>
      <td>ENTERPRISE</td>
      <td>AL</td>
      <td>36330</td>
      <td>685</td>
      <td>362</td>
      <td>15.5</td>
      <td>8.5</td>
      <td>...</td>
      <td>0.40331</td>
      <td>0.35912</td>
      <td>0.52486</td>
      <td>0.69337</td>
      <td>NaN</td>
      <td>0.58287</td>
      <td>0.14917</td>
      <td>0.60773</td>
      <td>0.05249</td>
      <td>0.15193</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 49 columns</p>
</div>

#### Missing Data 

We have split the data into train and test set and now lets take a look at how much data is missing(null, NA, NaN values)

![png](images/missing-values-by-columns-train.png)

![png](images/missing-values-by-columns-test.png)



Distribution of missing values between test and train data is uniform, next step for us would be fill these missing values.



##### Impute the missing values

Now we will impute the missing values, there are many ways that missing values could have been filled,  method we have chosen here is mean.

```python
def impute_mean(dataFrame):
    nullCols = dataFrame.columns[dataFrame.isnull().any()].tolist()
    for col in nullCols:  
        col_mean = dataFrame[col].mean()
        dataFrame[col] = dataFrame[col].fillna(col_mean)
    return dataFrame
```

```python
#Impute the train with the mean of the train
medicare_data_train = impute_mean(medicare_data_train)
#Check to see if there are any null values after imputation
plot_missing_data(fname = 'train', dataFrame = medicare_data_train)
```

```
No Null Values Found
```



```python
#Impute the test with the mean of the test
medicare_data_test = impute_mean(medicare_data_test)
#Check to see if there are any null values after imputation
plot_missing_data(fname = 'test', dataFrame = medicare_data_test)
```

```
No Null Values Found
```



```python
#Save the train and Test values to disk
medicare_data_train.to_csv('data/medicare_data_train.csv', index=False);
medicare_data_test.to_csv('data/medicare_data_test.csv',index=False);
```

### 

#### Number of Agencies By State

![png](images/number-of-agencies-by-state.png)

We can see that Texas has the highest number of agencies followed by California and Florida.

#### Top 15 Cities with Most Agencies

![png](images/top-15-with-most-agencies.png)

This is interesting to see that most of the agencies in Texas are in Houstan and Dallas, while even though California has the second highest number of agencies, they are not concentrated to just one or two cities.

#### Number of Episodes By State

![png](images/number-of-episodes-by-state.png)

As expected the number of episodes are also highest in Texas, followed by Florida and California and hence the agencies.



#### Number of Episodes By City

![png](images/number-of-episodes-by-city.png)

Look at New York, that has the second highest number of episodes but if you look at the agencies data they are not that many, so may be who knows if there is a scope to start new agencies there.

#### Expected Amount Vs Total Episodes

![png](images/expected-amount-vs-total-episodes.png)

We would expect the relationship to be linear since you would want to see more payment as the episodes increase. There seems to be leverage points but they don't seem to be influential.

#### Number of Males and Females by State

![png](images/number-of-males-by-state.png)

![png](images/number-of-females-by-state.png)

If you look at the scales the number of females patients are almost double the number of males in every state. It will be interesting to group them actual episodes and see how do they compare then.

