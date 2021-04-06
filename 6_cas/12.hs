prviNegativni :: [Int] -> [Int]
prviNegativni lista = takeWhile (<0) lista

prviPozitivni :: [Int] -> [Int]
prviPozitivni lista = takeWhile(>0) lista

zbirElemenata :: [Int] -> Int
zbirElemenata lista = sum lista

proizvodElemenata :: [Int] -> Int
proizvodElemenata lista = product lista

