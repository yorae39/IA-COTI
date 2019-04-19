# LINEAR SIMPLES
modelo <-  lm(speed ~ dist, data = cars)
modelo
summary(modelo)


modelo$coefficients

modelo$residuals


# O CALCULO DO RESIDUAL MONTA A LINHA DE MELHOR DE AJUSTE - fitted.values
plot(modelo$fitted.values, cars$dist)











