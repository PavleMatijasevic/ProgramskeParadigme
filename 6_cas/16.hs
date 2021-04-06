glava :: [a] -> a
glava (el:_) = el

rep :: [a] -> [a]
rep (_:el) = el

parni :: Int -> Int -> [Int]
parni a b 
       | mod a 2 == 0 &&  mod b 2 == 0 = [a, a+2..b]
       | mod a 2 == 0 = [a, a+2..b-1]
       | mod b 2 == 0 = [a+1, a+3..b]
       | otherwise = [a+1,a+3..b-1]

neparni :: Int -> Int -> [Int]
neparni a b
         | mod a 2 == 1 && mod b 2 == 1 = [a,a+2..b]
         | mod a 2 == 1 = [a, a+2..b-1]
         | mod b 2 == 1 = [a+1, a+3.. b]
         | otherwise = [a+1, a+3..b-1]
         