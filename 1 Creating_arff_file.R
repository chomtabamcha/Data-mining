#Attribute Relation File format
#An ASCII text file that describes a list of instances sharing set of attributes.
#Developed with the Weka machine learning software.




#Aim:Demonstration of an .arff file using student data.

# Loading library
library(RWeka)

# Setting Working Directory
setwd("G:\\R")

# Checking Working Directory
getwd()

# Creating Data frame
rating <- 1:4
animal <- c('koala', 'hedgehog', 'sloth', 'panda')
country <- c('Australia', 'Italy', 'Peru', 'China')
avg_sleep_hours <- c(21, 18, 17, 10)

# Make sure to set stringAsFactors to FALSE
#so that string values are stored as characters and not vectors

super_sleepers <- data.frame(rating, animal, country, avg_sleep_hours)
print(super_sleepers)

# Checking data type
print(class(super_sleepers))

# Structure of dataframe super_sleepers
print(str(super_sleepers))

write.arff(super_sleepers, file="super_sleepers.arff")


# Package allows creation of objects, calling methods and accessing fields of the objects. 
# rjava provides functionality to include our java resources into R packages easily.
