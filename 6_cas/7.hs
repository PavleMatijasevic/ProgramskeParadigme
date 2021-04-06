-- 1 1 2 3 5 8 13
fib :: Int -> Int 
fib a 
    | a == 1 = 1
    | a == 2 = 1
    | otherwise = fib(a-1) + fib(a-2)