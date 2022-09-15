import platform # Bilioteca para saber o SO (Sistema Operacional)
import time # Para dar atraso nos comandos da aplicação
import os # Para executar comandos no shell
import psutil # Para captar dados de máquina
import pymysql # Para conectar ao Banco de Dados
import uuid as mac # Usei apenas para capturar o macAddress
import datetime # Para pegar dados do tempo atual

# Limpando console
def limparShell(clearString):
    os.system(clearString)

def cadastrarMaquina(MAC_ADDRESS, SERIAL_ID, USER):
    # Fazendo a chamada da Procedure
    sql = f"CALL stg_cadastrarMaquina('{SERIAL_ID}', '{MAC_ADDRESS}', '{USER}');"
    con.cursor().execute(sql)

    con.commit()

def cadastrarDadosMaquina(NUM_CORE, PERC_RAM, DISCO, MOMENTO, SERIAL_ID):
    # Fazendo a chamada da Procedure
    sql = f"CALL stg_cadastrarDadosMaquina({NUM_CORE}, {PERC_RAM}, {DISCO}, '{MOMENTO}', '{SERIAL_ID}');"
    con.cursor().execute(sql)

    con.commit()

# Captar os dados da máquina com o atraso
def captarDados(DELAY, MAC_ADDRESS, SERIAL_ID):
    NUM_CORE = psutil.cpu_percent(1, True)
    PERC_RAM = psutil.virtual_memory()[2]
    DISCO = psutil.disk_usage('/')[3]
    MOMENTO = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S") # Pegando o dia/hora atual
    
    numCore = 0
    for core in NUM_CORE:
        print(f'Core {numCore}: {core}')
        numCore += 1
    
    print(f'RAM: {PERC_RAM}\nDisco: {DISCO} \nMomento: {MOMENTO}\n')

    cadastrarDadosMaquina(NUM_CORE, PERC_RAM, DISCO, MOMENTO, SERIAL_ID)
    
    time.sleep(DELAY)
    captarDados(DELAY, MAC_ADDRESS, SERIAL_ID)

# Definindo o comando para limpar o terminal com base no SO
CLEAR_STRING = "cls" if platform.system() == "Windows" else "clear"
limparShell(CLEAR_STRING)

# Definindo a estrutura de acesso do Banco de Dados
SERVIDOR = "localhost"
USUARIO = "system"
SENHA = "!System_C0ntrol!"
NOME_BANCO = "dbApiPython"

con = pymysql.connect(
    host=SERVIDOR,
    user=USUARIO,
    password=SENHA,
    database=NOME_BANCO,
    cursorclass=pymysql.cursors.DictCursor)

# Captando informações da máquina do usuário
SERIAL_ID = "AE:20:30:00:10" # Pegando SerialID da placa mãe
MAC_ADDRESS = hex(mac.getnode()) # Pegando o MacAddress da máquina
USER = os.getlogin() # Pegando o nome do usuário da máquina
DELAY = 1 # Atraso na captação dos dados

print('''
    API - Monitoramento de Dados de Máquina
    
    Versão: 1.0 SNAPSHOT
    Autor: Helder Davidson Rodrigues Alvarenga\n
''')

cadastrarMaquina(MAC_ADDRESS, SERIAL_ID, USER)
captarDados(DELAY, MAC_ADDRESS, SERIAL_ID)