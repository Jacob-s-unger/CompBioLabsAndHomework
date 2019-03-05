#Porblem 1: Writing a formula that calculates the area of a triangle when given the base and height measurments

TriArea <- function( b, h){  #The first step to making a function, must name the function something relevant to the problem
  Area <- b * h
  angleArea <- (Area * 0.5)
  return(angleArea)
}

TriArea(10,9)


#Problem 2: Creating a function that shows the absolute value of a digit that is given

myAbs <- function( x ){   #Assinging a name for our function
  for (i in 1:length(x)){  #the ith postion within whatever the length of x is
    if ( x[i] < 0){       #if that ith postion of x is less than 0 proceed to the                             next step
      x[i] <- x[i] * -1  #this step takes the information given by the previous step and multiplies it by -1, to give you absolute value
    }
  }
   return(x)  #Now that we are outside the forloop, you can use the return funtion to have the 'puter give back the information you just generated
}


#Applying Test Values to my functions called MyAbs
myAbs(5)
myAbs(-2.3)
myAbs (c( -1.1 , 2 , 0 , -4.3 , 9 , -12))



#Problem 3: The Fibonacchi Problem


#Goal: to make a function that will give you a vector containing a specified number of values from the fibonacchi series starting at a specified starting point
#This means I will need two arguments, n - the number of integers that I am asking for from the fibonacchi series, and s - which will be the starting point that I am specifiying, either 0 or 1

FibNumFunc <- function( n , s){  #The two values that you need to give, which are the value that you want the vector to be (n), and (s), which is the starting value, 1 or 0
  FibNum <- rep( 0 , n  ) #The pre-allocation step that determines the length of the vector that we will be putting our numbers into, which will be of n length
    FibNum[2] <- 1     #assigning the second number [2] of our vector with a value of 1
    FibNum[1] <- s     #assigning the first number [1] of out vector with a value of s
           
    for (i in seq(3, n)) {     #the ith value in our sequence that starts at three and runs through length n, which is specified within the function
      FibNum[i] <- FibNum[i - 1] + FibNum[i - 2] #take the ith value minus one and add it too the ith value minus 2
    }
      return(FibNum) #Return the value that you have just calculated, MAKE SURE IT IS OUT OF THE FOR LOOP PLEASE
}

FibNumFunc(12 , 0) #testing our funtion with n = 12, meaning that we want to have 12 values returned, and s = 0, meaning we are starting on value 12

#Problem 4: The Creation of various Functions


#4a:
SqrOFDif <- function( x, y ){  #a funtion that takes two inputs, x and y
  z <- x - y    #This step subrtacts y from x, therefore the order that you put them into the computer is important
  SqrTheDiff <- z^2 #squares the value from the previous problem
  return(SqrTheDiff) #returns tha value calculated into your console NOTE: if this is in a for loop, make sure that the return funtion is outside the curly brackets of the for loop, otherwise sam will come over and point out the mistake you made after you looked at if for 30 minutes feeling real special
}

SqrOFDif(3 , 5) #testing the values given withing the instructions, will return the value 4

#Now we will try the funtion that we just generated using a vector
MyVec4 <- c(2 , 4 , 6)
SqrOFDif(MyVec4, 4) #runs through each value giving the sum of squares for each one, How come this doesnt requre a for loop? ask in class on tuesday



#4b: Writing a function that will take a vector and calculate the mean of all of the points in the vector

VectorSum <- function( x, n ){     # x is the vector you want to sum and n is the length of the vector
  VS <-sum(x)
  VeSu <- VS / n
  return(VeSu)
}

MyVec4b <- c( 5, 15 , 10 ) #creating a vector
VectorSum(MyVec4b, 3)   #Running the functon just created to demonstrate it working

VectorSum(DataForLab07, 349 ) #Running the function with a provided data set



#4c: The sum of squares!
SumOfSqr <- function( x, n ){ #THis function requires 2 inputs, x for data, n for the size of the data set
  VS <- sum( x )  #Sums the data
  MeanVal <- VS / n #Finds the mean of the data
  VeSuMM <- x - MeanVal #Takes each data point and subtracts the mean value
  VeSuMMSq <- VeSuMM^2 #Squares each value within the data
  SumOfSqr <- sum(VeSuMMSq) #Sums all of the data after it has been squared
  return(SumOfSqr) #Returns that value into the console
}

SumOfSqr( DataForLab07, 349) #Returns the value 179442.4 into the console, the exact value I was looking for!







