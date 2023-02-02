pop_sol_cred<-10000
set.seed(999)
n<-6048
bom.n<-rbinom(n, 1, .85)
bom.n

table(bom.n)
str(bom.n)
mean(bom.n)
class_pg <- factor(bom.n
                   ,levels=c(0,1)
                   ,labels=c("mau","bom")
                   ,ordered=TRUE)
str(class_pg)
class_pg

summary(class_pg)
table(class_pg)

data.default <- data.frame(class_pg)
data.default<-data.frame(id=1:2,data.default)
data.default

tail(data.default)
head(data.default)

data.default <- data.frame(table(class_pg))
data.default

colnames(data.default)[2] <- "Freq_absoluta"
data.default

Freq_relativa <-round(data.default$Freq_absoluta/sum(data.default$Freq_absoluta)*100,2)
Freq_relativa<-data.frame(id=1:2,Freq_relativa)
Freq_relativa

table_padrao<-data.frame(merge(data.default,Freq_relativa))
table_padrao

barplot(
  table_padrao$Freq_relativa
  ,xlab= "Tipo de Tomador Crédito"
  ,ylab="Frequência_Relativa"
  ,col=c("seagreen", "yellowgreen"))

table_padrao

prop.table(table(class_pg))

barplot(
  prop.table(table(class_pg))
  ,xlab="Tipo de tomador de crédito"
  ,ylab="Frequência Absoluta"
  ,col=c("red","blue"))

#----------------------------
set.seed(999)

sal <- abs(round(rnorm(n, 3100, 600),2))
summary(sal)
plot(sal)

idade <- abs(round(rnorm(n, 40, 5),0))
summary(idade)
plot(idade)

pagadores <- data.frame(sal, idade)

pagadores
for (pagadores in sal) {
    if(sal < 1451.0){
      classe <- "bom"
    }else{
      classe <- "mau"
    }
  pagadores <- classe
  }

pagadores$class_pg <-

pagadores$sal


View(pagadores)


pagadores <- class_pg

table_padrao<-data.frame(merge(data.default,Freq_relativa))
