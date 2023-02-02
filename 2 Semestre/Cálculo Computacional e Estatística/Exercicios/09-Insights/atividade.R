install.packages("dplyr")
install.packages("tidyverse")
install.packages("tidyr")
install.packages("viridis")
install.packages("forcats")

# -------------------------------
# Importando bibliotecas

library(ggplot2)
library(dplyr)
library(tidyverse)
library(tidyr)
library(hrbrthemes)
library(viridis)
library(forcats)

# Box dos dados gerais
ggplot(dados, aes(x = Education, y = ApplicantIncome, fill = Education)) +
  geom_boxplot() +
  theme_gray()+
  labs(y='Renda Requerente', x= 'Graduação')

# Box dos dados dos que tem (slaoq) até 14500
dados2 <- subset(dados, ApplicantIncome < 14500)

ggplot(
  dados2
  ,aes(x = Education, y = ApplicantIncome, fill = Education)) +
  geom_boxplot() +
  theme_gray() +
  labs(y='Renda Requerente', x= 'Graduação')

# Histograma da renda do candidato
ggplot(
  dados2
  ,aes(x = ApplicantIncome)) +
  xlab("Aplicação da Renda") +
  ylab("Frequência") +
  geom_histogram(binwidth=500, fill="#69b3a2", color="#00000f", alpha=1) +
  ggtitle("Renda do Candidato")

# ----------- Renda e quantidade de dependentes
ggplot(
  dados2
 ,aes(x=ApplicantIncome, y=Dependents, fill=Dependents)) +
  xlab("Aplicação da Renda") +
  ylab("Dependentes") +
  geom_violin(trim = FALSE)

# ------------ Desisto da vida
