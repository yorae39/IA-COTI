"MACHINE LEARNING"
# install.packages("mlbench")
library(mlbench)

??mlbench
library('rpart')

"DATASET PARA REGRESSÃO"
data("BostonHousing")
help("BostonHousing")


dados <- BostonHousing
dim(dados)

amostra <- sample(2, 506, replace = T, prob = c(0.7, 0.3))
amostra


dadostreino <- dados[amostra == 1, ]
dadosteste <- dados[amostra == 2, ]


dim(dadostreino)
dim(dadosteste)


dados
head(dados$medv, 10)



fit <-  rpart(medv ~ ., data = dadostreino, method = "anova")
plot(fit)
text(fit, use.n = T, all = T, cex = 0.8)



prev <- predict(fit, newdata = dadosteste)
prev


r <- cbind(dadosteste, prev)
fix(r)


# COLUNA COM A DIFERENÇA
r$dif <- abs(r$medv - r$prev)
fix(r)


max(r$dif)
min(r$dif)


median(r$dif)
mean(r$dif)


# MEDIA
media <-  mean(r$dif) * 1.3
media


porc <- (sum(r$dif <= media) * 100) / dim(r)[1]
round(porc)



























