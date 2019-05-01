"APRENDIZADO BASEADO EM INSTANCIA"
"NESTE APRENDIZADO ELE NÃO CRIA UM MODELO"
"VAMOS USAR O KNN -> CLASSIFICAÇÃO"

# install.packages("class", dependencies = T)
library(class)

# CRIAÇÃO DA AMOSTRA
# NESTE TIPO DE TREINAMENTO CRIAMOS DUAS AMOSTRAS
amostra <- sample(2, 150, replace = T, prob = c(0.7, 0.3))
iristreino <- iris[amostra == 1, ]
iristeste <- iris[amostra == 2, ]

classificar = iristeste
dim(iristreino)
dim(iristeste)


head(iristreino)
levels(iris$Species)


previsao <- knn(iristreino[,1:4], classificar[,1:4], iristreino[,5], k = 3)
previsao


confusao <- table(classificar[,5], previsao)
confusao


taxac <- (confusao[1] + confusao[5] + confusao[9]) / sum(confusao)
taxac * 100


taxac <-  sum(diag(confusao)) / sum(confusao)
taxac






