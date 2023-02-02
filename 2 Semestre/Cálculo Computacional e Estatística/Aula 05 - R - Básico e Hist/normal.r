n<- 20000 # Quantidade de observações
p<- 200000 # Quantidade de universo amostral

set.seed(1234)
idade <- abs(round(rnorm(n, 35, 7),0))
summary(idade)
hist(idade,
main = "Histograma da idade"
,ylab = "Frequência"
,xlab = "Idade (em anos completo)")

set.seed(1234)
altura <- abs(round(rnorm(n, 1.5, 0.1),2))
summary(altura)
hist(altura
,main = "Histograma da altura"
,ylab = "Frequência"
,xlab = "Altura (em metros)")

set.seed(1234)
peso <- abs(round(rnorm(n, 55, 4), 2))
summary(peso)
hist(peso,
main = "Histograma do peso"
,ylab = "Frequência"
,xlab = "Peso (em Kg)")

