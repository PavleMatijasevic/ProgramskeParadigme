import Data.Char
--data Transakcija = MkTransakcija{
--    ident :: Int,
--    iznos :: Int,
--    posiljalac :: String,
--    primalac :: String
--} deriving(Show,Eq)
--
----type AktivneTransakcije = [Transakcija]
--t1 = MkTransakcija 1 1000 "Pavle" "Mina"
--t2 = MkTransakcija 2 2000 "Vladan" "Mina"
--t3 = MkTransakcija 3 1400 "Tanja" "Pavle"
--t4 = MkTransakcija 4 500 "Vladan" "Tanja"
--
--at = [t1,t2,t3,t4]
--
--
--
--izlistaj :: AktivneTransakcije -> String -> [Transakcija]
--izlistaj ts br = filter(\tr-> (posiljalac tr) == br || (primalac tr) == br) ts
--
----dodaj  :: AktivneTransakcije -> Transakcija -> AktivneTransakcije
----dodaj ts t = t : ts
--
--ukloni :: AktivneTransakcije -> Int -> AktivneTransakcije
--ukloni ts id = filter(\tr->(ident tr) /= id) ts
--
--
--ukupno :: AktivneTransakcije -> Int
--ukupno ts = sum(map(\tr->(iznos tr))ts)

dodaj :: [(Int, String)] -> (Int,String) -> [(Int,String)] 
dodaj ruka par = manjeKarte ++ [par] ++ veceKarte
    where manjeKarte = takeWhile(<=par) ruka
          veceKarte = dropWhile(<par) ruka

izbaci :: [(Int,String)] -> (Int,String) -> [(Int,String)]
izbaci ruka karta = filter(\par->par/=karta) ruka

poredi :: [(Int, String)] -> [(Int, String)] -> Ordering
poredi [] [] =  EQ
poredi (x:xs) (y:ys) = if x == y then poredi xs ys else if x > y then GT else LT


najduza :: [String] -> String
najduza [x] = x
najduza (x:xs) = if length x >= length(najduza xs) then x else najduza xs

--import Data.Char
--import Data.Char
umanji :: String -> String
umanji str = map toLower str

--razdvoj :: Char -> String -> [String]
--razdvoj sep str = 


spoj :: String -> [String] -> String
spoj sep [x] = x
spoj sep (x:xs) = x ++ sep ++ spoj sep xs 



