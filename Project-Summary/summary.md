
## STAT-109 Intro to Statistical Modeling - Final Project
#### Contributors : [Phillip Booth](mailto:phillip.booth2015@gmail.com), [Eliud Omollo](woordy2000@gmail.com) , [Jack Carter](jcarter2014@gmail.com), [Vivek Mishra](mailto:iblpvivek@icloud.com)
<HR>

### [**_Welcome_**](readme.md)&emsp;|&emsp;[Data Set](data-set.md)&emsp;|&emsp;[Introduction and EDA](eda.md)&emsp;|&emsp;[Model Building](model-building.md)&emsp;|&emsp;[Summary](summary.md)
<HR>

### Content:
1. [Summary](#summary)


<HR>

### Summary

In this project, we examined variables that influence the expected medicare payments for home health agencies. We examined and analyzed the following:

  <ul>
    <li>Variables that were captured but not necessary for the prediction:
     After researching the underlying the data through the Medicare site, we determined that some variables such as age, sex, race were         collected for government reporting purposes did not go towards the expected payment. We recognized that a good understanding of the       data is important before one undertakes a regression task.
  </li>  
    <li>We performed Exploratory Data Analysis on the data to get an understanding of the relationship between variables.</li>   
  </ul>

2. [Regression Steps](#regression-steps)

 <ul>  
    <li>Step 1: Fit the model</li>
    <li>Step 2: Observe diagnostics of model to see if LINE is satisfied</li> 
    <li>Step 3: Notice that we have multicollinearity. Remove variable with highest VIF, refit, and repeat until we don’t have any more multicollinearity.</li>
  <li>Step 4: Notice that we have some insignificant variables in the model. Remove variable with highest p-value, refit, and repeat until all variables are significant.</li>
  <li>Step 5: Notice that we don’t have normally distributed error terms. Use allpossregs to produce a model with six variables based on the lowest AIC/BIC</li>
    <li>Step 6: Run a power transform on those variables to create a model with normally distributed error terms</li>
  <li>Step 7: Notice that we fit a line when we should have fit a curve based on the residuals vs fitted plot. Introduce polynomial terms to fix this.</li>
  <li>Step 8: Notice that we don’t have equal variance of our error terms. Fit a model with a logged y variable and see that equal variance has been fixed.</li>
  <li>Step 9: All four LINE assumptions have been addressed and improved</li>   
  </ul>


[Back to top](#content)
