brojDelilacaPomocna :: Int -> Int -> Int 
brojDelilacaPomocna x k 
  | k == 1 = 0
  | mod x k == 0 = 1 + brojDelilacaPomocna x (k-1)
  | otherwise = brojDelilacaPomocna x (k-1)

brojDelilaca :: Int -> Int
brojDelilaca x = brojDelilacaPomocna x (x-1)