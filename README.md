# MechaCar_Statistical_Analysis

##### Background

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
Run t-tests to determine if the manufacturing lots are statistically different from the mean population
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

##### Linear Regression to Predict MPG

![](https://github.com/labinskin/MechaCar_Statistical_Analysis/blob/main/Resources/Initial%20Summary.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - The variables that provided a non-random amount of variance were vehicle length and ground clearance. They had p-values of p-values of 2.6x10-12 and 5.21x10-8, respectively. Vehicle weight, spoiler angle, and AWD all had p-values that indicated possible random effects. 

- Is the slope of the linear model considered to be zero? Why or why not?
  - There is an overall p-value of 5.35x10-11, indicating that there is sufficient evidence to reject our null hypothesis. Such a rejection further indicates that the slope of this model is not zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - This linear model has an r-squared of .7149, indicating that it predicts the mpg of MechaCar accurately 71% of the time. This is a fairly strong predictive percentage, though there is a chance we could revise our model to strengthen the predictive power.

##### Summary Statistics on Suspension Coils
![](https://github.com/labinskin/MechaCar_Statistical_Analysis/blob/main/Resources/Total%20Summary%20Table.png)

![](https://github.com/labinskin/MechaCar_Statistical_Analysis/blob/main/Resources/Lot%20Summary%20Table.png)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - Yes and no. Overall, all the variance of PSI for all three lots is 62.29, well below the 100 PSI variance dictate. 
  - However, when looking at the three lots individually, we find that there is a problem with lot 3. Lot 1 and Lot 2 fall well below the 100 PSI threshold (.98 and 7.47 respectively). But Lot 3 has a variance of 170.29, well above the 100 PSI variance threshold. Lot 3 also throws off the variance significantly for all of the lots combined.


##### T-Tests on Suspension Coils
![](https://github.com/labinskin/MechaCar_Statistical_Analysis/blob/main/Resources/Total%20T_Test.png)
Examining the t-tests of all the coils, we see we have a p-value of .06, which is above the .05 threshold for level of significance. This indicates that there is not enough evidence to support rejecting the null hypothesis. 

![](https://github.com/labinskin/MechaCar_Statistical_Analysis/blob/main/Resources/Lot1%20T_Test.png)

Looking at Lot 1, we see the p-value of 1, which is well above the .05 threshold. Indicating again that we do not have sufficient evidence to reject our null hypothesis, and therefore we fail to reject our null hypothesis and that there is no statistical difference between the sample mean and presumed population mean. 

![](https://github.com/labinskin/MechaCar_Statistical_Analysis/blob/main/Resources/Lot2%20T_Test.png)

Looking at Lot 2, we see a p-value of .61, again well above the .05 threshold for level of significance. Indicating again that we do not have sufficient evidence to reject our null hypothesis, and therefore we fail to reject our null hypothesis and that there is no statistical difference between the sample mean and presumed population mean. 

![](https://github.com/labinskin/MechaCar_Statistical_Analysis/blob/main/Resources/Lot3%20T_Test.png)

Looking at Lot 3, we see a p-value of .04, which is below the .05 threshold for level of significance. In this case, there is sufficient statistical evidence that our null hypothesis is not true, and therefore we can reject our null hypothesis.

Much like our discussion of the summary statistics above, there is clearly something off about Lot 3 and we should investigate what is causing these irregularities.

Study Design: MechaCar vs Competition
For future studies, we want to compare MechaCar against the competition to see where MechaCar performs better. Here we began thinking about what features consumers find important when purchasing a vehicle. Consumers are focused on safety and carrying capacity, especially as more types of vehicles are being used to pick up furniture or other goods.

**Metrics**

The two metrics that we would be most interested in examining and testing are:

Carrying Capacity

Safety

**Null and Alternative Hypothesis**

H0: There is no statistical significant difference on defined metrics between MechaCar and competition, indicating that MechaCar's carrying and capacity and safety are similar to its' competition.

Ha: The is statistical significant difference on defined metrics between MecharCar and competition, indicating that MechaCar is either statistically above or below the competition.

We would continue to use the significance level of .05 in our testing.

**Statistical Tests**

The statistical test used would be a two-tail T-Test.

**Data Needed**

The data we would need to gather is the safety records and carrying capacity of ourselves and our competitors.
