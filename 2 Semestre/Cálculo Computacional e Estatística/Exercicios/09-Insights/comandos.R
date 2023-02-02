# Instalando biblioteca
install.packages("devtools")
install.packages("tidyverse")

# Comando para usar o modelo de regressão linear
lm()
# ----------------------

# Utilizando biblioteca
library("ggplot2")

dados<-data.frame(tempo=c(96,92,106,100,98,104,110,101,116,106,109,100,112,105,118,108,113,112,
                          127,117),idade = c(20,20,20,20,25,25,25,25,30,30,30,30,35,35,35,35,40,40,40,40))
dados

ggplot(dados, aes(x = idade, y =tempo)) + geom_point()

modelo <-lm(data = dados, formula = tempo ~idade)
modelo$coefficients
summary(modelo)
plot(modelo)

ggplot(dados, aes(x = idade, y=tempo)) +
 geom_point()+
 geom_smooth(method =lm, se = FALSE)

predict(modelo)

valor_aj<-predict(modelo)
valor_aj

valor_aj<-data.frame(predict(modelo))
valor_aj

dados$id<-(c(1:20))

library(dplyr)
dados<-dados %>% select(id, tempo ,idade)
dados

valor_aj$id<-(c(1:20))

valor_aj<-valor_aj %>% select(id,predict.modelo.)

valor_aj$calculado<-80.5 +0.9*dados$idade
valor_aj
plot(valor_aj)

dados1_model<-merge(dados,valor_aj)
dados1_model

ggplot(dados1_model,aes(x=idade,y=calculado)) +
  geom_point() +
  geom_smooth(method = lm,se = FALSE)

par(mfrow = c(2,2))
plot(modelo, which=c(1:4),pch=20)

# --------------------------------------------------
View(loan)
colnames(loan)

loanteste1 = loan %>%
    select(Loan_Status, LoanAmount, Credit_History, Gender, ApplicantIncome, Loan_Amount_Term)
loanteste1

sapply(loanteste1 , function(x) sum(is.na(x)))

# Tirando NA
loanteste2 = loanteste1 %>%
  filter(!is.na(Loan_Amount_Term),
          !is.na(LoanAmount),
          !is.na(Credit_History))
loanteste2

# Outra forma de tirar NA
loan1<-na.omit(loan)

sapply(loan1 , function(x) sum(is.na(x)))

# To entendendo nadakkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
loanteste2 %>%
   count(Loan_Status) %>%
   ggplot(aes(x = reorder(Loan_Status , desc(n)), y = n , fill = n )) +
   geom_col() +
   coord_flip() +
   labs(x = 'Status Empréstimo', y = 'Count')

ggplot(loan, aes(x = Education, y = ApplicantIncome, fill = Education)) +
   geom_boxplot() +
   theme_gray()+
   labs(y='Renda Requerente', x= 'Graduação')

loanteste3 = loan %>% select(Loan_Status, LoanAmount,Credit_History,
                           Gender, ApplicantIncome,Loan_Amount_Term, Education)
loanteste3

loansubset1<-na.omit(loanteste3)
loansubset1
summary(loansubset1)

loansubset2<-loansubset1[loansubset1$ApplicantIncome>80000,]
loansubset2

# Só estou dropando comando, pois já estou confuson KKKKKKKKK
summary(loansubset1)
loansubset1$id<-c(1:529)
loansubset1

View(loansubset1)
loanremove<-loansubset1[-352,]
summary(loanremove)

loansubset2<-loansubset1[loansubset1$ApplicantIncome>40000,]
loansubset2

loanremove1<-loansubset1[-352,]
loanremove2<-loanremove1[-285,]
loanremove3<-loanremove2[-144,]  

ggplot(loanremove3, aes(x = Education, y = ApplicantIncome, fill = Education)) +
  geom_boxplot() +
  theme_gray()+
  labs(y='Renda Requerente', x= 'Graduação')

# -----------------------------------------------
ggplot(dados, aes(x = Education, y = ApplicantIncome, fill = Education)) +
  geom_boxplot() +
  theme_gray()+
  labs(y='Renda Requerente', x= 'Graduação')

dados29999 <- subset(dados, ApplicantIncome < 30000)
dados10000NG <- subset(dados, Education == "Not Graduate" || ApplicantIncome > 1000)

dados2 <- subset(dados, (ApplicantIncome < 30000) && (ApplicantIncome < 15000 && Education == "Not Graduate")) 
View(dados10000NG)
dados2
