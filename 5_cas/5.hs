sumaPrvih :: Int -> Int
sumaPrvih n = 
     if n == 0 then 0 else n + sumaPrvih(n-1)