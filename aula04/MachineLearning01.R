#  MACHINE LEARNING : CLASSIFCA��O NA PR�TICA CIOM NAVI BAYES

# install.packages("e1071", dependencies = T)

library(e1071)


credito <- read.csv(file.choose(), sep = ',', dec = ',', header = T)
credito
head(credito)
dim(credito)



# CLASSIFICA��O DO REGISTRO
levels(credito$class)



amostra <-  sample(2, 1000, replace = T, prob = c(0.7, 0.3))

creditotreino <-  credito[ amostra == 1, ]
creditoteste <-  credito[ amostra == 2, ]



dim(crerditotreino)
dim(creditoteste)



# CRIA��O DO MODELO DE PEEIDI��O DO NAIVe BAYES

#formula
# conjuntyo dados

modelo <-  naiveBayes(class ~ . , creditotreino)
modelo
View(modelo)


# PREVIS�O - PREDICT
previsao <- predict(modelo, creditoteste)
previsao


# MATRIZ DE CONFUS�O
resultado <- table(creditoteste$class, previsao)
resultado


taxaAcerto <- sum(diag(resultado) / sum(resultado))
taxaAcerto







