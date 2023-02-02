set.seed(20)
notas <- data.frame(
    Matricula = sample(
        x = 011475:012990
        , size = 30
        , replace = FALSE)

    ,ac1 = sample(
        x = 1:10
        , size = 30
        , replace = TRUE)

    ,ac2 = sample(
        x = 1:10
        , size = 30
        , replace = TRUE),

    prova_final= sample(
        x = 1:10
        , size = 30
        , replace = TRUE))

p1 = 2
p2 = 2
p3 = 3
media = (notas$ac1 * p1 + notas$ac2 * p2 + notas$prova_final * p3)/(p1+p2+p3)

alunos_aprovados <- subset(notas, (media => 7))
alunos_aprovados$media <- (media => 7)

hist(
    alunos_aprovados$media # Dados
    ,main = 'Alunos Aprovados' # Nome do histograma 
    ,ylab= 'Qtd de Registro' # Label do eixo Y (frequência)
    ,xlab = 'Porcentagem da CPU' #Label do eixo X
    ,label = TRUE
)
