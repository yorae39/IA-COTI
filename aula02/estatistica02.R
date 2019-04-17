# GERAÇÃO DA AMOSTRA ESTRATIFICADA
# CONJUNTO DE DADOS IRIS IRÃO ANALISAR O ATRIBUTO ESPECIES
# GERAR AMOSTRAS DE TAMANHO FIXO. ESCOLHIDOS ALEATORIAMENTE


# SUMARY -> COMO PARA DESCREVER O CONJUNTO DE DADOS
summary(iris)
#install.packages('sampling')


library(sampling)


amostrairis <- strata(iris, c('Species'), size = c(25, 25, 25), method = 'srswor')
summary(amostrairis)
View(amostrairis)


help("strata")


#DADOS COM VARIÁVEIS CATEGÓRICAS COM DISTRIBUIÇÕES DIFERENTES
#VENDEDORES a : 100, b : 2000, c: 300 -->  50%
# CONJUNTO DE DADOS INSTALADO NO R SOBRE INFERTILIDADES
summary(infert)


dim(infert)

#AMOSTRA COM 100 REGISTROS

round(120 / 248 * 100)
round(116 / 248 * 100)
round(12 /  248 * 100)



amostra <- strata(infert, c('education'), size = c(5, 48, 47), method = 'srswor')

summary(amostra)
dim(amostra)













