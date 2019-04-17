# AMOSTRA SITEMÁTICA
# INSTALAR EM CASA

# install.packages('TeachingSampling')
library(TeachingSampling)


amostra <- S.SY(150, 10)
amostra

amostrairis <- iris[amostra, ]
dim(amostrairis)
amostrairis





