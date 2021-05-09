-- radi
otvori:: [(String, Int)] -> String -> [(String, Int)]
otvori b br = (br, 0) : b

-- radi
zatvori :: [(String, Int)] -> String -> [(String, Int)]
zatvori lista br  = filter ((br /=) . fst) lista



uplati :: [(String, Int)] -> String -> Int -> [(String, Int)]
uplati lista br iznos = map (+iznos) (filter ((==br) . fst) lista)


-- na racun br iz liste b ulati iznos dinara
--uplati:: [(String, Int)] -> String -> Int -> [(String, Int)]
--uplati b br iznos 
       




