fib :: Int -> Int
fib n 
    |  n == 1 = 1
    |  n == 2 = 1
    | otherwise = fib(n-1) + fib(n-2) 