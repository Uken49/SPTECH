cities <- c('Bahia','São Paulo','Americana')
cities
for(i in cities){
  print(i)
}

# ------------------------------
mymat <- matrix(nrow=30, ncol=30)
mymat

for(i in 1:dim(mymat)[1]) {
  for(j in 1:dim(mymat)[2]) {
    mymat[i,j] = i*j
  }
}
mymat[1:20, 1:20]

plot(mymat)
barplot(mymat, main="matrix empilhada", horiz=FALSE)
# ------------------------------

pilhamaior<-sum(mymat[30,] )
pilhamaior

pilhamenor<-sum(mymat[10,] )
pilhamenor

hist(mymat)
curve(x+0, from = -10, to = 10, main = "x")
# ------------------------------
i <- 1
while (i < 6) {
  print (i)
  i = i+1
}

# ------------------------------
# Repete o que está no código, só para se tiver algum break
repeat{
  print("infinito")
}

# O 'next' pula os comandos abaixo dele e reinicia o vetor
x <- 1:5
for (val in x) {
  if (val == 1) {
    next
  }
  print(val)
  break
}

# ------------------------------
# Dividindo a cartesiana em 5 linhas e 2 colunas com 2 gráficos por linha
par(mfrow=c(5,2), mar=c(2,2,2,2))

# Função de 1º grau. Com a = 0
curve(x+0, from = -10, to = 10, main = "x")

# Função módulo
curve(abs(x), from = -10, to = 10, main = "|x|")

# Função segundo grau ou quadrática
curve(x^2, from = -10, to = 10, main = "x^2")

# Função cúbica
curve(x^3, from = -10, to = 10, main = "x^3")

# Função quarta
curve(x^4, from = -10, to = 10, main = "x^4")

# Função quíntupla
curve(x^5, from = -10, to = 10, main = "x^5")

# Função raiz quadrada
curve(x^(1/2), from = -10, to = 10, main = "x^(1/2)")

# Função racional cujo limite tende a 1
curve(x^(1/3), from = -10, to = 10, main = "x^(1/3)")

# Função raiz cúbica
curve(1/x, from = -10, to = 10, main = "1/x")

# Função racional ou função recíproco
curve(1/(x^2), from = -10, to = 10, main = "1/(x^2)")
# ------------------------------