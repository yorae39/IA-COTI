"SELEÇÃO DE ATRIBUTIOS -> SERVE PARA CRIAR MODELOS MAIS SIMPLES"

# e1071

library(e1071)


# CONJUNTO DE DADOS DE CRÉDITO
credito


# FIT -> SVM
modelo <- svm(class ~., creditotreino)
modelo



pred <- predict(modelo, creditoteste)
pred


confusao <- table(creditoteste$class, pred)
confusao



taxac01 <- (confusao[1] + confusao[4]) / sum(confusao)
taxac01


taxac01 * 100


# SELEÇÃO DE ATRIBUTOS

# install.packages("FSelector", dependencies = T)
library(FSelector)

random.forest.importance(class ~., credito)



# SELECIONAR OS ATRIBUTOS
# cHEKING_STATUS, DURATION. CREDIT_HISTORY, PUPOSE

modelo <- svm(class ~ checking_status + duration + purpose + credit_history, creditotreino)
modelo


pred2 <- predict(modelo, creditoteste)
confusao2 <- table(creditoteste$class, pred2)
confusao2


taxac02 <-  (confusao2[1] + confusao2[4]) / sum(confusao2)
taxac02 * 100


taxac01 * 100
taxac02 * 100





