import platform # Biblioteca para descobrir informações sobre SO (Sistema Operacional)
import os # Biblioteca para usar comandos do SO
import psutil # Biblioteca para monitorar componentes do computador
from time import sleep # Biblioteca para dar atraso em comandos

cpu = psutil.cpu_times()

clearString = "cls" if platform.system() == "Windows" else "clear"
os.system(clearString)

print(
'-'*10+
'''
API - Monitoramento de Computador (MdC)

Versão: 1.0 Snapshot
Autor: Helder Davidson Rodrigues Alvarenga
Github: https://github.com/uken49/Faculdade-SPTECH/
'''+
'-'*10)

contador = 0
while contador > 5 :
    print(cpu)

