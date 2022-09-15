# Aluno: Helder D. R. Alvarenga RA: 03221027

import platform # Biblioteca para descobrir informações sobre SO (Sistema Operacional)
import os # Biblioteca para usar comandos do SO
from time import sleep # Biblioteca para dar atraso em comandos

# Definindo o comando para limpar o terminal com base no SO
clearString = "cls" if platform.system() == "Windows" else "clear"

def limparTerminal(): # Limpar o terminal utilizando clearString do SO compativel
    os.system(clearString)

def inserirImc(): # Usúario insere pelo terminal
    try:
        peso = float(input('Quanto você pesa em Kg? (kg)\n'))
        altura = float(input('Quanto você mede em altura?\n'))

        calcularImc(peso, altura)

    except:
        limparTerminal()
        print('Digito inválido, informe um número válido')
        inserirImc()

def calcularImc(peso, altura): # Função com 2 parâmetros
    IMC = peso/(altura**2)
    print('O seu IMC é de {:.1f}\n'.format(IMC))

    if IMC < 18.5:
        return ('Diagnóstico: Abaixo do peso normal')

    if 18.5 <= IMC <25:
        return ('Diagnóstico: peso normal')

    if 25 <= IMC <30:
        return ('Diagnóstico: sobrepeso')

    if 30 <= IMC <40:
        return ('Diagnóstico: obeso')

    if IMC >=40:
        return ('Diagnóstico: obesidade mórbida')   

def start(): # Função que roda a aplicação
    limparTerminal()

    inserirImc()

    continuar = input('Deseja continuar inserindo? (s/n)\n')

    if continuar == "s":
        
        start()
    else:
        print("Programa humildemente encerrado ;)")

start()  # Rodando a aplicação
