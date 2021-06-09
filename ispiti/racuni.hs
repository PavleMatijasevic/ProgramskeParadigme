

zatvori :: [(String,Int)] -> String -> [(String, Int)]
zatvori br r = filter (\(b,n) -> not(b==r)) br

uplati :: [(String,Int)] -> String -> Int -> [(String, Int)]
uplati b br iznos = map(\(i,j) -> if br == i then (i,j+iznos) else (i,j) ) b