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