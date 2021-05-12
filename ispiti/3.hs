-- radi moj nacin
otvori:: [(String, Int)] -> String -> [(String, Int)]
otvori b br = (br, 0) : b

-- radi moj nacin
{-
zatvori :: [(String, Int)] -> String -> [(String, Int)]
zatvori lista br  = filter ((br /=) . fst) lista
-}
-- radi Cugurov nacin
zatvori :: [(String, Int)] -> String -> [(String, Int)]
zatvori b br = foldr (\r acc -> if fst r == br then acc else r : acc) [] b 
    

uplati :: [(String, Int)] -> String -> Int -> [(String, Int)]
uplati b br iznos = foldr (\r acc -> if fst r == br then (fst r, snd r + iznos) : acc else r : acc) [] b 


