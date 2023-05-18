# AIM:-	To perform the hierarchical clustering using R programming.

# Loading package
library(cluster)  # clustering algorithms
library(factoextra) # visualization

# Load and preprocess the dataset

df<- iris[, 1:4]
df<- na.omit(df)
df<- scale(df)

# Dissimilarity matrix/Distance Matrix (describes pairwise distinction between M objects)
d <- dist(df, method="euclidean")

# Hierarchical clustering using Complete Linkage
hc <- hclust(d, method = "complete")

# Plot the obtained dendrogram
plot(hc, cex = 0.6, hang=-1)

sub_grps<- cutree(hc, k=3)
fviz_cluster(list(data = df, cluster = sub_grps))

plot(hc, cex = 0.6, hang=-1)
# Draw rectangle around HCluster
rect.hclust(hc, k = 3, border=2:4)
