#Lab 11: More data filtering, subsetting, summarizing, and plotting

#Import the appropriate data into R
WoodData <- read.csv(file = "GlobalWoodDensity.csv") #Import the data
colnames(WoodData)[4] <- "Wood_Density" #rename the 4th column of our data with a much shorter name 

WoodData <- na.replace(WoodData, 0 ) #replaces the instance where there is an Na with the value 0, which would indicate that the tree has a 0 density and therefore non-existant
WoodData <- subset(WoodData, WoodData$Wood_Density != 0 ) #This will check for all data that is not equal to 0, which will be everything but the previous Na that we replaced with 0, and then reallocate it into the new data set with the same name! Much easier than what I wanted to do, Thanks Sam!

##Dealing with Pseudoreplication in the data: Averaging the species densities to make the data more managable
  

WoodData <- summarise(group_by(WoodData, Family, Binomial),
                      MeanDifference = mean(Wood_Density))
  #Rearranges the data so that it is grouped by similar binomial name and them take the mean of the density for each of the groups of Binomial Names (Keeping the family names) and then replace the pre-existing data


WoodData <- summarise(group_by(WoodData, Family),
                      MeanDifferenceFamily = mean(MeanDifference))

#Order the data in decreasing order of the Mean Difference Wood Data, this took me almost 30 monutes to figure out but it finally works! Woopee!
new_Wood_Data <- WoodData[order(WoodData$MeanDifferenceFamily, decreasing = TRUE),] 

First8 <- head(new_Wood_Data, 8) #Will create 2 new vectors containing the first and last 8 of the data frame so it can be plotted
Last8 <- tail(new_Wood_Data, 8)

print(First8)
print("The 8 most dense tree families")
print(Last8)
print("The 8 least dense families")

ggplot(First8 , aes(reorder(Family,MeanDifferenceFamily), MeanDifferenceFamily, color = Family ))+
  geom_bar(stat="identity", ordered = FALSE )+
  theme_minimal()+
  theme(axis.text.x=element_blank())


ggplot(Last8 , aes(reorder(Family,-MeanDifferenceFamily), MeanDifferenceFamily, color = Family ))+
  geom_bar(stat="identity", ordered = FALSE )+
  theme_minimal()+
  theme(axis.text.x=element_blank())
