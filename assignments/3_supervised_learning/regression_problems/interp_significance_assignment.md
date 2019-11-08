### Interpretation and significance

Suppose that we would like to know how much families in the US are spending on recreation annually. We've estimated the following model:

$$ expenditure = 873 + 0.0012annual\_income + 0.00002annual\_income^2 - 223.57have\_kids $$

*expenditure* is the annual spending on recreation in US dollars, *annual_income* is the annual income in US dollars, and *have_kids* is a dummy variable indicating the families with children. Interpret the estimated coefficients. What additional statistics should be given in order to make sure that your interpretations make sense statistically. Write up your answer.

So quick interpretation, by variable:
- expenditure: target
- constant: 873 seems to be the bias for this model (if all other variables were zero, the annual expenditure would be 873 dollars for a family)
- annual income: for every dollar of annual income the family makes, the expenditure goes up by .0012 dollars (i.e. .12 cents)
- annual income squared: for every dollar of annual income squared the family's expenditure goes up another .00002 dollars (i.e. .002 cents)
- have kids: if a family has kids then the estimated annual expenditure goes down by 223.57 dollars

In addition to the above, statistical t-tests should be conducted for the variables to ensure that they are, in fact, significant.