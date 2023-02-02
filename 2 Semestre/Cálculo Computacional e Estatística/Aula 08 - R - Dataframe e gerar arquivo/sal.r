set.seed(1234)

salario <- abs(round(rnorm(n, 3368.11, 400),2 ))

pop.escolaridade <- rep(c(0, 1, 2, 3, 4, 5, 6), p)
escolaridade.temp <- sample(pop.escolaridade, n)

escolaridade <- factor(escolaridade.temp,
                levels = c(0, 1, 2, 3, 4, 5, 6),
                labels = c("Analfabeto", "1º Grau", "2º Grau", "3º Grau",
                            "Mestrado", "Doutorado", "PósDoc"),
                    ordered = TRUE)

fumante.n <- rbinom(n, 1, .40)
fumante.f <- factor(fumante.n,
levels = c(0, 1),
labels = c("não", "sim"),
ordered = TRUE)
str(fumante.f)

pop.sexo <- rep(c(1, 2), p)
set.seed(1234)
sexo.temp <- sample(pop.sexo, n)
sexo <- factor(sexo.temp,
levels = c(1, 2),
labels = c("M", "F"),
ordered = FALSE)
rm(pop.sexo, sexo.temp)
str(sexo)
summary(sexo)

pop.profissao <- rep(0:2, p)
set.seed(1234)
profissao.temp <- sample(pop.profissao, n)
profissao <- factor(profissao.temp,
levels = c(0, 1, 2),
labels = c("Humanas", "Exatas", "Biológicas"),
ordered = FALSE
)
rm(pop.profissao, profissao.temp)
str(profissao)
summary(profissao)

df <- data.frame(id = 1:n,
altura,
peso,
imc,
sexo,
escolaridade,
profissao,
fumante.f,
fumante.n,
salario,
carros,
filhos)