#ESTAT�STICA
dim(iris)
head(iris)

#SEPARAR OD DAOS EM DOIS CONJUNTOS 
#GERANDO 150 NUMEROS ALEAT�RIOS ENTRE 0 E 1
# EXEMPLO 1 AMOSTRAGEM
# 1 PARAMETRO CONJUNTO DE DADOS DA AMOSTRA
# 2 PARAMETRO QUANTIDADE DE DADOS A SER GERADA
# 3 COM REPOSI��O OU N�O
# 4 VETOR DE PROBABILIDADE
amostra <- sample(c(0,1), 150, replace = T, prob = c(0.5, 0.5))
amostra
View(amostra)


#N�O SER� CRIADO UM VETOR DE 50%
length(amostra[amostra == 1])
length(amostra[amostra == 0])
length(amostra)


class(amostra)

#FUN��O SET.SEED() -> MANT�M CONSTANTE O MODELO DE ALEATORIEDADE
set.seed(2345)
sample(c(100), 1)
