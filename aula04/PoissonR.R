#DISTRIBUIÇÃO DE UM INTERVALO DE TEMPO
# x = 3 
# media acidentes = 2

# x = 3
dpois(3, lambda = 2)
# x <= 3
ppois(3, lambda = 2)
# x > 3
ppois(3, lambda = 2, lower.tail = F)


