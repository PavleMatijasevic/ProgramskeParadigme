
import Data.Char
import Data.List

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


razdvoj :: Char -> String -> [String]
razdvoj sep str = undefined

-- jos samo poslednji da se skine separator
spoj :: String -> [String] -> String
spoj _ [] = ""
spoj sep (x:xs) = x ++ sep ++ spoj sep xs




