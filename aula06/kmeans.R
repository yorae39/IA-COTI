
"CRIAR UMA VARIÁVEL CLUSTER  RESULTADO DO AGRUPAMENTO"
"MEDIDAS DO ATRIBUTO"

head(iris)
summary(iris)

cluster <-  kmeans(iris[1:4], center = 3)
cluster


"MATRIZ DE CONFUSAO"
table(iris$Species, cluster$cluster)

plot(iris[1:4], col=cluster$cluster)


help("iris")





