""" import math

x = 1.0
while x < 10.0:
    print(x,'\n', math.log(x))
    x += 1.0
"""
""" import string """


def imprimeMultiplos(n):
    i = 1
    while i <=6:
        print (n*i, '\t', end='')
        i += 1
    print ('')

i = 1
while i <=6:
    imprimeMultiplos(i)
    i += 1

print ('Fim')
#longitud de una cadena
a = 'hola'
print(len(a))


txt = "Hello, welcome to my world."
print("Hello" in txt)

i = " hola mundo"
print(i)
print(i.strip())


prefijo = "JKLMNOPQ"
sufijo = "ack"
for letra in prefijo:
    if letra == "O" or letra == "Q":
        print(letra + "u" + sufijo)
    else:
        print(letra + sufijo)

fruta = "banana"
indice = str.find(fruta, "a")
print(indice)
"""
test = "No hay mal que por bien no venga"
test.split()
print(test) """



#dicctionary in other dictionary
