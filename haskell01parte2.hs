-- 1) Crie uma função itemize :: [String] -> [String] que receba uma lista de nomes e aplique a função htmlItem em cada nome.
htmlItem :: String -> String
htmlItem word = "<li>" ++ word ++ "</li>"

itemize :: [String] -> [String]
itemize listaNomes = map htmlItem listaNomes

-- 2) Crie uma função onlyVowels :: String -> String que receba uma string e retorne outra contendo somente suas vogais. Por exemplo: onlyVowels "abracadabra" vai retornar "aaaaa".
isVowel :: Char -> Bool
isVowel caracter = caracter == 'a' || caracter == 'e' || caracter == 'i' || caracter == 'o' || caracter == 'u'

onlyVowels :: String -> String
onlyVowels palavra = filter isVowel palavra

-- 3) Escreva uma função onlyElderly :: [Int] -> [Int] que, dada uma lista de idades, selecione somente as que forem maiores que 65 anos.
isElderly :: Int -> Bool
isElderly idade = idade > 65

onlyElderly :: [Int] -> [Int]
onlyElderly listaIdades = filter isElderly listaIdades

-- 4) Nao solicitada nas atividades

-- 5) Crie uma função onlyLongWords :: [String] -> [String] que receba uma lista de strings e retorne somente as strings longas (use a função isLongWord definida no código de exemplo no início da prática).
isLongWord :: String -> Bool
isLongWord s = length s > 10

onlyLongWords :: [String] -> [String]
onlyLongWords listaPalavras = filter isLongWord listaPalavras

-- 6) Escreva uma função onlyEven que receba uma lista de números inteiros e retorne somente aqueles que forem pares. Agora é com você a definição da tipagem da função!
isEven :: Int -> Bool
isEven n = mod n 2 == 0

onlyEven :: [Int] -> [Int]
onlyEven numerosInteiros = filter isEven numerosInteiros

-- 7) Escreva uma função onlyBetween60and80 que receba uma lista de números e retorne somente os que estiverem entre 60 e 80, inclusive. Você deverá criar uma função auxiliar between60and80 e usar && para expressar o operador "E" lógico em Haskell.
between60and80 :: Int -> Bool
between60and80 numero = numero > 60 && numero < 80

onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 listaNumeros = filter between60and80 listaNumeros

-- 8) Crie uma função countSpaces que receba uma string e retorne o número de espaços nela contidos. Dica 1: você vai precisar de uma função que identifica espaços. Dica 2: aplique funções consecutivamente, isto é, use o resultado de uma função como argumento para outra.
identificaEspacos :: Char -> Bool
identificaEspacos c = c == ' ' 

countSpaces :: String ->  Int
countSpaces palavra = length (filter identificaEspacos palavra)

-- 9) Escreva uma função calcAreas que, dada uma lista de valores de raios de círculos, retorne uma lista com a área correspondente a cada raio.

circleArea :: Float -> Float
circleArea r = pi * (r ^ 2)

calcAreas :: [Float] -> [Float]
calcAreas listaRaios = map circleArea listaRaios

main = do
  -- 1)
  print (itemize ["Nome1", "Nome2"])

  -- 2)
  print (onlyVowels "palavras com vogais")

  -- 3)
  print (onlyElderly [65, 67, 90])

  -- 4) nao solicitada nas atividades

  -- 5)
  print (onlyLongWords ["Palavra", "Palavra longa"])

  -- 6)
  print (onlyEven [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

  -- 7)
  print (onlyBetween60and80 [81, 65, 20, 28, 60, 61, 100, 70])

  -- 8)
  print (countSpaces "quantidade de espacos entre palavras")
  --print(identificaEspacos ' ')

  -- 9)
  print (calcAreas [1, 2, 3])
