# CONJUNTO DE DADOS DO R 'carros'

data('cars')
cars


dim(cars)
summary(cars)


#VERIFICAR A CORRELAÇÃO ENTRE AS VARIAVEIS
cor(cars)


# FUNÇÃO LM -> MODEL
modelo <-  lm(speed ~ dist, data = cars)
modelo


plot(modelo)



plot(speed ~ dist, data = cars)

abline(modelo)


#PREVER A VELOCIDADE DE PARARADA DO CARRO
# formula: previsao > intersecção + (declive * valorPrevisao)
modelo$coefficients[1]
modelo$coefficients[2]

#prever
modelo$coefficients[1] + modelo$coefficients[2] * 22


#FUNÇÃO predict USADA PARA EFETUAR PREVISÃO
predict(modelo, data.frame(dist = 22))












