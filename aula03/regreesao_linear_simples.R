# CONJUNTO DE DADOS DO R 'carros'

data('cars')
cars


dim(cars)
summary(cars)


#VERIFICAR A CORRELA��O ENTRE AS VARIAVEIS
cor(cars)


# FUN��O LM -> MODEL
modelo <-  lm(speed ~ dist, data = cars)
modelo


plot(modelo)



plot(speed ~ dist, data = cars)

abline(modelo)


#PREVER A VELOCIDADE DE PARARADA DO CARRO
# formula: previsao > intersec��o + (declive * valorPrevisao)
modelo$coefficients[1]
modelo$coefficients[2]

#prever
modelo$coefficients[1] + modelo$coefficients[2] * 22


#FUN��O predict USADA PARA EFETUAR PREVIS�O
predict(modelo, data.frame(dist = 22))












