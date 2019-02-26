#Jacob Unger Lab 05 
##### Part 1: Simple Conditional Practice #####
#Create a variable named x and then check to see the value in varible x is larger than 5
x <- 77
if ( x >= 5){     #If x is greater than 5
  print("X is greater than 5")  #Print this statment
}

#2a -> using a for loop to replace all of the negative values in the csv with "NA"
Vector1 <- read.csv("/Users/JacobUnger/Desktop/WorkingRDirectory/Vector1.csv")
MyVec <- Vector1$x #Puts the vector into its own value that ot not a data frame
for (i in 1:length(MyVec) ) { #For every point that is in the vector, run this loop
  if(MyVec[i] < 0){ #if the value if less than 0, replace it with NA
    MyVec[i] <- NA  
  }
}

#2b. Using vectorized code (no loop) that makes use of "logical" indexing, replace all those `NA` values with `NaN`.  (Note that R has a special function for testing if something is an `NA`)

MyVec <- na.replace(MyVec, NaN) #Using a tool from package gtools (loophole???) I replaced all of the values in the MyVec that were NA to NaN


#2c. Using  a `which()` statement and integer indexing (again, no loop), replace all those `NaN` values with a zero.  (Note that R has a special function for testing if something is an `NaN`)
MyVec[is.nan(MyVec)] <- 0 #SPecifies my vector, function 'is.nan' within MyVec, replace with 0

#2d. Use code to determine how many of the values from the imported data fall in the range between 50 and 100 (inclusive of those endpoints). 
FiftyToOneHundered <- (MyVec < 100 & MyVec > 50)  #Creates a new vector with 2024 TRUE or FALSES coordingating to whether or not the value in that spot falls in between 100 and 50

#2e. Using any method of your choice, create a new vector of data that has all the values from the imported data that fall in the range between 50 and 100.  Do NOT dynamically grow the array, however.  This vector should be named "FiftyToOneHundred". 
FiftyToOneHundered <- subset(MyVec, MyVec < 100 & MyVec > 50) #Uses the subset funtion to pull from a pervious vector, use that data to create the new vector with the specified conditionals




# 2f.  Use `write.csv()` to save your vector to a file named "FiftyToOneHundred.csv".  Please use all default settings with `write.csv()`.  In other words, assuming that your current working directory is your own directory for your work for Lab05, save it with the command `write.csv(x = FiftyToOneHundred, file = "FiftyToOneHundred.csv")`
write.csv( x = FiftyToOneHundered, file = "Fifty_to_OneHundered")

#3. Import the data on CO2 emissions from last week's lab ("CO2_data_cut_paste.csv" from Lab04).  Read the accompanying metadata (in a plain text file in the same directory) to learn what the data represent.  Use code to answer the following questions.  Hint: you do NOT need to use any loops here.  Use some combination of `which()`, logical operators, and/or indexing:
CO2_data <- read.csv("CO2_data_cut_paste.csv")

#3a. What was the first year for which data on "Gas" emissions were non-zero?

Gas_NonZero <- subset(CO2_data, Gas >= 1)
show(Gas_NonZero [1,1])


#3b. During which years were "Total" emissions between 200 and 300 million metric tons of carbon?
Total_TwoHund_to_ThreeHund <- subset(CO2_data, Total >= 200 & Total <= 300)


######################### P A R T 3 ###############################

#n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
#p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])

#In this model, `n[t]` represents the abundance of prey at time `t`, and `p[t]` the abundance of predators at time `t`.  Prey increase in abundance due to exponential growth, represented by the term `(r * n[t-1])`, where `r` is the intrinsic growth rate.  Prey decrease due to consumption by predators, represented by the term `(a * n[t-1] * p[t-1])`, where `a` represents the "attack rate" of predators on prey.  Predators increase in abundance due to consumption of prey, represented by the term `(k * a * n[t-1] * p[t-1])`, where `k` is a conversion constant representing the conversion of consumed prey into biomass of predators.  Predators die at a constant mortality rate, represented by the term `(m * p[t-1])`, where `m` is the intrinsic mortality rate.
#Write code that calculates abundances of predators and prey over time according to this model. 

#Setting up the variables
totalGenerations <- 1000
initPrey <- 100 	# initial prey abundance at time t = 1
initPred <- 10		# initial predator abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators


#Second, create a "time" vector, and make two additional vectors to store results, one for the values of `n` over time, and the other to store values of `p`.
time <- rep(1:1000)

prey <- rep_len(0,1000)
prey[1] <- initPrey

pred <- rep_len(0,1000)
pred[1] <- initPred
#^^^ Sets aside vectors that we will use in the equation found below


#For Loops for the Voterra equation
for (t in seq(2 , 1000)) {
  prey[t] <- prey[t-1] + (r * prey[t-1]) - (a * prey[t-1] * pred[t-1])
  pred[t] <- pred[t-1] + (k * a * prey[t-1] * pred[t-1]) - (m * pred[t-1])
  if( pred[t] < 0 ) {
    pred[t] <- 0
  }
  if( prey[t] < 0){
    prey[t] <- 0
  }
}
print(pred)
print(prey)


#Plot the results of the for loop
plot(time, prey,  col = "darkmagenta")
lines(time, pred, col = "gold")




#wrapping up the lab
TimeStep <- time
PreyAbundance <- prey
PredAbundance <- pred
myResults <- c(TimeStep, PreyAbundance, PredAbundance)

write.csv(x = myResults, file = "PredPreyResults.csv")







