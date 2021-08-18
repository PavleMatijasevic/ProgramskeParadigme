import Data.Char

najduza :: [String] -> String
najduza [] = ""
najduza (x:xs) = if length x > length(najduza xs) then x else najduza xs

umanji :: String -> String
umanji str = map(toLower) str

razdvoj :: Char -> String -> [String]
razdvoj sep "" = []
razdvoj sep str = [prePrvog] ++ razdvoj sep ostatak
    where s = takeWhile(/=sep) str
          prePrvog = take (length(s)) str
          ostatak = drop (length(s)+1) str

spoj :: String -> [String] -> String
spoj sep [x] = x
spoj sep (x:xs) = x ++ sep ++ spoj sep xs



