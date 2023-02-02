dados <- c(38946, 42420, 49191, 50430, 50557, 52580, 53595, 54135, 60181, 62076)
variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2
variancia <- mean(variacaoDados)
var(dados)
variancia
desvio <- sqrt (variancia)
sd(dados) # standard - padrão
desvio

dados<- c(12, 25, 564, 568, 801, 849, 932, 1023)
desvioMenor = mean(dados) - desvio
desvioMaior = mean(dados) + desvio

desvioMenor = sd(dados) - mean(dados)
desvioMaior = sd(dados) + mean(dados)
# ----------------------------------------------
# Valor do juros
juros<-10.00
capital<-100.00
tu<-juros/capital
tu
tp<-(juros/capital)*100
tp
# ----------------------------------------------
# Juros simples
capital<-100
juros<-10
meses<-3
js<-capital + meses*juros
js

#

capital = 1500
taxa = 1.3/100 # 1.3%
tempo = 6 # meses

# J = C * I * t
juros = capital * taxa * tempo
montante = capital + juros
#-----------------------------------
# Juros composto (hardcore)

c<-100
i<-10/100
n<-3

# M = C*(1 +i%)**n
m = c*(1+i)**n
# ----------------------------------
desPad = function(dados){ 
  variacao <- dados - mean(dados)
  variacao <- variacao ^ 2
  variancia <- mean(variacao)
  var(dados)
  variancia
  
  desvio <- sort(variancia)
  sd(dados)
  desvio
}

pop <- 2000
samp <- sample(200)

set.seed(1234)