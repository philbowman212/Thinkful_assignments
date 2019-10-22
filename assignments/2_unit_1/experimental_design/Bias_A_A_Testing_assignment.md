## Bias Assignment

For each of the following scenarios, call out the potential biases in the proposed experiment. Do your best to try to discover not only the bias, but the initial design. There is plenty of room for interpretation here, so make sure to state what assumptions you're making.

Bias types:
- **Sampling/Selection** Bias
- **Assignment to Conditions** Bias
- **Contextual** Bias
- **Observer** Bias

#### 1. You're testing advertising emails for a bathing suit company and you test one version of the email in February and the other in May.

- The two samples (February and May) are going to differ significantly since people will inherently react differently to any sort of bathing suit email based on the time of year (seasonality of bathing suits), there will likely be more interest in May than in February.
- This of course depends on the location, if there is a place where bathing suits are used year round, and the emails are sent only here, then seasonality would not be as much of a factor, as bathing suits would likely be popular throughout the year (or at least in February and May). For most of the world though, this would be unlikely.
- Overall, I believe this primarily falls under ***contextual bias*** - the *sample* could be random and similar to the population of interest, the *assignment* (or separation) of the two groups could be perfect, but in any case the *context* in which these two experiments are done (one in Feb, one in May) would differ wildly depending on the location of the study.
- If an A/A test was run here, we would find a problem with the outside variable of time of year (seasonality), if version one of the email was sent both in February and May, I would suspect that the May email would perform better simply because it was sent in May rather than February.
- **Possible Solution**: send the two versions out to two separate but like groups within the sample *at the same time*. Depending on the exact context of the email, perhaps it would be more relevant to test in either Feb/May. If the goal is to get results quicker, experiment now. 
	
#### 2. You open a clinic to treat anxiety and find that the people who visit show a higher rate of anxiety than the general population.

- This is a relatively obvious example of ***sampling bias***. It follows that people who come to a clinic to treat anxiety would likely suffer from anxiety at a higher rate than the general population.

- For example: Given an individual that doesn't suffer from any sort of anxiety, the probability that they check into a clinic for anxiety is practically nil. However, given an individual that does suffer from some sort of anxiety, their chances for checking into a clinic for anxiety would generally be greater than that of someone without anxiety. 

- In math terms: P(GC|NA) < P(GC|A)
  - GC is going to the clinic
  - NA is a non anxious person
  - A is an anxious person

- Ultimately, this means that the distribution of anxious and non-anxious people in your clinic will likely be vastly different than that of the general population. The population in the clinic will likely be close to 100% anxious, but the general population most likely doesn't share this nearly 100% anxious population.

- Therefore, any test done within the clinic should not assume that the results are also true for the general public. Perhaps the assumption could be made that the results ring true for anxious people, but even that could be a stretch. Maybe only a certain type/category of anxious individuals actually look to find help from a clinic? If that is the case, then it may only be safe to assume the results ring true for anxious individuals that go to clinics for help.

- **Possible solution**: State the assumptions for the experiment, and backup the assumptions with reasoning/logic/data. In this case you would likely have to assume that the general population is mostly anxious in order to assume the results carry over to the general population as well.

#### 3. You launch a new ad billboard based campaign and see an increase in website visits in the first week.

   - Assuming that the only change (in marketing) done for the website was the billboard ad - this could cause website visits to increase at least in the short term. Without a change to the campaign (moving locations of billboard/changing what appears on the billboard/etc.) it is likely that the website visits will fall off after awhile.  One reason could be that most people generally drive in the same areas; what was once a new billboard could become an old one.
   - The main question becomes, is a week long enough to gather useful results for this campaign? It certainly shows that more traffic will come in the short term - but will that lead to success for the website in the long term? If the goal is to get the website 'brand' out there, then perhaps this is a favorable result. New people will come to know the website that didn't before. 
   - But what if there was something else at work here? Maybe some sort of ***contextual bias*** exists here that we are not aware of? Perhaps a public influencer has endorsed our website unbeknownst to us and we mistake his influence with the billboard campaign. How can we tell how much traffic came to the website due to the influencer and how can we tell how much traffic came to the website due to the campaign? It would be difficult to tell without running another experiment.
   - This question requires many assumptions to be made or not made. Assuming the status quo is maintained for the website and the only thing that changes is this ad campaign, then it may be safe to assume that the ad campaign was a success. 
   - There are many factors to consider here, however:
        - Location of the billboard ads
        - Viewing population characteristics
        - Are all ads the same?
        - Any other outside factors
- **Possible solution:** The simplest would be to run the campaign again. Does it still yield the same results? If so, then perhaps the campaign does in fact work, at least under the same conditions (the similarity of which is unlikely if it is run in another location, but possible). If not, then maybe there was some sort of external factor that wasn't taken into account the first time around (can we figure out what that was and replicate it?)

#### 4. You launch a loyalty program but see no change in visits in the first week.

- Do people know about the loyalty program? Are people being encouraged to join the loyalty program? Are people being informed about the details and benefits of the loyalty program? Are people actually joining the loyalty program?
- The institution of a loyalty program alone will not drive further visits (especially within the first week). This is likely a test that will need to be run on a longer term in order to see its effects. The **sample** may be too small in order to read any useful results. More than likely the loyalty program will drive further visits by encouraging members to return for various reasons (member only sales, point specials, loyalty events, etc.) 
- Another thing to watch here would be how many times a loyalty member returns. If it is more likely that a loyalty member visits than a non member, then it would follow that we want to get as many loyalty members as we possibly can.
- The main problem with this test may simply be with the *amount of time given* for results to be expected. The ***contextual bias*** of *time itself* would likely come into play. If the loyalty program was just launched, it may take time for it to gain steam and adoption. However, there can be numerous other outside factors depending on the context of the loyalty program itself.
- **Possible solution**: Give the loyalty program some time and perhaps more support. What is the ultimate goal? Likely to get *more return visits* from customers in order to *increase total visits* in order to *increase total sales* in order to *increase total profits*, ultimately to have a **more favorable bottom line**. Are there systems in place to promote the new loyalty program? Are these systems being executed? If the answer to either of those questions is no, then the loyalty program will not be very effective at achieving its ultimate goal...