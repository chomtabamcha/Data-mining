# caTools Contains basic utility functions:fast calculation of AUC, LogitBoost classifier, round-off-error-free sum and cumsum (cumulative sum).
#A toolkit with infrastructure for representing, summarizing, and visualizing tree-structured regression and classification models.

# AIM:- TO PERFORM THE CLASSIFICATION BY DECISION TREE USING R PROGRAMMING.

library(RWeka)
library(partykit)
library(caTools)

data("iris")
View(iris)
summary(iris)

#splitting
split = sample.split(iris, SplitRatio = 0.7)
dataTrain = subset(iris, split==TRUE)
dataTest = subset(iris, split==FALSE)

# model
m1 <- J48(Species~., dataTrain) 
summary(m1)
 
# Prediction
dataTestPred <- predict(m1, dataTest)
table_matrix <- table(dataTest$Species, dataTestPred)
print(table_matrix)

accuracy_Test <- sum(diag(table_matrix)) / sum(table_matrix)
cat("Test Accuracy is: ", accuracy_Test)

# Iris_decision_plot
plot(m1, type="simple")
