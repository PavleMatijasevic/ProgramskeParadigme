
-- radi
otvori:: [(String, Int)] -> String -> [(String, Int)]
otvori b br = (br, 0) : b

porediStringove :: (String, Int) -> String -> String
porediStringove par zeljeni = (String)par.fst


--pronadjiUListi :: [(String, Int)] -> String -> [(String,Int)]
--pronadjiUListi lista zeljeni = [(x,y) | x <- lista.fst, y <- lista.snd, x /= zeljeni]



{-
-- zatvori:: [(String, Int)] -> String -> [(String, Int)]
zatvori b br 
zatvori [] br = []
zatvori (x:xs) br = x : (zatvori(b) xs)
-}

-- na racun br iz liste b ulati iznos dinara
--uplati:: [(String, Int)] -> String -> Int -> [(String, Int)]
--uplati b br iznos 
       




