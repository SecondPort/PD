
cuadrado::Integer -> Integer
cuadrado x = x * x

--funcion boolean
esPar :: Integer -> Bool
esPar x = mod x 2 == 0

esParTexto :: Integer -> String
esParTexto x
    | esPar x = "par"
    | otherwise = "impar"

menor::(Integer, Integer) -> Integer
menor(x,y) = if x < y then x else y

--Redefinir la función abs (sin usar la predefinida) tal que abs x es el valor absoluto de x del lenguaje haskell
absoluto :: Integer -> Integer
absoluto x
    | x < 0 = -x
    | otherwise = x

--sobreescritura del metodo abs
abs' :: Integer -> Integer
abs' x
    | x < 0 = -x
    | otherwise = x

--Redefinir la función signum tal que signum x es -1 si x es negativo, 0 si x es cero y 1 si x es positivo.
signumero :: Integer -> Integer
signumero x = if x < 0 then -1 else if x == 0 then 0 else 1

--Definir la función anterior tal que anterior x es el anterior del número natural x.
anterior :: Integer -> Integer
anterior x = x - 1


--Definir la función siguiente tal que siguiente x sea el siguiente del número entero x
siguiente :: Integer -> Integer
siguiente x = x + 1

--Definir la función doble tal que doble x es el doble de x
doble :: Integer -> Integer
doble x = x * 2

--filterPositivos: dada una lista de enteros, devuelve una lista con los elementos que son positivos. (usar recursividad)
filterPositivos :: [Integer] -> [Integer]
filterPositivos [] = [] --caso base de la recursividad (si la lista esta vacia, devuelve una lista vacia)
filterPositivos (x:xs) -- x es el primer elemento de la lista y xs es la lista sin el primer elemento
    | x > 0 = x : filterPositivos xs
    | otherwise = filterPositivos xs

add :: Integer -> Integer -> Integer
add x y = x + y
main = do
    putStrLn "ingreses un numero"
    numero <- getLine
    putStrLn "ingrese otro numero"
    numero1 <- getLine
    putStrLn ("la suma es: " ++ show (add (read numero) (read numero1)))