import psutil
#-----------------------------Teoria dos Conjutos (na prática)--------------------------------------
# Criando um dicionário
dicionario = ('Palavra', 'Amado', 'Jorge')
dicionario

# Criando uma lista
conjunto_processador = {'CPU', 'CPU', 'Registrador', 'Core'}
conjunto_processador

# Não repete os elementos
conjunto_processador = set({'CPU', 'CPU', 'Registrador', 'Core'})
conjunto_processador
#serial id
lista_processador = {'CPU', 'Core', 'CPU', 'Registrador', 'Core'}
conjunto_processador = set(lista_processador)
conjunto_processador

# Criando conjuntos
user_Thor = {'mysql', 'CPU', 'RAM', 'SSDl', 'Google'}
user_Thanos = {'LoL', 'RAM', 'CPU', 'HD', 'Google'}
user_CA = {'mysql', 'LOL', 'RAM', 'CPU', 'Firefox'}
user_TS = {'mysql', 'CPU', 'RAM', 'SDDl', 'Google'}

# União dos conjuntos
inventario1 = user_Thor | user_CA
inventario2 = user_Thor.union(user_CA)

# Intersecção
inventario1 = user_Thor & user_CA
inventario2 = user_Thor.intersection(user_Thanos)

# Diferença
inventario1 = user_CA - user_TS - user_Thanos - user_Thor
#-----------------------------Testes Lógicos--------------------------------------
'CPU' in user_TS
'Firefox' in user_Thanos

'LOL' not in user_Thor
'LOL' not in user_Thanos

# Está contido - Subconjunto
user_Thor >= (user_Thanos)
user_Thor.issubset(user_Thanos)

# Contém - Superconjunto
user_Thor >= (user_TS)
user_Thor.issuperset(user_Thanos)
