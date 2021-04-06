sumaKvadrata :: Int -> Int
sumaKvadrata n 
   | n == 0 = 0
   | n == 1 = 1
   | otherwise = n*n + sumaKvadrata(n-1)