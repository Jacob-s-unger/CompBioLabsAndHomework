###LAB 9: Parsing Data!
cam_Data <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F) #Import the data

oneDate <- cam_Data$DateTime[1] #pulls a date out of the data.frame
class(oneDate) #checks the class of that object, will see it as a character vector
as.Date(oneDate) #doesnt work lol
class(oneDate) #Still shows class as a character vector until you run the following line
oneDate = strptime('12/09/2013 16:29', format = '%d/%m/%Y %H:%M') #An instance of computer inflexibilit, you must give her all of the information possible to let her understand the format as a date rather than a character vector of jubberish
class(oneDate) #will now show the data as a POSIXlt" class, which means soemthing cool, im sure

### Now with our new found knowledge on telling the computer about dates, lets run this with the whole date string
allDates <- cam_Data$DateTime[1:14604]
print(allDates)
allDatesProperFormat = strptime(allDates, format = '%d/%m/%Y %H:%M')
print(allDatesProperFormat)

####Problem 2: finding out how many are in 2 digit year form




