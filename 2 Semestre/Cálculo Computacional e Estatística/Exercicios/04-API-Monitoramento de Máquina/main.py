import platform # Biblioteca para saber o SO (Sistema Operacional)
import sys
import time # Para dar atraso nos comandos da aplicação
import os # Para executar comandos no shell
import psutil # Para captar dados de máquina
import pymysql # Para conectar ao Banco de Dados
import uuid as mac # Usei apenas para capturar o macAddress
import distro # Captar a distribuição do Linux

# Limpando console
def limparShell(clearString):
    os.system(clearString)

def cadastrarMaquina(
    KERNEL, DIST_NOME, VERSAO, ROOTNAME, MAC_ADDRESS
    , CPU_PERC, CPU_TEMP, CORE, DISCO_PERC, RAM_PERC
    ):
    # Fazendo a chamada da Procedure
    print(f"CALL stg_cadastrarMaquina('{KERNEL}', '{DIST_NOME}', '{VERSAO}', '{ROOTNAME}', '{MAC_ADDRESS}', {CPU_PERC}, {CPU_TEMP}, '{CORE}', {DISCO_PERC}, {RAM_PERC})")
    # sql = f"CALL stg_cadastrarMaquina('{KERNEL}', '{DIST_NOME}', '{VERSAO}', '{ROOTNAME}', '{MAC_ADDRESS}', {CPU_PERC}, {CPU_TEMP}, '{CORE}', {DISCO_PERC}, {RAM_PERC});"

    con.cursor().execute(sql)
    con.commit()

def captarTopologiaMaquina(DELAY):
    KERNEL = platform.system()
    DIST_NOME = distro.name()
    VERSAO = distro.version()
    ROOTNAME = os.getlogin() # Pegando o nome do usuário da máquina
    MAC_ADDRESS = hex(mac.getnode()) # Pegando o MacAddress da máquina

    captarDados(DELAY, KERNEL, MAC_ADDRESS, ROOTNAME)

# Captar os dados da máquina com o atraso
def captarDados(DELAY, KERNEL, MAC_ADDRESS, ROOTNAME):
    CPU_PERC = '20.2'
    CPU_TEMP = '20.1'
    CORE = psutil.cpu_percent(1, True)
    DISCO_PERC = psutil.disk_usage('/')[3]
    RAM_PERC = psutil.virtual_memory()[2]
    
    numCore = 0
    for core in CORE:
        print(f'Core {numCore}: {core}')
        numCore += 1
    
    print(f'RAM_PERC: {RAM_PERC}\nDISCO_PERC: {DISCO_PERC}')

    cadastrarMaquina(KERNEL, DIST_NOME, VERSAO, ROOTNAME, MAC_ADDRESS, CPU_PERC, CPU_TEMP, CORE, DISCO_PERC, RAM_PERC)
        
    time.sleep(DELAY)
    captarDados(DELAY, KERNEL, MAC_ADDRESS, ROOTNAME)

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

print('''
    API - Monitoramento de Dados de Máquina
    
    Versão: 1.0 SNAPSHOT
    Autor: Helder Davidson Rodrigues Alvarenga\n
''')

DELAY = 1 # Atraso na captação dos dados

captarTopologiaMaquina(DELAY)
