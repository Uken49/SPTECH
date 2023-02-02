install.packages("wordcloud")
install.packages("wordcloud2")
install.packages("RColorBrewer")
install.packages("tm")

library(wordcloud)
library(wordcloud2)
library(RColorBrewer)
library(tm)

docs <- corpus(vectorSource(log_maquina$processos)
