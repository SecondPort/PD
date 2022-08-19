--1) filtrarpositivos: dada una lista de enteros, devuelve una lista con los elementos que son positivos.
filtrarpositivos :: [Int] -> [Int]
filtrarpositivos [] = []
filtrarpositivos (x:xs) = if x > 0 then x : filtrarpositivos xs else filtrarpositivos xs

--2) utilizando la funcion anterior dada una lista de enteros, devuelve la lista de los cuadrados de los elementos positivos(utilizar la funcion anterior), en el mismo orden (usar la funcion anterior)
cuadrados :: [Int] -> [Int]
cuadrados [] = []
cuadrados (x:xs) = if x > 0 then (x*x) : cuadrados xs else cuadrados xs


--3) Redefinir la función signum tal que signum x es -1 si x es negativo, 0 si x es cero y 1 si x es positivo.
signumero :: Integer -> Integer
signumero x = if x < 0 then -1 else if x == 0 then 0 else 1

--4)Definir la función esPositivo tal que esPositivo se verifica si x es positivo.
esPositivo :: Integer -> Bool
esPositivo x = if x > 0 then True else False
