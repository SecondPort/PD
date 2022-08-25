{-
Definir la función quereciba un string y un char y devuelva una lista de enteros
tal que devuelva una lista con las posiciones en el string donde se encuentra el caracter
Por ejemplo:
pos "Salamamca" 'a'  ==  [1,3,5,8] -}
pos :: String -> Char -> [Int]
pos s c = [i | (i,x) <- zip [1..] s, x == c]