
###################################################################
library(ggplot2)
library(tidyverse)
#Necessary packages for this project

Bee_Ovaries <- read.csv("Bee_Ovaries.csv") #Reads the data from the computer
View(Bee_Ovaries) #Opens up the raw data frame for inspection


Bee_Ovaries[is.na(Bee_Ovaries)] <- 0 #Replaces any instance of NA in the data frame with a 0 so that when calculating the mean and standard deviation ther will be no error's. I determined this as a necessary step when attempting to get the full data frame by the name Bee_Ovaries2

Bee_Ovaries2 <- Bee_Ovaries %>% 
  group_by(Species,Treatment) %>%
  summarise(mean_Value <- mean(Syrup2),
            sdVal <- sd(Syrup2),
            Rel_Oocyte <- mean(Z_Oocyte),
            sdOocyte <- sd(Z_Oocyte),
            sampleSize <- n())
View(Bee_Ovaries2)
# The code block spanning from line 10 to line 14 takes the raw data, groups it by species, then summarises the mean of the Syrup2 column (Syrup consumption adjusted for size of Bee), gives the standard deviation of the Syrup2 column (Syrup consumption adjusted for size of Bee), teh mean and standard deviation for teminal OOcyte length, and totals all of the counts of data in each row for the summary. VERY IMPORTANT STEP



#Graph 1- Syrup Consumption per Treatment group per Species (Adjusted for size of specimen)
ggplot(Bee_Ovaries2, aes(fill = Treatment, y = Bee_Ovaries2$`mean_Value <- mean(Syrup2)` , x = Species)) + 
  geom_bar(position="dodge", stat="identity")+
  geom_errorbar(aes(ymin = Bee_Ovaries2$`mean_Value <- mean(Syrup2)` - Bee_Ovaries2$`sdVal <- sd(Syrup2)`, ymax = Bee_Ovaries2$`mean_Value <- mean(Syrup2)` + Bee_Ovaries2$`sdVal <- sd(Syrup2)`), width = .2, position=position_dodge(.9))+
  labs(x = "Species of Bumblebee", y = "Syrup Consumption Corrected for Bee Size (g/mm_)", title = "Syrup Consumption per Treatment group per Species")
#The code from lines 18 to 21  Graphs the data to match figure one in the paper, as well as change the axis lable to something more easilty understandable that the default. A reacuuring problem that I ran into was not being able to get the Treatment groups in the order that I desired, Control -> Low -> High, rather than the default alphabetic order. After scouring stack overflow, the best optio I could find was the use of x = reorder() command but could not get it to play nice with the grouped barplot.



#Graph 2 - Mean Oocyte Length per Treatment group for each species
Bee_Ovaries3 <- Bee_Ovaries %>% 
  group_by(Treatment, Species) %>%
  summarise(mean_Value <- mean(Syrup2),
            meanOocyte <- mean(Average_terminal_oocyte_length),
            sdOocyte <- sd(Average_terminal_oocyte_length),
            sampleSize <- n())
View(Bee_Ovaries3)
#Lines 38 to 44 is another block doing som data parsing using the summarise function from dplyr function to pull out the columns that I will need for the follwing graph

ggplot(Bee_Ovaries3, aes(fill = Treatment, x = Species, y = Bee_Ovaries3$`meanOocyte <- mean(Average_terminal_oocyte_length)`)) +
  geom_bar(stat = "identity" , position = "dodge") +
  geom_errorbar(aes( ymin = Bee_Ovaries3$`meanOocyte <- mean(Average_terminal_oocyte_length)` - Bee_Ovaries3$`sdOocyte <- sd(Average_terminal_oocyte_length)`, ymax = Bee_Ovaries3$`meanOocyte <- mean(Average_terminal_oocyte_length)` + Bee_Ovaries3$`sdOocyte <- sd(Average_terminal_oocyte_length)`), width = .2, position=position_dodge(.9)) +
  labs(y = "Mean Oocyte Length", x = "Species of Bumblebee", title = "Mean Oocyte Length per Treatment group for each Species") +
  scale_fill_manual(values=c("#CC6666", "#9999CC", "#66CC99"))
#Lines 49 to 53 is the graphing Mean Oocyte length for each species of Queen Bumblebee in each treatment group. You will notice this isnt Figure 2 that is in the paper, complications due to data kept me from graphing that figure as discussed in the markdown file. This graph also has error bars, showing the standard deviation for each species in each category. NOTE: the use of the width and position dodge command prevent the error bars from all being stacked on top of eachother.




#Graph Three - Mean Oocyte Length per Treatmetn Group for each Species
ggplot(Bee_Ovaries, aes(fill = Treatment, x = Species, y = Bee_Ovaries$Z_Oocyte)) + #Base GGplot function
  geom_boxplot() + #Calls teh boxplop mapping
  labs(x = "Species of Bumblebee", y = "Z-score for average Oocyte Length", title = "Z-score for Oocyte length for each Species and Treatment group") + #The lables for the graph
  scale_fill_manual(values=c("#999999", "#E69F00", "#56B4E9")) #Color values for the graph
#Lines 58 to 61 generate graph 3, which is a boxplot, showing the Z score for average Oocyte Length for each treatment group within each species, This is the same figure that was generated for figure three of the original publication






