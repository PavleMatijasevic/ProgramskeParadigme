import Data.Char

trougao :: Int -> [(Int, Int, Int)]
trougao n = [(a,b,c) | a<-[1..n], b<-[1..n], c<-[1..n], a+b>c,a+c>b,b+c>a]

raz :: (Int,Int,Int) -> Bool
raz (a,b,c) = if a/=b && a/=c && b/=c then True else False


raznostranicni :: [(Int,Int,Int)] -> Int
raznostranicni [] = 0
raznostranicni (x:xs) = if raz x then 1+raznostranicni xs else raznostranicni xs 




sifruj :: [Int] -> Int -> [Int]
sifruj [] _ = []
sifruj lista 0 = lista
sifruj lista k = pocetak ++ [umetnuti] ++ sifruj ostatak k
    where start = take k lista
          pocetak = map(\el -> if el > 0 then el + 1 else el - 1) start
          umetnuti = if (mod k 2 == 0) then sum start else product start
          ostatak = drop k lista



trougaoni :: Int -> [(Int, Int)]
trougaoni k = [(a,(a*(a+1)) `div` 2) | a<-[1..k]]


desifruj :: [Int] -> Int -> [Int]
desifruj [] _  = []
desifruj lista 0 = lista
desifruj lista k = pocetak ++ desifruj ostatak k
    where start = take k lista
          pocetak = map(\el -> if el > 0 then el - 1 else el + 1) start
          ostatak = drop(k+1) lista



otvori :: [(String,Int)] -> String -> [(String, Int)]
otvori lista novi = lista ++ [(novi,0)]

zatvori :: [(String,Int)] -> String -> [(String,Int)]
zatvori lista br = filter(\(racun,stanje)->racun/=br) lista

uplati :: [(String,Int)] -> String -> Int -> [(String,Int)]
uplati lista br iznos = map(\(acc,stanje)->if acc == br then (acc,stanje+iznos) else (acc,stanje)) lista

dodaj :: [(Int, String)] -> (Int, String) -> [(Int, String)]
dodaj ruka karta = manji ++ [karta] ++ veci
    where manji = takeWhile(<karta) ruka
          veci = dropWhile(<=karta) ruka

ukloni :: [(Int, String)] -> (Int, String) -> [(Int, String)]
ukloni ruka karta = filter(\par->par /= karta)ruka

poredi :: [(Int, String)] -> [(Int, String)] -> Ordering
poredi [] [] = EQ
poredi (x:xs) (y:ys) = if x > y then GT else if x < y then LT else poredi xs ys


najduza :: [String] -> String
najduza [x] = x
najduza (x:xs) = if length x >= length (najduza xs) then x else najduza xs


umanji :: String -> String
umanji str = map toLower str

razdvoj :: Char -> String -> [String]
razdvoj _ "" = [""]
razdvoj sep str = pre ++ sep ++ razdvoj sep ostatak
    where pre = takeWhile(/=sep)str
          ostatak = dropWhile(/=sep)str


spoj :: String -> [String] -> String
spoj _ [] = ""
spoj sep [x] = x
spoj sep (x:xs) = x ++ sep ++ spoj sep xs









