#DATA FRAME - AULA 02 - 16/04/2019
d1 <- data.frame(x = 1:10, y = c(51, 54, 61, 67, 68, 75, 77, 75, 80, 82))

#NOMES
names(d1)
class(d1)

#TIPO
d1$x
d1$y


#PLOTANDO OS DADOS DO DATAFRAME
plot(d1)
plot(d1$x, d1$y)





