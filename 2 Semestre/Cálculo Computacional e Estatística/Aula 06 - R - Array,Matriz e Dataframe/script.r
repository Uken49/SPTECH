# Cria uma matriz onde: (range de números, qtdLinha, qtdColuna)
matrix(valorX:valorY, nrow=5, ncol=6)

# Exibe os quartis dos elementos listados
summary(m)

# 'mean' - Retorna a média dos valores
mean(vetor)

# Cria uma matriz 
matrix(2:30, nrow=5, ncol=6)

# 'nrow' - Retorna o número de linhas, enquanto 'ncol' retorna número de colunas
nrow(m)
ncol(m)

# Retorna um array onde (qtd Linhas, qtdColunas, qtd dimensões)
array(1:20, dim =c(4,4,4))

# Cria um histograma dos dados

hist(
    data # Dados
    ,main = 'CPU' # Nome do histograma 
    ,ylab= 'Qtd de Registro' # Label do eixo Y (frequência)
    ,xlab = 'Porcentagem da CPU' #Label do eixo X
    ,freq = FALSE # Retira o label do eixo Y
    )

# Cria uma linha 
lines(
    x = density(data)
    ,col = "red" # Coloração da linha
    )

# 'data.frame': Cria uma tabela com as determinadas colunas, servindo como um comparativo
alt <-c(3,4,3,2,5,2,3,1,3,2,6,5,4,8,6,3,5,3,7,8)
luminosidade <-rep(c("muita","pouca"),each=10)

dados <- data.frame(alt, luminosidade)

# 'str': Retorna a estrutura do data frame
str(dados)

# 'class': Retorna a classe do objeto
class(dados)
class('Character')
class(23)

# Adicionando coluna no data frame 'dados'
fol<-c(19,21,18,18,16,21,23,21,25,22,9,7,6,7,12,9,12,2,9,4)
dados$fol<-fol

# Exibe o nome das colunas
names(dados)

# Trocando o nome das colunas
names(dados)<-c("altura","luz","folhas")

# Removendo coluna
dados$altura1<-NULL

# Exibindo todos os dados cuja coluna "luz" seja "muita"
subset(dados, luz == 'muita')

# Selecionando dados onde: dataframe(linha, coluna)
# dataframe[linha:linha,]: Retorna da linha 'X' até a 'Y' de todas as colunas
dados[1,]

# Cria uma vetor da linha X e da coluna Y
dados[dados$altura, 3,2]
 