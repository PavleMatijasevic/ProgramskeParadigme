deljiv :: Int -> Int -> Int
deljiv a b
     | a == b = 0
     | mod a b == 0 = 1 + deljiv a (b+1)
     | otherwise = deljiv a (b+1)



brojDelilaca :: Int -> Int
brojDelilaca n = deljiv n 2
-- radi