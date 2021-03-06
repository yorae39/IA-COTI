# REGRESS�O MULTIPLA

data('mtcars')
fix(mtcars)


head(mtcars)
dim(mtcars)


cor(mtcars[1:4])


# REGRESS�O LINEAR SIMPLES
modelo <- lm(mpg ~ disp, data = mtcars)
modelo



#COEFICIENTE DE DETERMINA��O
summary(modelo)$r.squared


plot(mpg ~ disp, data = mtcars)
abline(modelo)



# PREVER A QTD DE MILHAS POR GAL�ES
predict(modelo, data.frame(disp = 200))
head(mtcars[1:4])


# MODELO DE REGRESS�O MULTIPLA
modelo <- lm(mpg ~ disp + cyl + hp, data = mtcars)
modelo


summary(modelo)$r.squared
summary(modelo)$adj.r.squared



predict(modelo, data.frame(disp = 200, hp = 100, cyl = 4))





