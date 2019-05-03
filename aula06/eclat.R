
transacoes <- read.transactions(file.choose(), format = "basket", sep = ",")
transacoes


inspect(transacoes)
image(transacoes)


regras <- eclat(transacoes, parameter = list(supp = 0.1, maxlen = 15))
summary(regras)
inspect(regras)


plot(regras, method = "graph", control = list(alpha = 1,0, arrowsize = 1.0))

     