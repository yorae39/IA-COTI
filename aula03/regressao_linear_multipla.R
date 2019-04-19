# REGRESSÃO MULTIPLA

data('mtcars')
fix(mtcars)


head(mtcars)
dim(mtcars)


cor(mtcars[1:4])


# REGRESSÃO LINEAR SIMPLES
modelo <- lm(mpg ~ disp, data = mtcars)
modelo



#COEFICIENTE DE DETERMINAÇÃO
summary(modelo)$r.squared


plot(mpg ~ disp, data = mtcars)
abline(modelo)



# PREVER A QTD DE MILHAS POR GALÕES
predict(modelo, data.frame(disp = 200))
head(mtcars[1:4])


# MODELO DE REGRESSÃO MULTIPLA
modelo <- lm(mpg ~ disp + cyl + hp, data = mtcars)
modelo


summary(modelo)$r.squared
summary(modelo)$adj.r.squared



predict(modelo, data.frame(disp = 200, hp = 100, cyl = 4))





