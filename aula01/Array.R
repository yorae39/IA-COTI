#ARRAYS

arr1 <-  array(1:24, dim = c(3, 4, 2))
arr1


arr1[, , ]

#cCOLUNAS 2 E 3 DE TODAS DIMENSÕES
arr1[, 2:3, ]

#SOMENTE A SEGUNDA LINHA DA PRIMEIRA DIMENSÃO
arr1[2, , 1]


dimnames(arr1)

dimnames(arr1) <- list(c("Baixo", "Medio", "Alto"), paste("col", 1:4, sep = ""),
                       c("Masculino", "Feminino"))

dimnames(arr1)

arr1




data("Titanic")

Titanic


dim(Titanic)


sum(Titanic)


dimnames(Titanic)


#ANÁLISES
#SOMATÓRO DA TRIPULAÇÃo

sum(Titanic[4, , ,])
sum(Titanic["Crew", , ,])

#QUANTOS SOBREVIVENTES DA TRIPULAÇÃO
sum(Titanic[4, , , 2])



#PORCENTAGEM
(sum(Titanic[4, , , 2]) / sum(Titanic[4, , ,])) * 100

r <- margin.table(Titanic, margin = 1)[4]
s <- margin.table(Titanic[, , , 2], margin = 1)[4]

r
s

t <-  s * 100 / r 

t

apply(Titanic, 1, sum)[4]

apply(Titanic[, , , 2], 1, sum)[4]

resultado <- apply(Titanic[, , , 2], 1, sum)[4] * 100 / apply(Titanic, 1, sum)[4]
resultado


#A QUANTIDADE DE CRIANÇAS SALVAS DO SEXO FEMININO

dimnames(Titanic)


apply(Titanic[, ,1 ,2 ], 2, sum)[2]

margin.table(Titanic[, , 1, 2], margin = 2)[2]


#CRIANÇAS DE AMBOS OS SEXOS
margin.table(Titanic[, , 1, ], margin = 2)


#PRIMEIRA CLASSE HOMENS QUE SE SALVARAM
apply(Titanic[,1, ,2],  1, sum)[1]


