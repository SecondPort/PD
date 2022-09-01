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

add :: Integer -> Integer -> Integer
add x y = x + y
main = do
    putStrLn "ingreses un numero"
    numero <- getLine
    putStrLn "ingrese otro numero"
    numero1 <- getLine
    putStrLn ("la suma es: " ++ show (add (read numero) (read numero1)))

{-
funcion :: [Integer] -> [Integer]
funcion[[x*2] x <- [1..10]] -}
