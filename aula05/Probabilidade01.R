"AULA 05 - PROBABILIDADE"
tratamento <- read.csv(file.choose(), sep = ";", header = T)
fix(tratamento)
dim(tratamento)


boxplot(Horas ~ Remedio, data = tratamento)


an <-  aov(Horas ~ Remedio, data = tratamento)

summary(an)


an <- aov(Horas ~ Remedio * Sexo, data = tratamento)
summary(an)


"TESTE DE TUKEY"
tukey <- TukeyHSD(an)
tukey












