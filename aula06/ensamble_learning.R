"ENSAMBLE LEARNING"
"multiplos"

#install.packages("randomForest", dependencies = T)

library(randomForest)


credito <- read.csv(file.choose(), sep = ",", header = T)
credito

head(credito)


fix(credito)


amostra = sample(2, 1000, replace = T, prob = c(0.7, 0.3))
amostra

creditotreino = credito[amostra == 1, ]
creditoteste = credito[amostra == 2, ]


dim(creditotreino)
dim(creditoteste)


floresta <- randomForest(class ~. , data = creditotreino, ntree = 100, importance = T)
floresta


varImpPlot(floresta)



previsao <- predict(floresta, creditoteste)
previsao


confusao <-  table(previsao, creditoteste$class)
confusao


taxac = (confusao[1] + confusao[4]) / sum(confusao)
taxac * 100











