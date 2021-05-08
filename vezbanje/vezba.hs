duploN :: Int -> Int
duploN x = x * 2

zbirDva :: Int -> Int -> Int
zbirDva a b = a + b

ostatakSaB :: Int -> Int -> Int
ostatakSaB a b = mod a b

korenBrojaA :: Int -> Double
korenBrojaA a = sqrt(fromIntegral a)

-- suma prvih n rekurzivno
sumaPrvih :: Int -> Int
sumaPrvih n =
            if n == 0 then 0
            else n + sumaPrvih(n-1)

parMax :: (Int, Int) -> Int
parMax x 
       | fst x <= snd x = snd x
       | otherwise = fst x

lista :: Int -> Int -> [Int]
lista a b = [a..b]

proizvodPrvih :: Int -> Int
proizvodPrvih n = 
        if n == 0 then 1
        else n * proizvodPrvih(n-1)

proizvodPrvihN :: Int -> Int
proizvodPrvihN n 
             | n == 0 = 1
             | otherwise = n * proizvodPrvihN(n-1)

prost :: Int -> Bool
prost n = prostTest n 2
  where prostTest n k
         | n == k = True
         | mod n k == 0 = False
         | otherwise = prostTest n (k+1)

nzd :: Int -> Int -> Int
nzd a b
      | b == 0 = a 
      | otherwise = nzd b (mod a b)

sumaKvadrata :: Int -> Int
sumaKvadrata n
            | n == 0 = 0
            | otherwise = n*n + sumaKvadrata(n-1)

brojDelilaca :: Int -> Int
brojDelilaca n = deliociTest n 2
      where deliociTest n k
             | n == k = 0
             | mod n k == 0 = 1 + deliociTest n (k+1)
             | otherwise = deliociTest n (k+1)

fibonacijevNti :: Int -> Int
fibonacijevNti n
               | n == 1 = 1
               | n == 2 = 1
               | otherwise = fibonacijevNti(n-1) + fibonacijevNti(n-2)

parni :: Int -> [Int]
parni n = [2,4..(n*2)]


fibLista :: Int -> [Int]
fibLista n
         | n == 0 = []
         | n == 1 = [1]
         | n == 2 = [1, fibonacijevNti n]
         | otherwise = fibLista (n-1) ++ [fibonacijevNti n]

-- nesto nece 
--jednocifreniDelioci :: Int -> [Int]
--jednocifreniDelioci n = deliociTestK n 2
--     where deliociTestK n k
--             | k >= 10 = []
--             | mod n k == 0 = [k] ++ [deliociTestK n (k+1)]
--             | otherwise = deliociTestK n (k+1)

uvecajListu :: [Int] -> [Int]
uvecajListu lista = map(\t -> t+1) lista

pomnoziListu :: [Int] -> [Int]
pomnoziListu lista = map(*2) lista

umanjiListu :: [Int] -> [Int]
umanjiListu lista = map(\t -> t - 1) lista

spojiListe :: [Int] -> [Int] -> [(Int, Int)]
spojiListe lista1 lista2 = zip lista1 lista2


ispisiPozitivne :: [Int] -> [Int]
ispisiPozitivne lista = filter(>0) lista

ispisiNegativne :: [Int] -> [Int]
ispisiNegativne lista = filter(\t -> t<0) lista

doPrviNegativni :: [Int] -> [Int]
doPrviNegativni lista = takeWhile (>0) lista

doPrviPozitivni :: [Int] -> [Int]
doPrviPozitivni lista = takeWhile (<0) lista


sumaListe :: [Int] -> Int
sumaListe lista = foldr (+) 0 lista

sumaListeP :: [Int] -> Int
sumaListeP lista = foldl (+) 0 lista

razlikaListe :: [Int] -> Int
razlikaListe lista = foldl (-) 0 lista

-- ovo nije dobar rezultat jer je oduzimanje levo asocijativno
razlikaListeP :: [Int] -> Int
razlikaListeP lista = foldr (-) 0 lista


sledbeniciPrirodnih :: [Int] -> [Int]
sledbeniciPrirodnih lista = map (+1) (filter(>0) lista)


sadrziElement :: [Int] -> Int -> Bool
sadrziElement lista a = any(==a) lista

glava :: [Int] -> Int
glava (x:_) = x

rep :: [Int] -> [Int]
rep (_:x) = x

parniLista :: Int -> Int -> [Int]
parniLista a b = [x | x <- [a..b], even x]

neparniLista :: Int -> Int -> [Int]
neparniLista a b = [x | x <- [a..b], odd x]

parovi :: Int -> Int -> Int -> Int -> [(Int, Int)]
parovi a b c d = [(x, y) | x <- [a..b], y <- [c..d]]

zavisnoY :: Int -> Int -> [(Int, Int)]
zavisnoY a b = [(x, y) | x <- [a..b], y <- [x..b]]

zbirPar :: Int -> [(Int, Int)]
zbirPar n = [(a, b) | a<-[1..n], b<-[1..n], a+b == n]


poslednji :: [a] -> a
poslednji lista = lista !! pozicija
    where pozicija = length lista - 1

spoji :: [[a]] -> [a]
spoji [] = []
spoji lista = [x | podlista <- lista, x <- podlista] 
        
izbaci :: Int -> [a] -> [a]
izbaci _ [] = []
izbaci 0 (_:xs) = xs
izbaci k (x:xs) = x : (izbaci (k-1) xs)


ubaci :: Int -> Int -> [Int] -> [Int]
ubaci 0 n lista = n : lista
ubaci k n [] = [n]
ubaci k n (x:xs) = x : (ubaci(k-1) n xs)


porediStringove :: String -> String -> Bool
porediStringove a b = if a /= b then False else True


