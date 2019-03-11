## Assignment 7: Becoming comfortable in Markdown
### Making a markdown file for a function that determines intrinsic growth rate

The function that was created to determine intrinsic growth rate used the formula...
> n[t] = n[t - 1] + ( r * n[t-1] * (K - n[t-1])/K )

This being the population at time (t) is equal to the population at the previous time plus the growth rate times the population at the previous time, times carrying capacity minus the previous time step population over carrying capacity.

To utilize the formula you will need to plug in a "r",  "k", "t", and "ninit", which are respectively the growth rate of the population (r), carrying capacity of the environment (k), number of generations (t), and the initial population size (ninit).

#### Purpose?
Ideally this function can be used to make a population ecologists life a little bit easier by giving them a super easy plug-and-chug tool that will give them valuable statistics. You would most certainly utilize this function when analyzing population growth at a certain growth rate, or when you would like to see a predators growth when their growth rate is determined by prey availability. Please [refer to this video](https://www.youtube.com/watch?v=dQw4w9WgXcQ&feature=youtu.be) for other possible uses of this formula within a biological science scope.

#### In-Depth Analysis of the Function

Below is the raw code that is the function "GrowthFunc"
```
GrowthFunc <- function( r, K , t , ninit ){
  n <- rep(ninit , t) 
  Time <- (1 : t)  
 
 for (t in 2 : t) {   
    n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
  plot( Time, n , xlab = "time" , ylab = "Growth" , main = "Intrinsic Growth Rate of Species" , type = "l", col = "purple" )
  }
  return(cbind(Time, n) )
  }
```
1) The first line within the block,
>GrowthFunc <- function( r, K , t , ninit )

is assigning a function with four inputs, r, K, t, and ninit, to the name "GrowthFunc"

2. After that step, you'll see two lines of code...
> n <- rep(ninit , t) 
  Time <- (1 : t)  

These lines are responsible for pre-allocation of vectors in which that data will be stored, then called again later for graph generation.

3. Now for the meat and potatoes of the function, the for loop that executes the math.

> for (t in 2 : t) {   
    n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
  plot( Time, n , xlab = "time" , ylab = "Growth" , main = "Intrinsic Growth Rate of Species" , type = "l", col = "purple" )
  }

For "t" (determined by user, inputed into function) in 2 to "t" steps, run the intrinsic growth equation. NOTE: it is 2 to "t" steps because the "ninit" input is associated with time step "1", so you must start at the second time step to run effectively.  
Still within the for loop, you'll see the code for the plot function, plotting the pre-allocated vector that is storing the time data "Time"  in the x axis, and the pre-allocated vector storing the population size at varying time steps, "n" in the y axis. Graph will be a line graph in purple with appropriate axis labels and Main Title. The for loop then closes.

4. The last thing within the function is...
> return(cbind(Time, n) )
  }

This will then spit out the data frame from the combined vectors, Time and n (Population size).

#### Conclusion
I cant believe I actually got rick-rolled by my professor:(
