#REGRESSÃO LogÍSTICA
# USAR O CSV DE ELEIÇÃO

eleicao <- read.csv(file.choose(), sep = ';', dec = ',', header = T)
eleicao


fix(eleicao)
View(eleicao)



plot(eleicao$DESPESAS, eleicao$SITUACAO)
summary(eleicao)



cor(eleicao$DESPESAS, eleicao$SITUACAO)


# MODELO DE RELAÇÃO LOGISTICA
modelo <-  glm(SITUACAO ~ DESPESAS, data = eleicao, family = "binomial")
modelo


plot(eleicao$DESPESAS, eleicao$SITUACAO, col = 'red', pch = 20)
points(eleicao$DESPESAS, modelo$fitted.values, pch = 4)


# TREINAMENTO DOS DADOS
peleicao <-  read.csv(file.choose(), sep = ';', dec = ',', header = T)
peleicao
fix(peleicao)



# PREVISÃO
peleicao$RESULT = predict(modelo, newdata = peleicao, type = "response")
peleicao
fix(peleicao)


peleicao$SITUACAO = (peleicao$RESULT * 100 > 85)

fix(peleicao)

peleicao$SITUACAO = ifelse(peleicao$SITUACAO == T, 1, 0)
peleicao



fix(peleicao)









