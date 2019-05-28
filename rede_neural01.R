# install.packages("neuralnet", dependencies = T)
library(neuralnet)

# Dados de iris
myiris = iris
head(myiris)


# Binarizar dados do iris
myiris = cBind(myiris, myiris$Species == 'setosa')

myiris = cBind(myiris, myiris$Species == 'versicolor')

myiris = cBind(myiris, myiris$Species == 'virginica')

fix(myiris)




# Alterar
names(myiris)[6] = 'setosa'
names(myiris)[7] = 'versicolor'
names(myiris)[8] = 'virginica'

View(myiris)


# Teste e treino

amostra = sample(2, 150, replace = T, prob = c(0.7, 0.3))
amostra


myiristreino = myiris[amostra == 1, ]
myiristeste = myiris[amostra == 2, ]


dim(myiristreino)
dim(myiristeste)

modelo = neuralnet(setosa + versicolor + virginica ~ 
                     Sepal.Length + Sepal.Width +
                     Petal.Length + Petal.Width,
                   myiristreino, hidden = c(5, 4))

modelo

print(modelo)
plot(modelo)




# Objeto de teste
teste = compute(modelo, myiristeste[,1:4])
teste$net.result

resultado = as.data.frame(teste$net.result)

names(resultado)[1] = 'setosa'
names(resultado)[2] = 'versicolor'
names(resultado)[3] = 'virginica'


head(resultado)

# Criar a coluna classe
resultado$class = colnames(resultado[,1:3])[max.col(resultado[,1:3], ties.method = "first")]
head(resultado)
fix(resultado)



confusao = table(resultado$class, myiristeste$Species)
confusao


sum(diag(confusao) * 100 / sum(confusao)) 









