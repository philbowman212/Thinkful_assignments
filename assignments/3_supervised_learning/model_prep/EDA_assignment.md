## Assignment

1. What is the goal of EDA (exploratory data analysis)?

    *The ultimate goal of EDA is to prepare to create a model. This is done through data cleaning, data exploration and feature engineering.*

2. Suppose that you are given a dataset of customer product reviews for an e-commerce company. Each review is scored as a Likert-style survey item where 1 indicates a negative sentiment about the product and a 5 is positive. These reviews are collected on the company's website.
    1. What problems do you expect to find in the raw data?
        
        *There could be many problems depending on the data. You could have duplicates, you could have null values, you could have values that don't make sense. There are simply too many possibilities.*
        
    2. If your task is to build features that give information about customer sentiments, how would you approach this task and what kind of methods would you apply to accomplish it?
        
        *Depending on the actual dataset there could be various things that need to be ironed out before building features. You may need to impute data - depending on what information you can gather about the survey. With the ultimate goal being customer sentiment - this survey should be perfect in helping to understand what customers think about various things.*
        
    3. Try to identify some potentially useful features that you might derive from the raw data. How would you derive them and how would you assess the usefulness of those features?
        
        *The most obvious would be the scores to the questions themselves. It would also likely be useful to look at relationships between how particular questions may be connected. Or perhaps if a respondent answered a particular way on one question they are also likely to answer a particular way on another. Again, this ultimately comes down to the data and the sentiment you wish to read.*