#DATASETS dDO R
data('mtcars')

dim(mtcars)


fix(mtcars)
View(mtcars)

summary(mtcars)


help(mtcars)


#CARREGANDO DE UM XLS, XLSX
install.packages('gdata', dependencies = T)
install.packages('gtools', dependencies = T)


library('gdata')


#CAMINHO DE ONDE ESTA O ARQUIVO EXCEL
arquivo <- file.path('teste4.xlsx')
arquivo

#ABRIR PLANILHAS
sheetCount(arquivo)
sheetNames(arquivo)



clientes <- read.xls('teste4.xlsx', verbose = T, perl = 'perl', sheet = 1)
produtos <- read.xls('teste4.xlsx', verbose = T, perl = 'perl', sheet = 'produtos')
enderecos <- read.xls('teste4.xlsx', verbose = T, perl = 'perl', sheet = 3)


clientes
produtos
enderecos

View(enderecos)


clientes$nome


produtos$preco


enderecos$bairro


#TESTE COM XLS
xlsfile <- file.path(path.package('gdata'), 'xls', 'iris.xls')
irisxls <- read.xls(xlsfile)
irisxls
dim(irisxls)
head(irisxls)
sheetCount(xlsfile)









