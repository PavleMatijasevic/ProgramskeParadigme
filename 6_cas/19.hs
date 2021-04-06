zbirPar :: Int -> [(Int, Int)]
zbirPar n = [(a, b) | a <- [1..n], b <- [n - a], b/=0]

poslednji :: [a] -> a
poslednji lista = lista !! poz
    where poz = length lista - 1