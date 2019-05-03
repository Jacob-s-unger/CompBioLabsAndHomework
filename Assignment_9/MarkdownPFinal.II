# The Effects of Thiamethoxam on Foraging Bumble Bee Queens

## Biological question?

How does the dosage of Thiamethoxam effect the mortality of Bumblebee's in wild foraging relevant exposure?

## Context (introduction)

Pollinators are responsible for nearly 24 billion dollars GDP  in the US alone, and significantly more worldwide (Pollinator.org). Without them, many of our favorite fruits, veggies and nuts, would disappear. Hence why it is of the utmost importance to protect our hardest working farmer! It has been known for a long time that pesticides have a negative effect of Bee's, specifically neoticotinoids, that have been shown to be especially harmful to vital pollinator species. However, there is very little knowledge about the specific mechanisms in which these chemicals harm pollinators. With bee's on the radar for many scientific groups and new studies, information is being published all of the time, in part due to the decrease of certain Bumblebee and native Bee species. It's important to protect our crops from the harmful bugs, but if we harm bumblebee's in the process, we are reversing all of the good we do with the pesticidal chemicals. Not only do farmers need Bee's, but everyone who enjoys a nice ripe orange, handful of almonds, or avocado toast also benefits from their survival, making the survival and health of Bee's of the utmost importance. While the research and data analysis for the study that I chose has already been done, my driving question is can I fully understand the graphs that they chose to produce, and why they graphed those parameters and reproduce those graphs as well as some of my own, and understand the paper to its full extent as its very similar to the kind of research that I hope to be doing in the future.

## Methods


### Describe the data you used to study your question and its origins.
From the raw data that was provided, I only used the species, Treatment, Syrup2, and Z score for oocyte length. These columns were subsetted from the raw data in R using the 'summarise' function from the package Tidyverse. Citations for the study and the data can be found at the end of this document.

###  Give a description (one or two paragraphs) of how the data were produced.

The data for this study was produced by collecting 4 easily identifiable Bumblebee species in between early March and April from Windsor Great Park in Surrey UK. This collection window was deliberately chosen to minimize other pesticide exposure, namely triticonazole (a fungicide) and acetamiprid (a neonicotinoid insecticide used for aphid control) are applied between June and September There was a total of 508 queens initially collected. The authors made a note that while it was impossible to say with certainty if the bee's had been previously exposed to pesticides, all specimens collected were randomly assigned to treatment groups, so they would all be randomly distributed. All specimens were then screened for infection and parasites and accordingly eliminated from the data set. The queens that were kept for the study were then established in temperature and humidity controlled Queen rearing boxes provided with a sugar syrup solution and pollen pellets for the duration of the experiment. Within the three treatment groups, control, low, high, they were given roughly 0, 2, and 5 parts per billion thiamethoxam in the syrup solution. From this point on, the Queen's were monitored closely for a multitude of behaviors such as  waxing, if they laid an egg, syrup consumption, and of course survival. When and if a Queen died during the 3 day period, they were immediately frozen till dissection. After the 28 day period in the queen rearing boxes, the surviving Queens were also frozen, then dissected, looking at the average developing oocyte length for the Queens that survived the whole experiment. All of the collected data was compiled into a spreadsheet for further analysis.




### Give a description of the size and nature of the data.

This is a relatively small data set with only 231 rows and 18 columns. The most interesting thing in the data that I noticed is since they are comparing 4 different species of Bumblebee's in their levels of consumption of syrup, they had a separate column that used z score to adjust the bees consumptions based on size of the Queen. This is something that I would have never thought of, but was important to this study as it allowed a standard for the analysis. For the graphs, they only needed roughly three of the columns of data, but for the analysis they used nearly all of them, however the authors didn't include any raw numbers or figures based on the survival analysis which seemed odd. The data was well organized and already fairly clean int he file that the researchers uploaded for public use onto DataDryad


### What the original authors did with the data:

The goal of the original analysis was to look at the relationship between doses of thiamethoxam at reasonable foraging encountering levels, and the mortality levels in the four collected species of Bumblebees. The first thing the researchers did was clean the data by eliminating any possible confounding factors effecting potential mortality in the specimen population, such as previous infection or parasites. Once they had the cleanest possible data, the analysis began. The first bit of analysis that really stood out to me was the inclusion of a summary table in the paper, this gave both the researchers and the readers a good idea of how the nitty-gritty analysis would turn out. They then produced three graphs. The first one documented the average daily syrup consumption by species by treatment group. This is what I believe to be the most important graph, because it helps determine if different species were prone to consuming more and then potentially ingesting more thiamethoxam, increasing its negative effects. The second graph looked at the average daily amount of thiamethoxam ingested between the different treatment groups, which helps show if the thiamethoxam consumption affected the eating of the bumblebee's, showing greater variation in the high treatment group, suggesting that it does affect consumption in some way. The final figure they produced looked at relative oocyte length for the four species of bumblebee's, again broken into their treatment groups, attempting to correlate egg development to thaimethoxam exposure.



