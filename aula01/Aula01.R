#AULA01 - INTRODU��O AO R - VETORES

c <- 10
c

#CRIA��O DE VETOR COM A FUN��O C
vetor <-  c(1,2,3,4,5,6,7,8,9,10)

nomes <-  c("LPA", "Floriano", "Leo", "Sodr�")

#EXECU��O
vetor
nomes

#POSICIONAL
nomes[1]

#TAMANHO DO VETOR
length(nomes)
length(vetor)

#FUN��O DE VERIFICA��O
is.vector(nomes)

#VECTOR NUMEROS
numeros <- 1:10
numeros

#FUN��O SEQ
numeros2 <- seq(0, 1, by=(0.1))
numeros2

#CONCATENA��O
c("a", numeros)


#OPERA��ES
operacao <-  c(10, 20, 30, 40)
operacao + 3
operacao - 3
operacao * 3
operacao / 3


#fFUN��O
round(operacao / 3)



#VETOR DE ELEMENTOS REPETIDOS
repetidos <- rep(1, 5)
repetidos


repetidos <-  rep(c(1,2), c(3, 4))
repetidos


#FUN��O - MAIS UTILIZADA PARA CRIAR VETORES DE CARACTERES
n <- c("Andrea", "Nathalia", "Thalita")
paste(n, 1:3)
paste("Maria", 2)


rep(paste("T", 1:3, sep=""), c(4,4,3))







