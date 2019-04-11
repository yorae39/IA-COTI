#VETORES2

estados <- c("RJ", "SP", "MG")
estados


class(estados)
attributes(estados)


estadosF <-  factor(estados)
estadosF
class(estadosF)
attributes(estadosF)


pessoas <- c("Rui", "Bia", "Leo", "Nat", "Rui","Leo", "Bia", "Ana", "Leo")
pessoas


table(pessoas)



pessoasn <-  factor(pessoas, levels = c("Ana", "Rui", "Nat",  "Bia", "Leo", "Bob"))
pessoasn


table(pessoasn)


#REAGRUPAR FATOR
pessoassite <- pessoasn
levels(pessoassite)


#AGRUPA PELA REPETIÇÃO DOS RESULTADOS
levels(pessoassite) <-  c("Site", "Site", "Site", "Site", "App",  "App")
table(pessoassite)


#ORDENAÇÃO DE FATORES
grau <-  c("Medio", "Baixo", "Alto", "Baixo", "Alto", "Medio", "Alto", "Medio")


table(grau)
factor(grau, ord = T)


factor(grau, ord = T, levels = c("Baixo", "Medio", "Alto"))


ordered(grau, levels = c("Baixo", "Medio", "Alto"))


#ORDEM INVERSA
vec <-  1:10
vec
rev(vec)


#CRIAÇÃO DINÂMICA
vec <- round(rnorm(7, m = 70, sd = 10))
vec


#ORDENAR
sort(vec)

#RANK
rank(vec)


which(vec > 70)


which.max(vec)
which.min(vec)


#REMOVER -> ELEMENTOS
vec [-5]

#INTERVALO
vec[-(2:4)]




