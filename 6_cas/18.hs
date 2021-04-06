zavisnoY :: Int -> Int -> [(Int, Int)]
zavisnoY a b = [(x, y) | x <- [a..b], y <- [x..b]]

bezbedanRep :: [Int] -> [Int]
bezbedanRep lista
           | length lista == 0 = []
           | otherwise = tail(lista)