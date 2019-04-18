# DISTRIBUIÇÃO NORMAL
# CALCULO DE PROBALIDADE



# PROBALIDADE DE ENCONTRAR UM OBJETO MENOS PESADO QUE 6 QUILOS
# 6 O OBJETO, MEDIA 8, DP = 2

pnorm(6, 8, 2)
pnorm(8, 8, 2)

# MAIOR QUE 6 QUILOS
pnorm(6, 8, 2, lower.tail = F)


# MAIOR QUE 10 QUILOS
pnorm(10, 8, 2, lower.tail = F)



#PROBABILIDADE MENOS DE 6 QUILOS EOU MAIS DE 10 QUILOS
pnorm(6, 8, 2) + pnorm(10, 8, 2, lower.tail = F)


#PROBABILIDADE MENOS DE 10 QUILOS EOU MAIS DE 8 QUILOS
pnorm(10, 8, 2) - pnorm(8, 8, 2, lower.tail = F)


a <- pnorm(10, 8, 2)
b <- pnorm(8, 8, 2)

r <-  a - b 
r



















