# install pacote tm

# install.packages("tm", dependencies = T)

library(tm)

# Fonte de txtos disponiveis no pacote tm
getSources()


# formatos
getReaders()


# Criação do vcorpus -> memoria
# Caminho, encoding, tipo de leitura de arquivo
# Linguagem do arquvio esperado

corpus = VCorpus(DirSource("C://Arquivos", encoding = "UTF-8"),
                 readerControl = list(reader = readPlain, languge = "eng"))


# Resumo Corpus
inspect(corpus[1:100])


#Tamanho
length(corpus)


# Metadados corpus
meta(corpus)


# Lendo o arquivo
as.character(corpus[[2]])[1]



# Geração da nuvem de palavras

# stopwords -> (palavras sem valor semantico)
stopwords('portuguese')



# remover stopwords
corpus = tm_map(corpus, removeWords, stopwords("english"))


# remover espaços
corpus = tm_map(corpus, stripWhitespace)


# remover pontuação
corpus = tm_map(corpus, removePunctuation)


# Remover numeros
corpus = tm_map(corpus, removeNumbers)





# Criação da nuvem de palavras
# Intstalar o pacote wordcloud
install.packages("wordcloud", dependencies = T)
install.packages("RColorsBrewer")


library(wordcloud)


wordcloud(corpus, max.words = 100, random.order = TRUE,
          colors = rainbow(8), rot.per = 0.5, use.r.layout = T)

freq = TermDocumentMatrix(corpus)

# Transforma numa matrix
matriz = as.matrix(freq)
matriz


# ordenando a matrix de termos frequentes
matriz = sort( rowSums(matriz),  decreasing = T)
dt_freq = data.frame(word = names(matriz), freq = matriz)

dt_freq
View(dt_freq)



 

















