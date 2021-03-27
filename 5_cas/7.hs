proizvodPrvih :: Int -> Int
proizvodPrvih n = if n < 1 then 1 else n * proizvodPrvih(n-1)