"PACOTE -> CLUSTER"
# install.packages("cluster", dependencies = T)
library(cluster)



"BASEADO EM MEDOIDS -> PONTO RAL DE DADOS"
cluster <- pam(iris[,1:4], k = 3)
cluster



plot(cluster)




