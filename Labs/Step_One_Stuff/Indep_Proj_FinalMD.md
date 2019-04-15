# Bumblebee Snacks: Looking at natural levels of neonicotinoid exposure on Bumblebee Species

## Introduction

Write a paragraph or two to set the stage and define the overall objectives.
"What is this and why is it important"

Pollinators are responsible for nearly 24 billion dollars GDP in the US alone, and significantly more worldwide. Without them, many of our favorite fruits, veggies and nuts, would disappear. Hence why it is of the utmost importance to protect our hardest working farmer! It has been known for a long time that pesticides have a negative effect of Bee's, specifically neoticotinoids that have been shown to be especially harmful to our "buzzy" pals. However, there is very little knowledge about the specific mechanisms, and its species effecters besides the over arching bad it causes on bees as a whole. With bee's on the radar for many scientific groups, new studies and information is being published all of the time. Its important to protect our crops from the harmful bugs, but if we harm bumble bee's in the process, we are reversing all of the good we do with the pesticides. Not only do farmers need bee's, but everyone who enjoys a nice ripe orange, handful of almonds, or avocado toast (looking at you Boulder) also benefits from there survival, making the survival and health of Bee's of utmost importance. While the research and data analysis for the study that I chose has already been done, my driving question is can I learn new packages to recreate the analysis that the original researchers generated as well as is there anything interesting that I can generate with the data so that in the future I have the tools to run analysis on similar studies.

<hr>

## Summary of Data to be Analyzed
The data file is made up of 17 columns. The first column is the BeeID number that is representative of which queen and in what order they were caught. Second column is the species identifier. Column three gives the catch site, which is either the Heather Gardens of Saville Gardens on the Windsor Estate. The treatment column denotes either the high, low, or control treatment groups. The Wax column recored whether or not waxing behavior was observed, followed by WaxTime column that recored on what day the waxing behavior was observed. The Egg and EggTime columns are similar to the previous two but recording if and when an egg was laid by the Bumble Bee. The Survival column records if the queen survived the duration of the experiment followed by the SurvivalTime Column that recored until which day the queen survived during the experiment. Average daily Syrup consumption was measured in grams per day. The size column was the width of the Thorax (mm) of the queen was also recorded. The Syrup2 column is the syrup consumption corrected for Bee Size, explained within the paper. The Z score for size column is self explanatory. Infection status shows if post dissection, there were signs of mites or parasites, however you may notice that all of the entries are labeled as uninfected, which is correct because the infected bees were left out of the analysis. Average terminal oocyte length in mm is recorded along with, in the last column, z-score for oocyte length, excluding dead Queens.

### Goals of original study that produced the data (~1 paragraph)
The original study that was conducted in Great Britain aimed to look at the relationship between Bumblebees and thiamethoxam, a neonicotinoid that has long been known as the source for bee decline, however, species specificity is still wildly unknown. More accurately, the researchers wanted to look more closely at variations of sublethal dosage impacts of thiamethoxam on 4 different Bumble bee Species, which are known to frequent agricultural areas around the UK.

### Brief description of methodology that produced the data
Four Different species of Bumblebee's (B. terrestris, B. lucorum, B. pratorum, and B. pascuorum) were collected as early season as possible to limit potential that they picked up any pesticides on plants already visited. Each of the 506 queens were then fecal screened for different parasites that would cause confounding variables with the analysis, and eliminated from the specimen pool. The remaining queens were then put into Perspex Queen rearing boxes at monitored conditions. The Queens were separated into three groups, a low-dose nectar (1ppb), high-dose nectar (4ppb), and control group. The two treatment groups were given treated nectar for a two week period then untreated nectar for the remaining two weeks while the treatment group received untreated nectar for the full four week time period.  The treated queens were observed for the two weeks post exposed nectar, checked daily for mortality, any egg laying, and signs of waxing behavior. Any Queens that died were frozen at 20 degrees Celsius, with all remaining queens being frozen at the end of the four week period. All queens were then dissected and screened for mites and parasites. Any queens that were found to be infected by mites or parasites were excluded from the analysis leaving a total of 230 queens that were then used for the analysis. The data then used the Akaike information criterion to analyze the data.

### Type of data in this data set:  
The data is a combination of character class and integer class. It is possible that the character class data will need to be changed to integers to make the analysis easier.

#### Format of data  
The data is in an excel comma separated  value sheet that is 17 columns by 232 rows.

#### Size of data (i.e., megabytes, lines, etc.)
The data file is 83.2 KB in size.

#### Any inconsistencies in the data files?  Anything that looks problematic?  
The data file appears to be fairly clean at first glance. There are a handful of instances with NA's that will need to be replaced with 0's.

#### What does the data represent about the biology? (optional; this subsection may not be needed if the biological significance has already been covered in your previous descriptions)
The data looks at how a specific neonicotinoid that has widespread application effects Bumble bees which are known to visit the plants that thiamethoxam is applied to. While it is widely agreed on that the neonicotinoid class of pesticides is damaging to pollinator species, few studies have looked at specific neonicotinoid's and their interaction with specific species to help focus out knowledge.

## Detailed Description of Analysis to be Done and Challenges Involved
For my independent project, I would like to recreate the graphs and analysis that the original researchers generated, as well as new graphs looking at the various behaviors of the Queens. This will be a challenge because to recreate the graphs and numbers that were generated in the original study, I will need to learn how to use two new packages, survival and multcomp. To generate the graphs that have already been generated will require use of the ggplot package. Since I also want to create some new graphs from the data, I will need to also choose variables that produce informative and aesthetically pleasing graphs that further my knowledge of using the ggplot function.


<hr>

## References

Baron GL, Raine NE, Brown MJF (2017) General and species-specific impacts of a neonicotinoid insecticide on the ovary development and feeding of wild bumblebee queens. Proceedings of the Royal Society B 284(1854): 20170123. https://doi.org/10.1098/rspb.2017.0123

Baron GL, Raine NE, Brown MJF (2017) Data from: General and species-specific impacts of a neonicotinoid insecticide on the ovary development and feeding of wild bumblebee queens. Dryad Digital Repository. https://doi.org/10.5061/dryad.h3c18
