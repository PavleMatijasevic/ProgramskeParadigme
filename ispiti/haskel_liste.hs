max_liste :: [Float] -> Float
max_liste [x] = x
max_liste (x:xs) 
            | (max_liste xs) > x = max_liste xs
            | otherwise = x

min_liste :: [Float] -> Float
min_liste [x] = x
min_liste (x:xs)
    | (min_liste xs) < x = min_liste xs
    | otherwise = x