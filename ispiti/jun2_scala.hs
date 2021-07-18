
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

razdvoj :: Char -> String -> [String]
razdvoj sep rec = undefined
-- radi
spoj :: String -> [String] -> String
spoj sep [] = ""
spoj sep [x] = x
spoj sep (x:xs) = x ++ sep ++ spoj sep xs




