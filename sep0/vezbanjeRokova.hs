--import Data.Char
--
--otvori :: [(String,Int)] -> String -> [(String,Int)]
--otvori b br = (br,0) : b
--
--zatvori :: [(String,Int)] -> String -> [(String,Int)]
--zatvori b br = filter(\(racun,stanje)->racun/=br) b
--
--uplati :: [(String,Int)] -> String -> Int -> [(String,Int)]
--uplati b br iznos = map(\(racun,stanje)->if racun == br then (racun,stanje+iznos) else (racun,stanje)) b
--
--
--dodaj :: [(Int,String)] -> (Int,String) -> [(Int,String)]
--dodaj ruka karta = manjeKarte ++ [karta] ++ veceKarte
--    where manjeKarte = takeWhile(<karta) ruka
--          veceKarte = dropWhile(<=karta) ruka
--
--
--izbaci :: [(Int,String)] -> (Int,String) -> [(Int,String)]
--izbaci ruka karta = filter(\trenutna->trenutna/=karta) ruka
--
--
--poredi :: [(Int,String)] -> [(Int,String)] -> Ordering
--poredi [] [] = EQ
--poredi (x:xs) (y:ys) = if x == y then poredi xs ys else if x > y then GT else L
--
--
--najduza :: [String] -> String
--najduza [] = ""
--najduza (x:xs) = if length x >= length (najduza xs) then x else najduza xs
--
--umanji :: String -> String
--umanji str = map(toLower)str
--
--razdvoj :: Char -> String -> [String]
--razdvoj _ "" = []
--razdvoj sep str = [prePrvog] ++ razdvoj sep ostatak
--    where s = takeWhile(/=sep) str
--          prePrvog = take(length(s)) str
--          ostatak = drop(length(s)+1) str
--
--spoj :: String -> [String] -> String
--spoj _ [] = ""
--spoj _ [x] = x 
--spoj sep (x:xs) = x ++ sep ++ spoj sep xs
--

sifruj :: [Int] -> Int -> [Int]
sifruj [] _ = []
sifruj lista 0 = lista
sifruj lista k = pocetak ++ [umetnuta] ++ sifruj ostatak k
    where s = take k lista
          pocetak = map(\e-> if e > 0 then e+1 else e-1) s
          ostatak = drop k lista
          umetnuta = if (mod k 2) == 0 then sum s else product s





















