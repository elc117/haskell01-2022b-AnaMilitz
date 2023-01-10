
--Import Prelude (pi)


-- Eleva um numero ao quadrado
-- Aqui temos um comentario!
square :: Int -> Int
square x = x^2

-- Verifica se um numero eh par 
-- Ilustra uso de if/then/else para expressar condicional 
-- A funcao 'mod' retorna o resto da divisao inteira
-- A função seguinte apresenta uma versão melhorada
isEven :: Int -> Bool
isEven n = if mod n 2 == 0 then True else False

-- Versão melhorada da função anterior
-- A comparação == resulta True/False, por isso
-- o if-then-else é desnecessário neste caso
isEvenBetter :: Int -> Bool
isEvenBetter n = mod n 2 == 0

-- Gera um numero a partir de um caracter 
-- Note esta estrutura condicional em Haskell, usando 'guardas' (|)
encodeMe :: Char -> Int
encodeMe c 
   | c == 'S'  = 0
   | c == 'N'  = 1
   | otherwise = undefined

-- Calcula o quadrado do primeiro elemento da lista
-- Note que '[Int]' designa uma lista de elementos do tipo Int 
squareFirst :: [Int] -> Int
squareFirst lis = (head lis)^2

-- Verifica se uma palavra tem mais de 10 caracteres
isLongWord :: String -> Bool -- isso é o mesmo que: isLongWord :: [Char] -> Bool
isLongWord s = length s > 10





-- 1) Crie uma função sumSquares :: Int -> Int -> Int que receba dois números x e y e calcule a soma dos seus quadrados.
sumSquares :: Int -> Int -> Int
sumSquares x y = x^2 + y^2 

-- 2) Defina a função circleArea :: Float -> Float que receba um raio r e calcule a área de um círculo com esse raio, dada por pi vezes o raio ao quadrado. Dica: Haskell tem a função pi pré-definida.
circleArea :: Float -> Float
circleArea r = pi*(r^2)

-- 3) Defina uma função age :: Int -> Int -> Int que receba o ano de nascimento de uma pessoa e o ano atual, produzindo como resultado a idade (aproximada) da pessoa.
age :: Int -> Int -> Int
age anoNascimento anoAtual = anoAtual - anoNascimento

-- 4) Defina uma função isElderly :: Int -> Bool que receba uma idade e resulte verdadeiro caso a idade seja maior que 65 anos.
isElderly :: Int -> Bool
isElderly idade = idade > 65

-- 5) Defina uma função htmlItem :: String -> String que receba uma String e adicione tags <li> e </li> como prefixo e sufixo, respectivamente. Por exemplo, se a entrada for "abc", a saída será "<li>abc</li>". Use o operador ++ para concatenar strings (este operador serve para concatenar quaisquer listas do mesmo tipo).
htmlItem :: String -> String
htmlItem word = "<li>" ++ word ++ "</li>"

--6) Nao solicitada nas atividades

--7) Crie uma função startsWithA :: String -> Bool que receba uma string e verifique se ela inicia com o caracter 'A'.
--startsWithA :: String -> Bool
--startsWithA word = "A"++ word

main = do
  --print (isLongWord 'test')
  --print (allInitials ["Fulano", "Beltrano"])
  --1)
  print(sumSquares 2 6)
  --2)
  print(circleArea 2.0)
  --3)
  print(age 2010 2023)
  --4)
  print(isElderly 67)
  --5)
  print(htmlItem "string")
  --6) nao solicitada nas atividades
  --7)
  --print(startsWithA "Astring")