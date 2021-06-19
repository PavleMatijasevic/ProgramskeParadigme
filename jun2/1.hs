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

glavaListe :: [Int] -> Int 
glavaListe (x:xs) = x

repListe :: [Int] -> [Int]
repListe (x:xs) = xs


parniSeg :: Int -> Int -> [Int]
parniSeg a b = [x | x<-[a..b],  mod x 2 == 0 ]


neparniSeg :: Int -> Int -> [Int]
neparniSeg a b = [x | x<-[a..b], mod x 2 == 1]

parovi :: Int -> Int -> Int -> Int -> [(Int, Int)]
parovi a b c d = [ (x,y) | x<-[a..b], y<-[c..d]]

zavisnoY :: Int -> Int -> [(Int, Int)]
zavisnoY a b = [(x, y) | x<-[a..b], y<-[x..b]]

bezbedanRep :: [Int] -> [Int]
bezbedanRep lista = if lista == [] then [] else tail lista



zbirPar :: Int -> [(Int, Int)]
zbirPar n = [(a,b) | a<-[1..n],b<-[1..n], a+b == n]


poslednji :: [a] -> a 
poslednji lista = lista !! pozicija
      where pozicija = length lista - 1


spoji :: [[a]] -> [a]
spoji [] = []
spoji lista = [x | podlista<-lista, x<-podlista] 


izbaci :: Int -> [Int] -> [Int]
izbaci k [] = []
izbaci 0 (x:xs) = xs
izbaci k (x:xs) = [x] ++ izbaci (k-1) xs



ubaci :: Int -> Int -> [Int] -> [Int]

ubaci k n [] = []
ubaci 0 n lista = [n] ++ lista   
ubaci k n (x:xs) = if k>length (x:xs) then [x]++xs++[n] else  x : ubaci (k-1) n xs






