# OUTLIERS

boxplot(iris$Sepal.Width)

boxplot(iris$Sepal.Width, outline = F)



# STATS -> EXIBIR OS OUTLIERS EM UMA COLEÇÃO
boxplot.stats(iris$Sepal.Width)$out


# PACOTE UTILIZADO PARA TRABALHAR COM OUTLIERS
# INSTALL.PACKAGE(OUTLIERS)

install.packages('outliers')
library('outliers')


outlier(iris$Sepal.Width)


outlier(iris$Sepal.Width, opposite = T)
