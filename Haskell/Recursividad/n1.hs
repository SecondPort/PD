
sum1[] = 0
sum1 (x:xs) = x + sum xs

--quicksort : dada una lista de enteros, devuelve una lista ordenada de menor a mayor. (usar recursividad)
quicksort :: [Integer] -> [Integer]
quicksort [] = []
quicksort (x:xs) = quicksort [y | y <- xs, y < x] ++ [x] ++ quicksort [y | y <- xs, y >= x]

--sucesion de fibonacci : dada una cantidad de elementos, devuelve una lista con la sucesion de fibonacci. (usar recursividad)
fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)


--uso de Case
describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty."
                                               [x] -> "a singleton list."
                                               xs -> "a longer list."