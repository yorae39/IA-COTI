#  MACHINE LEARNING : CLASSIFCAÇÃO NA PRÁTICA CIOM NAVI BAYES

# install.packages("e1071", dependencies = T)

library(e1071)


credito <- read.csv(file.choose(), sep = ',', dec = ',', header = T)
credito
head(credito)
dim(credito)



# CLASSIFICAÇÃO DO REGISTRO
levels(credito$class)



amostra <-  sample(2, 1000, replace = T, prob = c(0.7, 0.3))

creditotreino <-  credito[ amostra == 1, ]
creditoteste <-  credito[ amostra == 2, ]



dim(crerditotreino)
dim(creditoteste)



# CRIAÇÃO DO MODELO DE PEEIDIÇÃO DO NAIVe BAYES

#formula
# conjuntyo dados

modelo <-  naiveBayes(class ~ . , creditotreino)
modelo
View(modelo)


# PREVISÃO - PREDICT
previsao <- predict(modelo, creditoteste)
previsao


# MATRIZ DE CONFUSÃO
resultado <- table(creditoteste$class, previsao)
resultado


taxaAcerto <- sum(diag(resultado) / sum(resultado))
taxaAcerto







