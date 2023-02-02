from math import floor
def quadrado(a, b):
  a = float(a)
  b = float(b)
  
  ab = floor(a**b)
  print('\nResultado:\n')
  print(a,'**',b,'=',ab,'\n')
  
  return print('------------------------\n') 
  
def quadrado2x(a, b):
  a = float(a)
  b = float(b)
  
  ab = floor(a**b)
  print('\nResultado:\n')
  print(a,'**',b,'=',ab)
  
  a = a*-1
  ab = floor(a**b)
  
  print(a,'**',b,'=',ab,'\n')
  
  return print('------------------------\n') 

def funcao1(a, b, c):
  a = float(a)
  b = float(b)
  c = float(c)
  
  abc = floor((a/b)**c)
  print('\nResultado:\n')
  print('(',a,'/',b,')**',c,'=',abc,'\n')
  
  return print('------------------------\n') 

def funcao2(a, b, c):
  a = float(a)
  b = float(b)
  c = float(c)
  
  abc = ((-a)**b)**c
  print('\nResultado:\n')
  print('((',a,')**',b,')**',c,'=',abc,'\n')
  
  return print('------------------------\n')


def funcao3(a, b, c):
  a = float(a)
  b = float(b)
  c = float(c)
  
  abc = a + (b) ** c
  
  print('\nResultado:\n')
  print(a,'+(',b,')**',c,'=',abc,'\n')
  
  return print('------------------------\n')
  
def funcao4(a, b, c, d):
  a = float(a)
  b = float(b)
  c = float(c)
  d = float(d)
  
  abcd = a/b + c**d - d** (-1*b)

  print('\nResultado:\n')
  print(a,'/',b,' + ',c,'**',d,' - ',d,'**',b,' =',abcd)
  
  return print('------------------------\n')


def funcao5(a, b, c, d):
  a = float(a)
  b = float(b)
  c = float(c)
  d = float(d)
  
  abcd = a ** (-1*b) + (-1*c)**(-1*d)

  print('\nResultado:\n')
  print(a,'**',b,'+',c,'**',d,'=',abcd)
  
  return print('------------------------\n')


def funcao6(a, b, c, d, e):
  a = float(a)
  b = float(b)
  c = float(c)
  d = float(d)
  e = float(e)
  
  abcde = (a/b - c/d + c)**-d + c/(c + e**d - (a (-1*b))**(-1*d))
  
  print('\nResultado:\n')
  print('(',a,'/',b,'-',c,'/',d,'+',c,')**',d,'+')
  print(c,'/ (',c,'+',e,'**',d,'- (',a,'-',b,')**',d)
  print('=',abcde)
  
  return print('------------------------\n')
  
contador = 1
numQuest = 1
while contador <= 2:
  print(numQuest,'e',numQuest+1,'- Formulas:\na ** b\n (-a)** b\n')
  a = input('Digite o valor de A:\n')
  b = input('Digite o valor de B:\n')

  quadrado2x(a, b)
  
  numQuest+=2
  contador+=1

##########
print('5 - Formula:\nx ** y')
a = input('Digite o valor de A:\n')
b = input('Digite o valor de B:\n')

quadrado(a, b)

##########
print('6 - Formula:\n(a/b)**c')
a = input('Digite o valor de A:\n')
b = input('Digite o valor de B:\n')
c = input('Digite o valor de C:\n')

funcao1(a, b, c)

########
print('7 - Formula:\na ** b')
a = input('Digite o valor de A:\n')
b = input('Digite o valor de B:\n')

quadrado(a, b)

##########
print('8 - Formula:\n(a/b)**c')
a = input('Digite o valor de A:\n')
b = input('Digite o valor de B:\n')
c = input('Digite o valor de C:\n')

funcao1(a, b, c)

##########
print('9 - Formula:\n((-a)**b)**c')
a = input('Digite o valor de A:\n')
b = input('Digite o valor de B:\n')
c = input('Digite o valor de C:\n')

funcao2(a, b, c)

########
print('10 - Formula:\na ** b')
a = input('Digite o valor de A:\n')
b = input('Digite o valor de B:\n')

quadrado(a, b)

########
print('11 - Formula:\na ** b')
a = input('Digite o valor de A:\n')
b = input('Digite o valor de B:\n')

quadrado(a, b)

########
print('12 - Formula:\na ** b')
a = input('Digite o valor de A:\n')
b = input('Digite o valor de B:\n')

quadrado(a, b)

#######
print('13 - Formula:\na + (b) ** c')
a = input('Digite o valor de A:\n')
b = input('Digite o valor de B:\n')
c = input('Digite o valor de C:\n')

funcao3(a, b, c)

#######
print('14 - Formula:\n(a/b) + (c**d) - (d**-b)')
a = input('Digite o valor de A:\n')
b = input('Digite o valor de B:\n')
c = input('Digite o valor de C:\n')
d = input('Digite o valor de D:\n')

funcao4(a, b, c, d)

########
print('15 - Formula:\na ** -b + (-c)**-d')
a = input('Digite o valor de A:\n')
b = input('Digite o valor de B:\n')
c = input('Digite o valor de C:\n')
d = input('Digite o valor de D:\n')

funcao5(a, b, c, d)

########
print('16 - Formula:\n(a/b - c/d + c)**-d + c/(c + e**d) - (a-b)**-d')
a = input('Digite o valor de A:\n')
b = input('Digite o valor de B:\n')
c = input('Digite o valor de C:\n')
d = input('Digite o valor de D:\n')
e = input('Digite o valor de E:\n')

funcao6(a, b, c, d, e)

##########
print('Fim das questões =)')