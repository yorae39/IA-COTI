#MATRIZES

#CRIAR UMA MATRIZ

m1 <-  matrix(1:6, nc = 3)
m1


m2 <-  matrix(10 * (1:6), nc = 3)
m2


#OPERA��ES
m1 + m2
m1 - m2
m1 * m2
m2 / m1

#PRODUTO CRUZADO
m1 ** m2

#TRANSPOSI��O
t(m1)


#TAMANHO
length(m1)


#DIMENS�ES
dim(m1)



#COLUNAS
ncol(m1)

#ELEMENTOS
m1[1, 2]

m1[2, ]


dimnames(m1)

dimnames(m1) <-  list(c("l1", "l2"), c("c1", "c2", "c3"))
m1["l1", ]
m1[1, ]



m2 <- cbind(1:5, 6:10)
m2


#SOMATORIO DE UMA DIMENS�O
margin.table(m1, margin = 1)



#APPLY -> agrega��o
apply(m1, 1, sum)


#SOMATORIO DAS COLUNAS
colSums(m1)







