dodaj :: [(Int, Char)] -> (Int, Char) -> [(Int, Char)]
dodaj ruka par = manjiOd ++ [par] ++ veciOd
    where manjiOd = takeWhile(<par) ruka
          veciOd = dropWhile(<=par) ruka
          


ukloni :: [(Int, Char)] -> (Int, Char) -> [(Int, Char)]
ukloni ruka par = filter(\karta-> karta/=par) ruka



poredi :: [(Int, Char)] -> [(Int,Char)] -> Ordering
poredi [] [] = EQ
poredi (x:xs) (y:ys) = if x == y then poredi xs ys else if x > y then GT else LT












