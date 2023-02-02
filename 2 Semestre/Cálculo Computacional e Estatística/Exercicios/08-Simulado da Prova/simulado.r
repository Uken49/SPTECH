# Q1:
# Solução 1 - Mais apropriada, pois permite uma melhor visualização dos dados
matrix(1:9, nrow=3, ncol=3)

# Solução 2
matrix(1:9, nrow=1, ncol=9)

# Solução 3
matrix(1:9, nrow=9, ncol=1)
#--------------------------------------

# byrow indica se a matriz será preenchida por linhas ou colunas. O padrão é F ou FALSE (por colunas).
# Código A
Mymat0A <- matrix(c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14), nrow=3, ncol=5, byrow =TRUE)
#Código B
Mymat0B <- matrix(c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14), nrow=3, ncol=5, byrow =FALSE)

# Como os valores foram definidos, acabou que: Matriz0A se preencheu por linha e Matriz0B por coluna
Mymat0A
Mymat0B
#--------------------------------------

#M6
Matriz6 <- matrix(c(2,3,5,6), nrow=2, ncol=2)
Matriz6

#M7
Matriz7 <- matrix(c(5,3,8,2), nrow=2, ncol=2)
Matriz7

#M8
Matriz8 <- matrix(c(2,4,5,2,0,1), nrow=2, ncol=3)
Matriz6

#M9
vet <- c(1, 0.5, 0.3, 0.5, 1, 0.9, 0.3, 0.9, 1)
Matriz9 <- matrix(vet, nrow=3, ncol=3)
Matriz9
#--------------------------------------
A = 3 + 5*8/2^2
A
B = (3 + 5) *8/(2^2)
B
#--------------------------------------
res <- 30 - ((6^2) / (2*3))
# 30 - (36 / 6)
# 30 - 6
# res = 24
res
#--------------------------------------
x <- 3 # X recebe 3
y <- 4 # Y recebe 4
x <- x + 2*y # X recebe (3 + 2*4)
x <- 20 # X recebe 20
x # Valor final: 20
#--------------------------------------
x = 6
class(x)
#--------------------------------------
x <- c(2, 4, 5, 6)
y <- c(-3, -2, 0, 7)
cbind(x,y)
#--------------------------------------
vetClassesDistintas <- c("SP", 1, "RJ", 2)
vetClassesDistintas

class(vetClassesDistintas)
#--------------------------------------
x <- c(4, 6, 8, 9, 12, 3, 2) 
x [x!= 9] = 0
x
#--------------------------------------
x <- 1:12

matrix(x, ncol=4) # A
matrix(x, nrow = 3) # B
matrix(x, ncol=4, byrow = TRUE) # C
matrix(x) # D
matrix(x, nrow = 4) # E
matrix(x, ncol = 3) # F
#--------------------------------------
x = matrix(1:12 , ncol = 4)

x [2,3] = 8 # A
x [2,3] = 6 # B
x [1,] = (1, 2, 3, 4) # C
x [1,] = (1, 4, 7, 10) # D
x [c (1,3), 3] = (7, 9) # E
x [1, c (2,3)] = (1, 2, 3) # F
#--------------------------------------

#--------------------------------------

#--------------------------------------

#--------------------------------------

#--------------------------------------
