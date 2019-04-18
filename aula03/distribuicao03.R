# DISTRIBUIÇÃO NORMAL
# DIAGRAMA DE NORMALIDADE USANDO A FUNÇÃO Rnorm()
#  CRIAR UM CONJUNTO DE DADOS COM NUMEROS NORMALEMNTE DISTRIBUIDOS

help("rnorm")


x <- rnorm(100)
x

#GERA GRAFICO
qqnorm(x)
qqline(x)


shapiro.test(x)













