"REGRAS DE ASSOCIAÇÃO COM APRIORI"
# install.packages("arules")

library(arules)

transacoes <- read.transactions(file.choose(), format = "basket", sep = ",")
transacoes
inspect(transacoes)
image(transacoes)


regras <- apriori(transacoes, parameter = list(sup = 0.2, conf = 0.2))
regras


summary(regras)
inspect(regras)


install.packages("arulesViz", dependencies = T)


library(arulesViz)


plot(regras, method = "graph", control = list(type="items"))




