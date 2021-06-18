duplo :: Int -> Int
duplo a = a*2

ostatak :: Int -> Int
ostatak n = mod n 3

korenCeli :: Int-> Double
korenCeli a = sqrt(fromIntegral a)

sumaPrvih :: Int -> Int
sumaPrvih n = if n == 0 then 0 else n + sumaPrvih(n-1)

faktorijel :: Int -> Int
faktorijel n = if n == 0 then 1 else n * faktorijel(n-1)


parMax :: (Double, Double) -> Double
parMax par = if fst par > snd par then fst par else snd par


lista :: Int->Int->[Int]
lista a b = [a..b]

prost :: Int -> Bool
prost n = prostA n 2
      where prostA a b
             |  a == b = True
             |  mod a b == 0 = False
             |  otherwise = prostA a (b+1)    
 

nzd :: Int -> Int -> Int 
nzd a b
      | b == 0 = a
      | otherwise = nzd b (mod a b)

sumaKvadrata :: Int -> Int 
sumaKvadrata n = if n == 1 then 1 else n*n + sumaKvadrata(n-1)


brojDelilaca :: Int -> Int 
brojDelilaca n = brojD n 2
      where brojD a b
             | a == b = 0
             | mod a b == 0 = 1 + brojD a (b+1)
             | otherwise = brojD a (b+1)


fib :: Int -> Int 
fib n 
      | n == 0 = 1
      | n == 1 = 1
      | otherwise = fib(n-2) + fib (n-1) 

parni :: Int -> [Int]
parni n = [2,4..n*2]


neparni :: Int -> [Int]
neparni n = [1,3..n*2]


uvecajListu :: [Int] -> [Int]
uvecajListu lista = map(+1) lista

spojiListe :: [Int] -> [Int] -> [(Int, Int)]
spojiListe lista1 lista2 = zip lista1 lista2

pozitivniLista :: [Int] -> [Int]
pozitivniLista lista = filter(>0) lista

prviNegativni :: [Int] -> [Int]
prviNegativni lista = takeWhile (<0) lista


sumaListe :: [Int] -> Int 
sumaListe lista = foldr (+) 0 lista

sledbenici :: [Int] -> [Int]
sledbenici lista = map (+1) lista
prethodnici :: [Int] -> [Int]
prethodnici lista = map (\a-> a - 1) lista

sadrzi :: [Int] -> Int -> Bool 
sadrzi lista a = any (== a) lista







