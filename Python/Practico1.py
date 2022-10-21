""" 1) ingresar por teclado una cantidad. Esa cantidad indicara cuantos valores ingresar.
Calcular el promedio de los valores ingresado
"""
""" prom = int(input("ingrese la cantidad de valores a ingresar: "))
suma = 0
for i in range(prom):
    valor = int(input("ingrese un valor: "))
    suma += valor
promedio = suma / prom
print("el promedio es: ", promedio) """

""" 2) Crear un algoritmo que reciba tres valores que seran cantidad de respuestas correctas, cantidad de respuestras incorrectas
y cantidad de respuestas en blanco.
Cada respuesta correcta tiene un puntaje de 5, cada incorrecta tiene un puntaje de -1 y las respuestas en blanco 0.
Calcular el puntaje para cada tipo de respuesta y el puntaje total.
"""
""" correctas = int(input("ingrese la cantidad de respuestas correctas: "))
incorrectas = int(input("ingrese la cantidad de respuestas incorrectas: "))
blancas = int(input("ingrese la cantidad de respuestas en blanco: "))
puntaje_correctas = correctas * 5
puntaje_incorrectas = incorrectas * -1
puntaje_blancas = blancas * 0
puntaje_total = puntaje_correctas + puntaje_incorrectas + puntaje_blancas
print("el puntaje total es: ", puntaje_total)
"""

""" 3)Ingresar por teclado 20 números enteros y calcular cuántos de ellos son pares. Se emprime el resultado.
"""
""" pares = 0
for i in range(20):
    numero = int(input("ingrese un numero: "))
    if numero % 2 == 0:
        pares += 1
print("la cantidad de numeros pares es: ", pares)
 """
"""
4)Ingresar cantidad de numeros, generar esa cantidad en forma aleatoria de numeros enteros positivos , 
y determinar cuantos son impares. """

""" import random
cantidad = int(input("ingrese la cantidad de numeros a generar: "))
impares = 0
for i in range(cantidad):
    numero = random.randint(0, 100)
    if numero % 2 != 0:
        impares += 1
print("la cantidad de numeros impares es: ", impares)
"""
""" 
5)Escriba un algoritmo tal que dado como datos X números
enteros, obtenga el número de ceros que hay entre estos
números. Por ejemplo, si se ingresa 6 datos: 9 0 4 8 0 1
El algoritmo arroja que hay 2 ceros. """

""" cantidad = int(input("ingrese la cantidad de numeros a ingresar: "))
ceros = 0
for i in range(cantidad):
    numero = int(input("ingrese un numero: "))
    if numero == 0:
        ceros += 1
print("la cantidad de ceros es: ", ceros)
 """

""" 6)Ingresar 50 caracteres e indicar cuantas veces se repite el carácter ‘a’."""
""" cantidad = 50
a = 0
for i in range(cantidad):
    caracter = input("ingrese un caracter: ")
    if caracter == "a":
        a += 1
print("la cantidad de veces que se repite la letra a es: ", a) """

""" 7)Se tiene N temperaturas. Se desea calcular su media y
determinar entre todas ellas cuantas son superiores o iguales a
esa media. """

""" cant = int(input("ingrese la cantidad de temperaturas: "))
suma = 0.0
superiores = 0.0
igual = 0.0
for i in range(cant):
    temp = int(input("ingrese la temperatura: "))
    suma += temp
media = suma / cant
print("la media es: ", media)
if temp > media:
    superiores += 1
    print("la cantidad de temperaturas superiores a la media es: ", superiores)
if temp == media:
    igual += 1
    print("la cantidad de temperaturas igual a la media es: ", igual)
 """

""" 8)Escribir un algoritmo que pida un vector de caracteres por
pantalla e invierta el orden de los caracteres mostrándolo por
pantalla.  """

""" vector = []
cantidad = int(input("ingrese la cantidad de caracteres: "))
for i in range(cantidad):
    caracter = input("ingrese un caracter: ")
    vector.append(caracter)
print("el vector es: ", vector)
vector.reverse()
print("el vector invertido es: ", vector) """

""" 
9)Realizar un algoritmo que maneje un vector de enteros a través
de un menú con seis opciones:
1.- Añadir un elemento al vector (comprobando que el vector
no esté lleno)
2.- Eliminar un elemento del vector (comprobando que el
vector no esté vacío)
3.- Listar el contenido del vector
4.- Contar las apariciones de un número en el vector
5.- Calcular la media y el máximo de los elementos del vector
0.- Terminar """

