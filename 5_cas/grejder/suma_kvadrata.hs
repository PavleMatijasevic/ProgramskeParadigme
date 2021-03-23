sumaKvadrata :: Int -> Int
sumaKvadrata n =
       if n < 0 then 0
       else n*n + sumaKvadrata(n-1)