duplo :: Int -> Int
duplo n = 2*n


ostatak :: Int -> Int
ostatak n = mod n 3

koren :: Int -> Double
koren n = sqrt (fromIntegral n)

sumaPrvih :: Int -> Int
sumaPrvih 1 = 1
sumaPrvih n = n + sumaPrvih(n-1)

parMax :: (Int, Int) -> Int
parMax (a,b) = if a > b then a else b

lista :: Int -> Int -> [Int]
lista a b = [a..b]

proizvodPrvih :: Int -> Int
proizvodPrvih 1 = 1
proizvodPrvih n = n * proizvodPrvih(n-1)


prost :: Int -> Bool
prost n = pomocna n 2
    where pomocna a b
            | a == b = True
            | mod a b == 0 = False
            | otherwise = pomocna a (b+1)



sumaKvadrata :: Int -> Int
sumaKvadrata 1 = 1
sumaKvadrata n = n*n + sumaKvadrata(n-1)

fib :: Int -> Int
fib n
    | n == 1 = 1
    | n == 2 = 1
    | otherwise = fib (n-1) + fib(n-2)

parniN :: Int -> [Int]
parniN n = [a| a<-[2..n*2], mod a 2 == 0]


neparniN :: Int -> [Int]
neparniN n = [b | b<-[1..n*2], mod b 2 == 1]

fibLista :: Int -> [Int]
fibLista n
         | n == 0 = []
         | n == 1 = [1]
         | n == 2 = [1, fib n]
         | otherwise = fibLista (n-1) ++ [fib n]

uvecajListu :: [Int] -> [Int]
uvecajListu lista = map(+1) lista


spoji :: [Int] -> [Int] -> [(Int,Int)]
spoji lista1 lista2 = zip lista1 lista2

pozitivni :: [Int] -> [Int]
pozitivni lista = filter(>0) lista

negativni :: [Int] -> [Int]
negativni lista = filter(<0) lista


prviNegativni :: [Int] -> [Int]
prviNegativni lista = takeWhile(<0) lista

glava :: [Int] -> Int
glava (x:xs) = x

rep :: [Int] -> [Int]
rep [] = []
rep (x:xs) = xs

parni :: Int -> Int -> [Int]
parni a b = [c | c<-[a..b], mod c 2 == 0]


parovi :: Int -> Int -> Int -> Int -> [(Int,Int)]
parovi a b c d = [(x,y)| x<-[a..b], y<-[c..d]]


poslednji :: [a] -> a
poslednji lista = lista !! ((length lista) - 1)








