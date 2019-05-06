## STAT-109 Intro to Statistical Modeling - Final Project

#### Contributors : [Phillip Booth](mailto:phillip.booth2015@gmail.com), [Eliud Omollo](woordy2000@gmail.com) , [Jack Carter](jcarter2014@gmail.com), [Vivek Mishra](mailto:iblpvivek@icloud.com)

<HR>

### [Welcome](readme.md)&emsp;|&emsp;[Data Set](data-set.md)&emsp;|&emsp;[Introduction and EDA](eda.md)&emsp;|&emsp;[**_Model Building_**](model-building.md)&emsp;|&emsp;[Summary](#summary)

<HR>
##Model Building




## Content:
- Load Train and Test Data

- Initial fit and diagnostics

- Adjustments and refitting.

- [Run Predictions with final model](#run-predictions-with-final-model)

- [Results](#result)

- [References](#references)

  

<HR>

#### Load Train and Test Data

```R
# Step 1: Grab the data
train_data = read.csv('medicare_data_train.csv')

test_data = read.csv('medicare_data_test.csv')
names(test_data)

```



```
##  [1] "provider_id"            "agency"                
##  [3] "address"                "city"                  
##  [5] "state"                  "zip_code"              
##  [7] "total_episodes"         "distinct_beneficiaries"
##  [9] "total_visits_episode"   "sn_episode"            
## [11] "pt_episode"             "ot_episode"            
## [13] "st_episode"             "hha_episode"           
## [15] "msw_episode"            "total_charge"          
## [17] "medicare_payment"       "expected_payment"      
## [19] "outlier_payment"        "lupa_episodes"         
## [21] "lupa_payment"           "age"                   
## [23] "num_male"               "num_female"            
## [25] "non_dual"               "dual"                  
## [27] "white"                  "black"                 
## [29] "asian"                  "hispanic"              
## [31] "alaskan"                "unknown_race"          
## [33] "hcc_score"              "atrial_fib"            
## [35] "alzheimer"              "asthma"                
## [37] "cancer"                 "chf"                   
## [39] "kidney_disease"         "copd"                  
## [41] "depression"             "diabetes"              
## [43] "hyperlipidemia"         "hypertension"          
## [45] "ihd"                    "osteoporosis"          
## [47] "ra_oa"                  "schizophrenia"         
## [49] "stroke"

```

Now we are pulling out columns that are not needed for regression.

```R
# Step 2: Identify and pull out columns that shouldn't be used in the regression
unused_columns = names(train_data) %in% c('provider_id', 'agency', 
                                'address', 'city', 'state', 'zip_code')
medicare_data = train_data[!unused_columns]


```

We now have clean train and test data which will be used further for our model building and running predictions on that model.

#### Intial Fit and Diagnostics

```R
# Step 3: Make initial fit and check diagnostics
fit = lm(expected_payment~., data = medicare_data)

# Step 3a: Check vif to see if we can remove variables with high multicollinearity
vif(fit)

```

Output

```R
##         total_episodes distinct_beneficiaries   total_visits_episode 
##              69.204198             119.934696            1055.608984 
##             sn_episode             pt_episode             ot_episode 
##             540.567025             215.898571              43.952784 
##             st_episode            hha_episode            msw_episode 
##               4.945398             296.025884               1.750799 
##           total_charge       medicare_payment        outlier_payment 
##              14.164621              66.626540               2.182635 
##          lupa_episodes           lupa_payment                    age 
##              39.993137              38.284335               3.299836 
##               num_male             num_female               non_dual 
##              75.828270              91.480780              30.306595 
##                   dual                  white                  black 
##              10.067188              37.943090               4.123740 
##                  asian               hispanic                alaskan 
##               2.128161               2.861538               1.134430 
##           unknown_race              hcc_score             atrial_fib 
##               2.988749               1.952741               2.366717 
##              alzheimer                 asthma                 cancer 
##               2.051919               7.880206               1.489557 
##                    chf         kidney_disease                   copd 
##               1.853257               1.769271               7.706468 
##             depression               diabetes         hyperlipidemia 
##               1.501513               2.326293               1.451529 
##           hypertension                    ihd           osteoporosis 
##               1.018977               1.642341               1.430793 
##                  ra_oa          schizophrenia                 stroke 
##               1.298048               1.534871               1.332558

```



As we can see we have several high vif's here which means 



### References

Variance Inflation factor (vif) 

Anderson darliing test

Non constant variance test.