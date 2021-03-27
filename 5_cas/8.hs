prostTest :: Int -> Int -> Bool
prostTest n k
 | n == k = True
 | mod n k == 0 = False
 | otherwise = prostTest n (k+1)

prost :: Int -> Bool
prost x = prostTest x 2