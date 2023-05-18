# Perform Statistical analysis of data

library("RWeka")

N = read.arff("super_sleepers.arff")

# Print Data
print(N)

# Cat is used so that the newline characters are treated as string and not vectors
cat("\n\n\n")

# Printing first two rows from the data set
print(head(N,2))

# To find the dimensions of data set
dim(N)

# To find the names of variables (Column names) in data set
names(N)

# Show all the animals
N["animal"]

# Show Average sleep hours
N["avg_sleep_hours"]

# Show max of average sleep hours
max(N["avg_sleep_hours"])

# Show min of average sleep hours
min(avg_sleep_hours)

# Sum of average sleep hours
sum(avg_sleep_hours)

# Mean of average sleep hours
mean(avg_sleep_hours)

# Median of average sleep hours
median(sort(avg_sleep_hours))

# Standard Deviation of average sleep hours
sd(avg_sleep_hours)

# To generate a summary of data
summary(N)
