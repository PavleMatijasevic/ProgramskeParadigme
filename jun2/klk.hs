trougao :: Int -> [(Int, Int, Int)]
trougao n = [(a,b,c)|a<-[1..n],b<-[1..n],c<-[1..n], a+b>c, a+c>b,c+b>a]


razstr (a,b,c) = if a /= b && a/=c && c/=b then True else False

raznostranicni :: [(Int, Int, Int)] -> Int
raznostranicni [] = 0
raznostranicni (x:xs) = if razstr x then 1 + raznostranicni xs else raznostranicni xs




sifruj :: [Int] -> Int -> [Int]
sifruj [] _ = []
sifruj lista 0 = lista
sifruj lista k = pocetak ++ [element] ++ sifruj ostatak k
  where s = take k lista
        element = if (mod k 2) == 0 then sum s else product s
        pocetak = map(\a->if a > 0 then a+1 else a-1) s
        ostatak = drop k lista 


trougaoni :: Int -> [(Int, Int)]
trougaoni n = [(a, div (a*(a+1)) 2 )| a<-[1..n]]


desifruj :: [Int] -> Int -> [Int]
desifruj [] _ = []
desifruj lista 0 = lista
desifruj lista k = pocetak ++ desifruj ostatak k
    where s = take k lista
          pocetak = map(\a-> if a > 0 then a-1 else a+1) s
          ostatak = drop (k+1) lista

uporedi :: [Float] -> [Float] -> Int
uporedi lista1 lista2
    | length lista1 > length lista2 = 1
    | length lista2 > length lista1 = -1
    | otherwise = 0






