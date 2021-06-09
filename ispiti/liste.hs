
-- vraca max liste
getMax :: [Float] -> Float
getMax [x] = x
getMax (x:xs)
            | (getMax xs) > x = getMax xs
            | otherwise = x


getMin::[Float] -> Float
getMin [x] = x
getMin (x:xs)
       | (getMin xs) < x = getMin xs
       | otherwise = x

