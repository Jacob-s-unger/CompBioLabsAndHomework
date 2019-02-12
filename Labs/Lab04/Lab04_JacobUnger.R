#Lab 04: For Loops


#Problem 1: Writing a for loop to print "Hi" 10 times
x <- "hi" #Specifies what value os going into our for loop
for (i in seq(1,10)) {
  print(x)
}


#Question 2:Tim currently has $10 Dollars in his savings account.Each week his parents give him an allowance of $5.  Each week he also buys 2 packs of gum.  If the packs of gum cost $1.34 each (with tax included), how much money will Tim have in total eight weeks from now?  
Savings <- 10 #Specify the initial ammount
Allowance <- 5 #The amount Tim gets each week 
WeeklyGumBudget <- 1.34*2 #How much tim spends on gum each week
for ( i in seq(1,8)) {
  Savings <- Savings + Allowance - WeeklyGumBudget
  print(Savings)
} #Says that in a sequence of 8, you take your savings and add the allowance and then subrtact the weekly gum budget

#Question 3: A conservation biologist estimates that, under current conditions, a population she is studying will shrink by 5% each year.  Suppose the current population size is 2000 individuals.  What is the expected population size each year for the next seven years?  Write a for loop that calculates it and prints each year’s size to the console.
CurrentPop <- 2000 #Specifies the starting point for the for loop
Decline <- (CurrentPop * .05) #Gives the rate of decline in the population
for (i in seq(1,7)) {
  CurrentPop <- CurrentPop - Decline
  print(CurrentPop)
} # For loop takes the current population, applies the 5% decline rate every year for 7 years and then prints the information


#Question 4: Here is the discrete-time logistic growth equation, used in many models of population abundance over time:
# `n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )`
#where `n[t]` is the abundance of the population at time `t`, `n[t – 1]` is the abundance of the population in the previous time step, `r` is the intrinsic growth rate of the population, and `K` is the environmental carrying capacity for the population.  Suppose that right now is time 1 (i.e., the current time step is `t = 1`).  **If `n[1] = 2500, K = 10000, and r = 0.8`, then what do you predict for the value of `n[12]`?**  Write a for loop that answers this question and that also prints out the abundance of the population each time step.
n <- 2500
K <- 10000
r <- 0.8
t <- 2
for (t in seq( 2 , 12)) {
  n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
  print(n[t])
}
#Store time and abundance to then create graph (plot(time, abundance))
abundance <- c(4000, 5920, 7852.288, 9201.444, 9789.274, 9954.302, 9990.693, 9998.132, 9999.626, 9999.925, 9999.985)
time <- 1:11
#These are the values from the previous question, plotted down below in a line graph
plot(time, abundance, type = "l")

################# PART II #####################
# Practice writing “for loops” AND practice storing the data produced by your loops in arrays. #


#Question 5a
vector <- rep(0,18) #Creates a vector with 0, in 18 places
print(vector) #Prints the vector that we just created

#Question 5b
for ( i in seq(1,18) ){
  vector[i] <- 3 * i
}

#Question 5c
vector2 <- c(1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0) #Makes a vector with 18 places, the first place being 1 and the other 17 places being 0
print(vector2) #Prints teh vector we just made

#Question 5D: Write a for loop so that starting with the second entry of the vector created in part c, the value stored in that position in the vector is equal to one plus twice the value of the previous entry (i.e., 1 + (2 * previous entry) ).

for (i in seq(2,18)) {
  vector2[i] <- 1 + (2 * (vector2[i - 1]))
}
 print(vector2)


#Question 6: Using a for loop to calculate the first 20 digits of the Fibonacci series starting at 0
vector3 <- c(0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0) #Creates the vecotr in which the fibonacci series will be stored

for (i in seq(3,20)) {
  vector3[i] <- ((vector3[i - 1]) + (vector3[i - 2]))
}
print(vector3)
 
#The for loop above generates the fibonacci series into vector three starting at 0.


