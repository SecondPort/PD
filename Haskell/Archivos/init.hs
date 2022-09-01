import Data.Char (toUpper)
import Data.List (sort)

mostrarFichero :: FilePath -> IO ()
mostrarFichero fichero = do
    contenido <- readFile fichero
    putStr contenido

escribirFichero :: FilePath -> String -> IO ()
escribirFichero fichero contenido = do
    writeFile fichero contenido


aMayusculas f1 f2 = do
    contenido <- readFile f1
    escribirFichero f2 (map toUpper contenido)

ordenaFichero::FilePath->FilePath->IO()
ordenaFichero f1 f2 = do
    contenido <- readFile f1
    let lista = words contenido
    let listaOrdenada = sort lista
    writeFile f2 (unlines listaOrdenada)
    putStrLn "Fichero ordenado"
{-
Definir la función quereciba un string y un char y devuelva una lista de enteros
tal que devuelva una lista con las posiciones en el string donde se encuentra el caracter
Por ejemplo:
pos "Salamamca" 'a'  ==  [1,3,5,8] -}

pos :: String -> Char -> [Int]
pos s c = [i | (i,x) <- zip [1..] s, x == c]
