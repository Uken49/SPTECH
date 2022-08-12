import platform # Biblioteca para descobrir informações sobre SO (Sistema Operacional)
import os # Biblioteca para usar comandos do SO
from time import sleep # Biblioteca para dar atraso em comandos

# Definindo o comando para limpar o terminal com base no SO
clearString = "cls" if platform.system() == "Windows" else "clear"

def limparTerminal(): # Limpar o terminal utilizando clearString do SO compativel
    os.system(clearString)

def escolherAmbiente(): # Optar por conectar ou não no banco de dados
    limparTerminal()
    ambiente = input('''
    API: Cálculo do IMC
    Versão: 1.0 Snapshot
    Autor: Helder D. R. Alvarenga
    Curso: 1CCO - 2° Semestre

    Deseja entrar em qual ambiente:
    1) Desenvolvimento
    2) Teste
    ''')

    if ambiente == "1": # Desenvolvimento
        return print('''
            Você está no ambiente de Desenvolvimento

            Os dados serão gravados no banco de dados\n
            ''')

    if ambiente == "2": # Teste
        return print('''
            Você está no ambiente de Testes

            Os dados serão gravados no arquivo bdUsuarioPython.sql\n
            ''')

    print("Escolha uma opção de ambiente válido")
    escolherAmbiente()

def entrar(email, senha):
    nome = input('Insira seu email:\n')
    senha = input('Insira sua senha:\n')

def cadastrar(email, senha, nome, sexo, altura, peso): # Função que conecta com o banco de dados
    nome = input('Informe seu nome completo:\n')
    sexo = input('''
    Informe seu sexo:
    f - Feminino
    m - Masculino

    obs: Sexo != Gênero
    ''')

    if sexo !='f' or sexo != 'm':
        print('Sério?')

    email = input('Insira o seu email:\n')
    senha = input('Crie uma senha (ela deve haver ao menos 6 digitos):\n')
    if senha.length < 6 :
        print('Sério?')

    # Enviando para o banco de dados
    entrar(email, senha)

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

    sqlInsert = open("bdUsuarioPython.sql","a")
    sqlInsert.write("\nINSERT INTO Imc (imc) VALUES (altura, peso, fkUsuario)")

    continuar = input('Deseja continuar inserindo? (s/n)')

    if continuar == "s":
        inserirImc()
    
    return print("Programa encerrado com exito.")


escolherAmbiente()  # Escolhendo o ambiente
start()  # Rodando a aplicação
