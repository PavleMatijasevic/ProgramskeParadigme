
dodaj :: [(Int, String)] -> (Int, String) -> [(Int, String)]
dodaj ruka karta = manjiKarta ++ [karta] ++ veciKarta
    where manjiKarta = takeWhile(<karta) ruka
          veciKarta = dropWhile(<=karta) ruka

ukloni :: [(Int, String)] -> (Int, String) -> [(Int, String)]
ukloni ruka karta = filter(\trenutna -> trenutna /= karta) ruka

poredi :: [(Int, String)] -> [(Int, String)] -> Ordering
poredi [] [] = EQ
poredi (x:xs) (y:ys) = if x == y then poredi xs ys else if x > y then GT else LT






