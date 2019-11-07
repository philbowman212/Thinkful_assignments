## Assignment
1. Let's assume that you have World Bank data on financial, economic and social indicators for several countries. You want to measure the factors that affect the level of development in these countries. To this end, you decide to use per capita income as a proxy for the development level, which is defined as the national income divided by the population. You want to use some features in your dataset to predict per capita income. Is this task a classification or a regression task? Why? 

    *Regression - per capita income could take on practically any value and is a continuous variable. With a continuous outcome variable under a supervised learning environment it is a regression problem.*

2. Which of the following arguments are false and why?
  * OLS is a special type of linear regression models 
  
      *False - OLS (Ordinary Least Squares) is used to estimate coefficients*
  * Regression models become useless if they don’t meet the assumptions of linear regression.
  
      *False - There are approches to use linear regression even if it doesn't fit all the assumptions.*
  * Estimation and prediction are the same thing in the context of linear regression models.
  
      *Sort of... - Depends on the context; if you're talking about the extimation of the outcome variables then it's prediction, but if you're talking about the estimation of the correlation coefficients then that is not the same as prediction.*
  * Linear regression is only one kind of regression model. Regression problems can also be solved with other kind of models like Support Vector Machines or Random Forests.
  
      *True - There are other regression models.*

3. Assume that your project manager wants you to discover which free services your company offers make your customers buy more of your paid services. Formulate this task as a regression problem and write down the potential outcome and features that you’d like to work on.

    * Potential Outcome: Additional Paid Services Purchased by Customer or Amount Customer Spent
    * Potential Features: Free Services that affect purchases of Paid Services (however many of these that exist)
