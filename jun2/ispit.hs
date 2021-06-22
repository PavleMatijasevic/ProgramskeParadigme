otvori :: [(String, Int)] -> String -> [(String, Int)]
otvori b br = (br,0) : b 


zatvori :: [(String, Int)] -> String -> [(String,Int)]
zatvori b br = filter(\(racun, iznos)-> (racun /= br)) b

uplati :: [(String, Int)] -> String -> Int -> [(String, Int)]
uplati b br iznos = map(\(racun,stanje)-> if(racun == br) then (racun,iznos + stanje) else (racun,stanje)) b









