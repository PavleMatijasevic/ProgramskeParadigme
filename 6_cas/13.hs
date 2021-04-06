--zbirListe :: [Int] -> Int
zbirListe lista = foldl (+) 0 lista
zbirListe' lista = foldr (+) 0 lista

proizvodListe lista = foldr (*) 1 lista
proizvodListe' lista = foldl (*) 1 lista

-- ovo ne radi zbog komutativnosti 
razlikaListe lista = foldr (-) 0 lista

-- ovo radi kako treba
razlikaListe' lista = foldl (-) 0 lista



