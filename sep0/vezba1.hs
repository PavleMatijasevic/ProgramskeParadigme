--module Lib where
--otvori :: [(String,Int)] -> String -> [(String,Int)]
--otvori b br = (br,0) : b
--
--zatvori :: [(String,Int)] -> String -> [(String,Int)]
--zatvori b br = filter(\(racun,stanje)-> racun /= br) b
--
----uplati :: [(String,Int)] -> String -> Int -> [(String,Int)]
----uplati b br iznos = map(\(racun,stanje)-> if racun == br then (racun,stanje+iznos) else (racun,stanje)) b
--
--
--data Transakcija = MkTransakcija{
--    ident :: Int,
--    iznos :: Int,
--    posiljalac :: String,
--    primalac :: String
--} deriving(Show,Eq)
--
--
--type AktivneTransakcije = [Transakcija]
--t1 =MkTransakcija 1 1500 "Pera" "Zika"
--t2 =MkTransakcija 2 1200 "Mika" "Pera"
--t3 =MkTransakcija 3 500 "Zika" "Laza"
--t4 =MkTransakcija 4 750 "Pera" "Joca" 
--
--at = [t1,t2,t3,t4]
--
--
--izlistaj :: AktivneTransakcije -> String -> [Transakcija]
--izlistaj ts br = filter(\tr->(posiljalac tr) == br || (primalac tr) == br) ts
--
--
--dodaj :: AktivneTransakcije -> Transakcija -> AktivneTransakcije
--dodaj ts t = t : ts
--
--ukloni :: AktivneTransakcije -> Int -> AktivneTransakcije
--ukloni ts id = filter(\tr->(ident tr)/=id) ts
--
--
--ukupno :: AktivneTransakcije -> Int
--ukupno ts = sum(map(\tr->(iznos tr))ts)
--
--
--
--
--
--dodaj :: [(Int,String)] -> (Int,String) -> [(Int,String)]
--dodaj ruka par = manjiPar ++ [par] ++ veciPar
--    where manjiPar = takeWhile(<par) ruka
--          veciPar = dropWhile(<=par) ruka
--
--
--izbaci :: [(Int,String)] -> (Int,String) -> [(Int,String)]
--izbaci ruka par = filter(\trenutna->trenutna/=par) ruka
--
--poredi :: [(Int, String)] -> [(Int,String)] -> Ordering
--poredi [x] [] = GT
--poredi [] [y] = LT
--poredi [] [] = EQ 
--poredi (x:xs) (y:ys) = if x == y then poredi xs ys else if x > y then GT else LT
--import Data.Char
--
--najduza :: [String] -> String
--najduza [] = ""
--najduza (x:xs) = if length x >= length (najduza xs) then  x else najduza xs
--
--umanji :: String -> String
--umanji str = map(toLower) str
--
--uvecaj :: String -> String
--uvecaj str = map(toUpper) str
--
--spoj :: String -> [String] -> String
--spoj sep [x] = x
--spoj sep (x:xs) = x ++ sep ++ spoj sep xs
--





razdvoj ::  Char -> String -> [String]
razdvoj sep "" = []
razdvoj sep str = [podniska] ++ razdvoj sep ostatak
    where s = takeWhile(/=sep) str
          podniska = take (length(s)) str
          ostatak = drop (length(s)+1) str



















--sifruj :: [Int] -> Int -> [Int]
--sifruj [] k = []
--sifruj lista k = prviDeo ++ [kontrolna] ++ sifruj ostatak k
--    where s = take k lista
--          kontrolna = if mod k 2 == 0 then sum s else product s
--          prviDeo = map(\el -> if el > 0 then el + 1 else el - 1) s
--          ostatak = drop (k) lista
--
--desifruj :: [Int] -> Int -> [Int]
--desifruj [] k = []
--desifruj lista k = prviDeo ++ desifruj ostatak k
--    where s = take k lista
--          prviDeo = map(\el-> if el > 0 then el-1 else el+1)s
--          ostatak = drop(k+1) lista
--          











