Guests <- 8  #Lab Step 3: Saves a variable with the number of guest in attendance
Host <- 1    #Lab Step 3:Saves a variable you yourself, the host
Total_Person <- Guests + Host  #Lab Step 3:Adds the number of guests with youself for total number of people involved in the viewing party
BofC <- 5 #Lab Step 3:Saves a variable for the number of hot cheetos bags that start out the night

AverageChipConsuption <- .4  #Lab Step 5:The average amount of chip we expect each guest to enjoy

#Lab Step 7: This step uses the variables previosuly stored to determine the number of bags of chips left over at the end of the night under the assumption that each guest including myself eats .4 bags of chips. The "print" command prints the value in the console
LeftOverChips <- BofC - (Total_Person * AverageChipConsuption)
print (LeftOverChips)


#Lab Step 8: The commands below are making vectors for the ratings given by each of the guests for the movies (StarWars Episodes 1 through 6) watched at the viewing party.
selfRatings <- c(7,6,5,1,2,3,4)
pennyRatings <- c(5,7,6,3,1,2,4)
jennyRatings <- c(4,3,2,7,6,5,1)
lennyRatings <- c(1,7,3,4,6,5,2)
stewieRatings <- c(6,7,5,4,3,1,2)

#Lab Step 9: Now we will index both Penny and Lenny's rating of episode IV and store them into a new variable names pennyIV and lennyIV, respectively
pennyIV <- pennyRatings[4]
lennyIV <- lennyRatings[4]

#Lab Step 10: we want to cacatenate all the of individual vector scores into one larger table

RatingTable <- cbind( selfRatings, pennyRatings, jennyRatings, lennyRatings, stewieRatings)


#Lab Step 11: using the structure command we can take a brief look at the infirmation that is in each of the stored values taht we made 
str(pennyIV)
str(pennyRatings)
str(RatingTable)


#Lab Step 12: Using two differently worded but same commands, we will create a data frame that stores all of the information we just stored in the enviroment. Both of the commands below do the same thing, one requires you to add all the vectors in individually, whereas the second one allows you to use a previously cacatenated number table and then formats it as a data.frame
MyDat <- data.frame(selfRatings,pennyRatings,jennyRatings,stewieRatings,lennyRatings)

MyDat2 <- as.data.frame(RatingTable)

#Lab Step 13: The difference between cbind() and data.frame is that data frame allows for the storage of more than one data type, and cbind() will only return one data type, or an error if there is more than one data type

EpisodeNames <- c("I,II,III,IV,V,VI,VII")


#This command will put row names in for each of the episodes. IMPORTANT: Put quotes around each episode names so that R can differnetiate between them, and not iterperate it as one chunk of information.
row.names(MyDat) <- c("I","II","III","IV","V","VI","VII")


#Lab Step 16 and 17: Accessing the 3rd row in MyDat, and the 4th Column in MyDat

MyDat[3,]
MyDat[ ,4]

#Lab Step 18 and 19: Accessign specific data points and storing them inti the enviroment

MyRatingEpisodeV <- MyDat[5,1]
PennyratingEpisodeIII <- MyDat[3,2]

#Now we will access everyoned ratings for episode IV through VI
MyDat[4:6,]

#Accessing specific Columns that arent in a row
MyDat[c(2,5,7),]

#Accessing specific Rows and Columns all at once
MyDat[c(4,6),c(2,3,4)]


#Swapping lenny's values for episode 2 and 5. Must save one of the values not to lose it in the swap
LennyEpisodeII <- MyDat[2,5]
MyDat[2,5] = MyDat[5,5]
MyDat[5,5] = LennyEpisodeII



