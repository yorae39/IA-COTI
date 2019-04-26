#REGRESSÃO LINEAR

dados <- read.csv(file.choose(), sep = ';', dec = ',', header = T)
dados

head(dados)
cor(dados)


# lm -> linear model
modelo <-  lm(vendas ~ preco, data = dados)
modelo


modelo$coefficients

previsao <- modelo$coefficients[1] + modelo$coefficients[2] * 340
round(previsao)



previsao <- predict(modelo, data.frame(preco = c(230, 450, 710, 190)))
round(previsao)











