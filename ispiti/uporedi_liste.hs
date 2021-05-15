uporedi :: [Int] -> [Int] -> Int
uporedi lista1 lista2
      | length lista1 > length lista2 = 1
      | length lista2 > length lista1 = -1
      | otherwise = 0