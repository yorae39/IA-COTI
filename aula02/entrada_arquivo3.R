#CONEXÃO COM O BANCO DE DADOS COM R


#install.package('RPostgreSQL)
#CARREGA A BIBLIOTECA
library('RPostgreSQL')


con <- dbConnect(PostgreSQL(), user = 'postgres', password = 'coti', dbname = 'aular')
con


#EXECUÇÃO
rs <- dbSendQuery(con, 'SELECT * FROM produto ORDER BY nome')
rs

#FECTH
df <- fetch(rs, n = -1)
df
View(df)


dim(df)
head(df)
dbListTables(con)



#GETQUERY
produtos <-  dbGetQuery(con, statement = 'SELECT * FROM produto ORDER BY nome')
produtos
View(produtos)




