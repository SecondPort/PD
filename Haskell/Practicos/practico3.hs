{- 1) Redefinir la función map de tal forma que map f lista-> devuelva la lista obtenida aplicando f a cada elemento de lista.
Hacer dos versiones de la funcion:
aplicado listas intensionales

Ejemplo:
map' (3*) [1,2,3] -> [3,6,9] -}

--version listas intensionales
map'::(a->b)->[a]->[b]
map' f xs = [f x|x<-xs]

-- Version recursiva
map'_rec :: (a -> b) -> [a] -> [b]
map'_rec f (x:xs) = f x : map'_rec f xs -- f x es el elemento de la lista que se esta evaluando y xs es la lista restante
map'_rec _ [] = []

{- 2)Redefinir la función sum de tal forma que sum de lista -> devuelva la suma de los elementos de lista.

Ejemplo:
sum' [1,3,6] -> 10
-}

sum' :: [Int] -> Int
sum' [] = 0
sum' (x:xs) = x + sum' xs -- en el caso de que la lista no este vacia, se suma el primer elemento de la lista con la suma de la lista sin el primer elemento


{-
3)Definir una función que tome dos listas xs ys  y verifica si las dos listas xs e ys son iguales, devuelve True si son iguales sino False.  -}

equal :: [Int] -> [Int] -> Bool
equal [] [] = True
equal (x:xs) (y:ys) = x == y && equal xs ys -- si el primer elemento de las listas es igual, se verifica si las listas sin el primer elemento son iguales
equal _ _ = False


{-4)Definir una funcion tal forma que sume de los cuadrados de los elementos de la lista l. -}

sum_cuadrados :: [Int] -> Int
sum_cuadrados [] = 0
sum_cuadrados (x:xs) = x^2 + sum_cuadrados xs -- se suma el cuadrado del primer elemento de la lista con la suma de los cuadrados de la lista sin el primer elemento


{- 5)Redefinir la función filter de tal forma que filter' p lista -> devuelva la lista de los elementos de lista que cumplen la propiedad p. Por ejemplo,
filter even [1,2,3,4,5,6,7] -> [2,4,6]
filter (>3) [1,2,3,5,6,7] -> [5,6,7] -}

filter' :: (a -> Bool) -> [a] -> [a]
filter' p [] = []
filter' p (x:xs) = if p x then x : filter' p xs else filter' p xs

{- 6)Redefinir la función head de tal forma que head' lista es el head de lista.
Por ejemplo:
head [3,5,2] -> 3
head [] -> "Error lista vacia" -}

head' :: [a] -> a
head' (x:xs) = x

{- 7)Definir una función que reciba una lista como parámetro y devuelta true si la lista tiene valores repetidos y false en caso contrario
Ejemplo:
duplicados [1,2,3,4] -> false
duplicados [1,2,3,2] -> true -}

duplicados :: [Int] -> Bool
duplicados [] = False
duplicados (x:xs) = if elem x xs then True else duplicados xs

{-
8)Definir una funcion que reciba una lista y valide si la lista esta ordenada de menor a mayor, si lo cumple devuelve true sino false
ejemplo:
ordenada [1,2,3,4] -> true
ordenada [1,2,3,2] -> false -}
ordenada :: [Int] -> Bool
ordenada [] = True
ordenada [x] = True
ordenada (x:y:xs) = if x <= y then ordenada (y:xs) else False

{- 9)Definir una función que calcule el valor mayor de tres pasados como parametros
Por ejemplo:
mayor 6 2 4 == 6
mayor 6 7 4 == 7
mayor 6 7 9 == 9 -}

mayor :: Int -> Int -> Int -> Int
mayor x y z = if x > y then if x > z then x else z else if y > z then y else z

{- 10)Definir una función que reciba una lista como parámetro y devuelva otra lista de tal forma que el primer elemento de la lista sea el ultimo en la lista resultante
Ejemplo

cambiar [1,2,3] -> [2,3,1] -}

cambiar :: [Int] -> [Int]
cambiar [] = []
cambiar (x:xs) = cambiar xs ++ [x]
