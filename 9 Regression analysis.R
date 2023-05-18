#Aim:- Study of regression analysis using R Programming

# Generate random IQ values with mean = 30 and sd =2
IQ <- rnorm(40, 30, 2)

# Sorting IQ level in ascending order
IQ <- sort(IQ)
IQ

# Generate vector with pass and fail values of 40 students
result <- c(0, 0, 0, 1, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 1, 1, 0, 0, 1, 0,
            0, 0, 1, 0, 0, 1, 1, 0, 1, 1,
            1, 1, 1, 0, 1, 1, 1, 1, 0, 1)

# Data Frame
df <- as.data.frame(cbind(IQ, result))
print(df)

# Plotting IQ on x-axis and result on y-axis
plot(IQ, result, xlab = "IQ Level",ylab = "Probability of Passing")

# Create a Linear regression model
lrm <- lm(result ~ IQ)
summary(lrm)

# Create a logistic regression model #glm(Generalized Linear Models)
g = glm(result~IQ, family=binomial, df)
summary(g)

# Create a curve based on prediction using the regression model
curve(predict(g, data.frame(IQ=x), type="resp"), add=TRUE)


