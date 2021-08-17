
import Data.Char

--radi
najduza :: [String] -> String
najduza [] = ""
najduza (x:xs) = if length x > length(najduza xs) then x else najduza xs


-- radi
umanji :: String -> String
umanji rec = map toLower rec
--radi
uvecaj :: String -> String
uvecaj rec = map toUpper rec


-- razdvoj ',' "jedan, dva, tri"
-- ->        ["jedan", "dva", "tri"]


razdvoj ::  Char -> String -> [String]
razdvoj sep "" = []
razdvoj sep str = [podniska] ++ razdvoj sep ostatak
    where s = takeWhile(/=sep) str
          podniska = take (length(s)) str
          ostatak = drop (length(s)+1) str


-- radi
spoj :: String -> [String] -> String
spoj sep [] = ""
spoj sep [x] = x
spoj sep (x:xs) = x ++ sep ++ spoj sep xs




