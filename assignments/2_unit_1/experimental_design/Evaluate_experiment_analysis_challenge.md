# Challenge: Evaluate an experiment analysis

Now it's time to flex your critical evaluation skills. Read the following descriptions of an experiment and its analysis, identify the flaws in each, and describe what you would do to correct them.

1. The Sith Lords are concerned that their recruiting slogan, "Give In to Your Anger," isn't very effective. Darth Vader develops an alternative slogan, "Together We Can Rule the Galaxy." They compare the slogans on two groups of 50 captured droids each. In one group, Emperor Palpatine delivers the "Anger" slogan. In the other, Darth Vader presents the "Together" slogan. 20 droids convert to the Dark Side after hearing Palpatine's slogan, while only 5 droids convert after hearing Vader's. The Sith's data scientist concludes that "Anger" is a more effective slogan and should continue to be used.

   <u>**Flaws**</u>
   - The method of the experiment, specifically the 'who' in the experiment's conduction (Darth Vader/Palpatine - *Observer bias*)
   - Are the two groups of droids alike? (*Assignment bias*)
   - Are we only concerned with recruiting droids? (*Sample bias*)

   <u>**Corrections**</u>
   - Method: Rather than have Vader and Palpatine conduct separate experiments, it would be wise to have only Vader or Palpatine conduct the two experiments (bonus points - do an A/A test to see if Palpatine or Vader is more effective in recruiting)
   - Assignment bias: If we are interested in only droids, how can we be sure that the two groups of droids are alike? Simple solution, run an A/A test on the two groups to confirm that under the same circumstances they would react similarly.
   - Sample bias: Are these droids the ones we are looking for? What if we want to try to turn Jedi to the dark side? Will this method of testing work for a Jedi as well? Likely not, droids will probably react to the slogans differently than other beings. In this case, expand our sample population to one comparable to the overall population we are interested in.
   
2. In the past, the Jedi have had difficulty with public relations. They send two envoys, Jar Jar Binks and Mace Windu, to four friendly and four unfriendly planets respectively, with the goal of promoting favorable feelings toward the Jedi. Upon their return, the envoys learn that Jar Jar was much more effective than Windu: Over 75% of the people surveyed said their attitudes had become more favorable after speaking with Jar Jar, while only 65% said their attitudes had become more favorable after speaking with Windu. This makes Windu angry, because he is sure that he had a better success rate than Jar Jar on every planet. The Jedi choose Jar Jar to be their representative in the future.

   <u>**Flaws**</u>
   - Sounds like a good old case of Simpson's Paradox
   - Selecting Jar Jar for anything


   <u>**Corrections**</u>
   - Dig deeper: Is Jar Jar really that likeable? Dive into each individual planet and the statistics for each - it is quite possible that Mace Windu did do better in each individual planet than Jar Jar. Depending on the findings, it may be more effective to send Mace Windu on these PR runs in the future. It is possible that Jar Jar did well enough on a very populous planet and not as well in others, this could make it look like Jar Jar did better overall, but really he only did well on one very populous planet. Therefore the populations of these planets could contribute to a massive contextual bias that perhaps isn't considered on the whole.


3. A company with work sites in five different countries has sent you data on employee satisfaction rates for workers in Human Resources and workers in Information Technology. Most HR workers are concentrated in three of the countries, while IT workers are equally distributed across worksites. The company requests a report on satisfaction for each job type. You calculate average job satisfaction for HR and for IT and present the report.

   <u>**Flaws**</u>
   - Too simplistic! 
   - Possible Simpson's Paradox here as well
   - Suppose the three countries with most of the HR employees had very high scores, but the other two countries' scores were abysmal, if you averaged the averages of the countries, then you would end up scoring the overall HR satisfaction too low - and likely the two abysmal countries too high

   <u>**Corrections**</u>

   - Pull out the shovel and dig: It would most likely be best to dig into each individual countries' satisfaction scores and deal with them on a country by country basis. If one of the low populace HR countries scored extremely low, but the only number presented is the overall average, which could be inflated due to more populated HR countries, then a problem is being hidden, it would be better to bring the low satisfaction to the attention of the company, so it may be corrected. The key here is to dig in. Get specific with the overall scores and describe what could be hiding underneath them.


4. When people install the Happy Days Fitness Tracker app, they are asked to "opt in" to a data collection scheme where their level of physical activity data is automatically sent to the company for product research purposes. During your interview with the company, they tell you that the app is very effective because after installing the app, the data show that people's activity levels rise steadily.

   <u>**Flaws**</u>
   - ***Sample Bias*** (the sample used only consists of people 'opting in'/also those that use the app are possibly more motivated than the general population - even without the app)
   - Correlation should not imply causation!

   <u>**Corrections**</u>

   - Could be stated that the app is very effective for people who opt in and use the app. This doesn't mean that it would necessarily be useful for the general population, though. So changing the frame of who this app is useful for is important when making claims about the app. Run an A/B test on similar groups of individuals, give one group the app, don't give the other group the app, see if the app does *cause* rising activity levels.


5. To prevent cheating, a teacher writes three versions of a test. She stacks the three versions together, first all copies of Version A, then all copies of Version B, then all copies of Version C. As students arrive for the exam, each student takes a test. When grading the test, the teacher finds that students who took Version B scored higher than students who took either Version A or Version C. She concludes from this that Version B is easier, and discards it.

   <u>**Flaws**</u>
   - We have an A/B/C test (literally each test is a test) - not necessarily a flaw, just an observation
   - ***Assignment to Conditions Bias*** is very likely (the distribution of the tests may seem random, but they are not). Consider the case where a group of friends who are on average smarter than the rest of the class enter the classroom together, it just so happens that all the A tests have just been handed out, now the 'above average intelligence friends' all have the same version of the test: *Version B*. This doesn't necessarily mean that the test is any easier or harder than the others - or that anyone cheated, but instead, the students who took this test were just smarter and more capable.
   - In the case of cheating, higher scores don't necessarily indicate whether cheating occurred or not. If the ultimate goal is to prevent cheating, this doesn't appear to be the most useful method. Higher scores could indicate the difficulty of a test, but only if students who perform similarly are compared.

   <u>**Corrections**</u>
   - To prevent cheating, quasi-randomize how the versions are passed out. It would be wise to prevent students who sit next to one another to take the same test - to ensure cheating is not a factor.
   - In the case of possibly throwing out a test, it would be wise to look at the normal scores for each individual student and compare it to the outcome for each test. If students who generally score very high all do poorly on a test, perhaps that test is too difficult. If students who generally score low do very well on a test, maybe the test is too easy. This will require prior knowledge and constant retesting, but over time should yield tests that are properly difficult and also different to discourage cheating.