####### Lab 8: a continuation of function generation with added markdown!
#Making a funtion that takes 4 variables as input: "r" the intrinsic growthrate, "K" the carrying capacity, "t" total number of generations, and "ninit" which is initail population size
GrowthFunc <- function( r, K , t , ninit ){ #creates a function with 4 inputs: r, k , t, ninit
  n <- rep(ninit , t)  #pre- allocation of vectors for out data
  Time <- (1 : t)  #more pre-allocation
  for (t in 2 : t) {   #The for loop that actually runs the equation
    n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
  plot( Time, n , xlab = "time" , ylab = "Growth" , main = "Intrinsic Growth Rate of Species" , type = "l", col = "purple" )
  }
  return(cbind(Time, n) )
  }

GrowthFunc(0.4, 15000, 120, 500) #Testing of the function that we just wrote
results <- GrowthFunc(0.4, 15000, 120, 500) #Runs the test and then assigns the values to a vector called results
colnames(results) <- c( "Time" , "New Population") #Gives column names to the results
write.csv( x = results, file = "GrowthRateData.csv", row.names = FALSE) #Turns it into a csv
print(results) #prints the vector with the column names





