import platform # Bilioteca para saber o SO (Sistema Operacional)
import os # Para dar comandos no shell
import psutil # Para captar dados de máquina
import time # Para dar delay entre os comandos
import pymysql # Para ectar ao Banco de Dados

# Nota do Dev: O que está em CAIXA_ALTA é constante, porém o PYTHON
# não tem constantes. Logo é apenas simbolico.

# Conexão com o banco de dados
SERVIDOR = "localhost"
USUARIO = "Aluno"
SENHA = "sptech"
NOME_BANCO = "dbPython"

con = pymysql.connect(
    host=SERVIDOR,
    user=USUARIO,
    password=SENHA,
    database=NOME_BANCO,
    cursorclass=pymysql.cursors.DictCursor)

# Limpando console
def limparShell(clearString):
    os.system(clearString)

# Exibindo os dados de forma recursiva
def monitorar(DELAY):
    # Capturando os dados em um vetor
    cpu_all_dates = psutil.cpu_times()

    # Repartindo o vetor em váriaveis
    cpu_user = cpu_all_dates[0]
    cpu_nice = cpu_all_dates[1]
    cpu_system = cpu_all_dates[2]
    cpu_idle = cpu_all_dates[3]
    cpu_iowait = cpu_all_dates[4]

    print(f'''
    CPU User: {cpu_user}
    CPU Nice: {cpu_nice}
    CPU System: {cpu_system}
    CPU Idle: {cpu_idle}
    CPU Iowait: {cpu_iowait}
    ''')

    time.sleep(DELAY)
    monitorar(DELAY)

def escolherAmbiente():
    AMBIENTE = input('''
    Deseja entrar em qual ambiente:
    [1] - Desenvolvimento
    [2] - Produção
    [3] - Teste
    ''')

    if AMBIENTE == "1":
        print("Você entrou no Ambiente de Desenvolvimento")
        desenvolvimento()

    elif AMBIENTE == "2":
        print("Você entrou no Ambiente de Produção")
        producao()

    elif AMBIENTE == "3":
        print("Você entrou no Ambiente de Teste")
        teste()

    else:
        print("Escolha uma opção válida")
        escolherAmbiente()

def registarMaquina(con):
    try:
        macAdress = "aGOmon"
        nomeMaquina = "Digimon"

        with con.cursor() as c:
            # Criar a consulta e executá-la no banco
            sql = "INSERT INTO Maquina (macAdress, nomeMaquina) VALUES ({macAdress}, {nomeMaquina})"
            c.execute(sql)
    except:
        print("Houve um erro ao realizar o cadastro da máquina")

# ----------- INICIO - Ambientes -----------

def producao():
    monitorar(2)

def teste():
    monitorar(2)

def desenvolvimento():
    registarMaquina()
    monitorar(2)

# ----------- FIM - Ambientes -----------

# Definindo o comando para limpar o terminal com base no SO
CLEAR_STRING = "cls" if platform.system() == "Windows" else "clear"

print('''
    API - Monitoramento de Dados de Máquina
    
    Versão: 1.0 SNAPSHOT
    Autor: Helder Davidson Rodrigues Alvarenga\n
''')

limparShell(CLEAR_STRING)
escolherAmbiente()