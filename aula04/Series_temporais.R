# SERIES TEMPORAIS
AirPassengers

start(AirPassengers)
end(AirPassengers)

plot(AirPassengers)

subst <- window(AirPassengers, start = c(1960, 1), end = c(1960, 12))
plot(subst)


# PARTES
# Decomposição da serie temporaL
dec = decompose(AirPassengers)
dec


dec$seasonal
dec$trend
dec$random
dec$figure
dec$type


# PREVISÃO EM SERIES TEMPRAIS = EXTRAPOLAÇÃO
mean(AirPassengers)
mean(window(AirPassengers, start = c(1960, 1), end = c(1960, 12)))


#MEDIAS MÓVEIS
#install.packages("forcast")

install.packages("forecast")
library(forecast)

median <-  ma(AirPassengers, order = 12)
median


# PREVISÃO  -> FUNÇÃO FORECAST
previsao <- forecast(median, h = 12)
previsao

plot(previsao)


# ARIMA
arima = auto.arima(AirPassengers)
arima
View(arima)


previsao = forecast(arima, h = 24)
previsao
plot(previsao)