### What YOU did with the data and how you did it:

My goal for this project was to recreate the figures exactly as the the original authors did in "General and species-specific impacts of a neonicotinoid on the ovary development and feeding of wild bumblebee queens". Starting off, while I didn't have to clean the raw data of possible confounding factors, I did have to organize it in a way that R would be able to utilize it for graphing. This meant using a summarize function to pull the columns that I needed for graphing and performing some analysis to get the mean and standard deviation for a few of the columns. Once the data was organized in an appropriate way, with all necessary calculations made, I wrote out pseudo-code, to aid in the graphing. Using ggplot, I was able to make the graphs, not without a fair number of roadblocks. Figure one ![Figure 1]([https://github.com/Jacob-s-unger/CompBioLabsAndHomework/blob/master/Assignment_9/Figure1IP.R.jpeg](https://github.com/Jacob-s-unger/CompBioLabsAndHomework/blob/master/Assignment_9/Figure1IP.R.jpeg)) shows the relationship between the average amount of syrup consumed and the treatment group for each of the four species. Figure two ![Figure 2]([https://github.com/Jacob-s-unger/CompBioLabsAndHomework/blob/master/Assignment_9/Figure2IP.R.jpeg](https://github.com/Jacob-s-unger/CompBioLabsAndHomework/blob/master/Assignment_9/Figure2IP.R.jpeg)
) shows looks at mean oocyte length per treatment group for each species. This is not the same figure that the original researchers generated in their analysis, the reason why being discussed in the section titled 'Road bumps and complications'. The last figure, Figure 3 ![Figure 3]([https://github.com/Jacob-s-unger/CompBioLabsAndHomework/blob/master/Assignment_9/Figure3IP.R.jpeg](https://github.com/Jacob-s-unger/CompBioLabsAndHomework/blob/master/Assignment_9/Figure3IP.R.jpeg)
) is nearly identical to the third figure from the original publication, graphing the relationship between Z-score for oocyte length for each species and treatment group.


## Results and conclusions

Through the course of this independent project, I reconfirmed that thiamethoxam consumption has a no correlation with mortality, but a negative relationship with terminal oocyte length. What I also found is that the graphs they produced required a lot more parsing and cleaning and lines of code than I initially thought. In regards to the researchers original question when proposing this study, the analysis is quite the opposite of what my intuition said, which is what drew me to attempt to recreate their analysis. This research project also brought up some more interesting questions, namely if field relevant dosage doesn't effect mortality in bumblebee's, why are we seeing a decrease in species ranges (Cameron)? The researchers also make it clear that this is a small scale project, only looking at four species of Bumblebees, meaning that there was very little evaluation on the varying species specific effects making it difficult to apply these results to other species of Bumblebee's and Bee's.

### Road bumps and complications
I was unable to reproduce figure 2 from the original study due to inability to find or parse the necessary data. Figure 2 looks at average daily thiamethoxam consumption (ug) in comparison to the three treatment groups (Control, Low, and High), getting the data for the y axis from "Value calculated from actual residue values". During step one of the project, I assumed that I would be able to find these 'values' or parse them out of the raw data, but the more that I looked how to find them, I was unable to find the necessary precursor data or find them in the raw data. In response, I generated a graph showing the relationship between Mean Oocyte Length and species per treatment group. Based on the figure, there is no relationship between treatment group and oocyte length. However, when you use the adjusted Z score to look at the relationship between treatment and oocyte length, there is a reduction in oocyte length. I think this is an interesting observation, where it is the same raw data but visually, they tell completely different stories. The researcher in the original publication determined that the Queens in the high treatment group had a reduced oocyte size by 8.1%.


## Citations

Original Publications: Baron Gemma L., Raine Nigel E. and Brown Mark J. F. General and species-specific impacts of a neonicotinoid insecticide on the ovary development and feeding of wild bumblebee queens284Proceedings of the Royal Society B: Biological Sciences,
https://doi.org/10.1098/rspb.2017.0123

Data: Baron, Gemma L., et al. Data from: General and Species-Specific Impacts of a Neonicotinoid Insecticide on the Ovary Development and Feeding of Wild Bumblebee Queens. May 2017. Dryad Digital Repository, datadryad.org, https://doi.org/10.5061/dryad.h3c18

Pollinator.org. “About Pollinators.” Pollinator.Org, 1 May 2019, https://pollinator.org/pollinators.

Cameron, Sydney A., et al. “Patterns of Widespread Decline in North American Bumble Bees.” _Proceedings of the National Academy of Sciences_, vol. 108, no. 2, Jan. 2011, pp. 662–67. _www.pnas.org_, doi:[10.1073/pnas.1014743108](https://doi.org/10.1073/pnas.1014743108).
