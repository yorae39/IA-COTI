""
# install.packages("e1071", dependencies = T)
library(e1071)


cluster <-  cmeans(iris[, 1:4], center = 3)
cluster


table(cluster$cluster, iris$Species)



