#CARREGANDO ARQUIVO DE TEXTO
ex1 <- read.table('teste.txt')
ex1


ex2 <- read.table('teste2.txt', head = TRUE)
ex2

ex3 <- read.table('teste3.csv', head = T, sep = ';', dec = ',')
ex3


class(ex3$salario)

#EXIBIR OS DADOS DOS DATAFRAMES DO R
data()

ls('package:datasets')


View(ex3)








