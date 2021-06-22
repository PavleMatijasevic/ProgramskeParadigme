
dodaj :: [(Int, Char)] -> (Int, Char) -> [(Int, Char)]
dodaj ruka karta = rukaManje ++ [karta] ++ rukaVece
    where rukaManje = takeWhile (<karta) ruka
          rukaVece  = dropWhile (<=karta) ruka


ukloni :: [(Int, Char)] -> (Int, Char) -> [(Int, Char)]
ukloni ruka karta = filter(\trenutna-> trenutna /= karta) ruka


poredi :: [(Int, Char)] -> [(Int,Char)] -> Ordering
-- poredi = compare

poredi (x:xs) (y:ys) = if x == y then poredi xs ys else if x > y then GT else LT