""" vector = []
opcion = -1
while opcion != 0:
    print("1.- Añadir un elemento al vector (comprobando que el vector no esté lleno)")
    print("2.- Eliminar un elemento del vector (comprobando que el vector no esté vacío)")
    print("3.- Listar el contenido del vector")
    print("4.- Contar las apariciones de un número en el vector")
    print("5.- Calcular la media y el máximo de los elementos del vector")
    print("0.- Terminar")
    opcion = int(input("ingrese una opcion: "))
    if opcion == 1:
        if len(vector) < 10:
            numero = int(input("ingrese un numero: "))
            vector.append(numero)
        else:
            print("el vector esta lleno")
    if opcion == 2:
        if len(vector) > 0:
            vector.pop()
        else:
            print("el vector esta vacio")
    if opcion == 3:
        print("el vector es: ", vector)
    if opcion == 4:
        numero = int(input("ingrese un numero: "))
        print("la cantidad de veces que se repite el numero es: ", vector.count(numero))
    if opcion == 5:
        suma = 0
        for i in range(len(vector)):
            suma += vector[i]
        media = suma / len(vector)
        print("la media es: ", media)
        print("el maximo es: ", max(vector))
    if opcion == 0:
        print("fin del programa")
        break """

""" 10)Elaborar algoritmo que busque en forma secuencial un
VALOR dentro de un arreglo de N elementos numéricos y
retorne su posición.  """

""" def buscar(arreglo, valor):
    for i in range(len(arreglo)):
        if arreglo[i] == valor:
            return i
    return -1

arreglo = [1,2,3,4,5,6,7,8,9,10]
valor = int(input("Ingrese el valor a buscar: "))
posicion = buscar(arreglo, valor)
if posicion == -1:
    print("El valor no se encuentra en el arreglo")
else:
    print("El valor se encuentra en la posición: ", posicion) """

""" 11)Cargar un vector de 25 posiciones con numero enteros, a
partir de este crear 2 vectores; uno con los números pares y el
otro con los numero impares, además decir de los vectores
cual es más grande y el número de elementos en cada vector.  """

""" def cargar_vector(vector):
    for i in range(len(vector)):
        vector[i] = int(input("Ingrese un numero: "))


def cargar_vector_pares(vector, vector_pares):
    for i in range(len(vector)):
        if vector[i] % 2 == 0:
            vector_pares.append(vector[i])


def cargar_vector_impares(vector, vector_impares):
    for i in range(len(vector)):
        if vector[i] % 2 != 0:
            vector_impares.append(vector[i])


def mostrar_vector(vector):
    for i in range(len(vector)):
        print(vector[i])


def mostrar_vector_pares(vector_pares):
    for i in range(len(vector_pares)):
        print(vector_pares[i])


def mostrar_vector_impares(vector_impares):
    for i in range(len(vector_impares)):
        print(vector_impares[i])


def comparar_vectores(vector_pares, vector_impares):
    if len(vector_pares) > len(vector_impares):
        print("El vector de pares es mas grande")
    elif len(vector_pares) < len(vector_impares):
        print("El vector de impares es mas grande")
    else:
        print("Los vectores son iguales")


def main():
    vector = [0] * 25
    vector_pares = []
    vector_impares = []
    cargar_vector(vector)
    cargar_vector_pares(vector, vector_pares)
    cargar_vector_impares(vector, vector_impares)
    print("Vector: ")
    mostrar_vector(vector)
    print("Vector de pares: ")
    mostrar_vector_pares(vector_pares)
    print("Vector de impares: ")
    mostrar_vector_impares(vector_impares)
    comparar_vectores(vector_pares, vector_impares)


main()
 """

""" 12)Se tiene un vector, se pide ingresar 20 nombres de animales,
luego se debe buscar el nombre de un animal que se ingrese
por teclado, el algoritmo debe imprimir el nombre de los
animales que se encuentran al lado de la posición donde está
el animal buscado, tanto a la derecha como izquierda.  """

""" animales = []

for i in range(5):
    animales.append(input("Ingrese el nombre de un animal: "))

animal_buscado = input("Ingrese el nombre del animal que desea buscar: ")

if animal_buscado in animales:
    posicion = animales.index(animal_buscado)
    print("El animal buscado se encuentra en la posición: ", posicion)
    print("Los animales que se encuentran a la derecha son: ", animales[posicion+1:])
    print("Los animales que se encuentran a la izquierda son: ", animales[:posicion])
else:
    print("El animal buscado no se encuentra en la lista")   """