import Data.List (sort)

--1) Definir la función conc_lista tal que conc l1 l2 es la concatenación de l1 y l2.
conc_lista :: [a] -> [a] -> [a]
conc_lista [] l2 = l2
conc_lista (x:xs) l2 = x : conc_lista xs l2

--2)Redefinir la función init tal que init_list l es la lista l sin el último elemento.
init_list :: [a] -> [a]
init_list [] = []
init_list [x] = []
init_list (x:xs) = x : init_list xs

--3)Redefinir la función length tal que length_list l es el número de elementos de l.
length_list :: [a] -> Int
length_list [] = 0
length_list (x:xs) = 1 + length_list xs

--4)Definir la función palíndromo tal que (palíndromo xs) se -- verifica si xs es un palíndromo; es decir, es lo mismo leer xs de -- izquierda a derecha que de derecha a izquierda.
palindromo :: Eq a => [a] -> Bool
palindromo [] = True
palindromo [x] = True
palindromo (x:xs) = x == last xs && palindromo (init xs)

--5)Implementar una función que devuelva una lista con los n elementos mayores de la lista original.
list_may :: Ord a => Int -> [a] -> [a]
list_may n xs = take n (reverse (sort xs))