

trougao:: Int->[(Int, Int, Int)]
trougao n = [(a,b,c) | a<-[1..n], b<-[1..n], c<-[1..n], a+b>c, a+c>b, b+c>a]

sviRazlicitiP (x,y,z) = if x/=y && x/=z && y/=z then True else False


raznostranicni :: [(Int, Int, Int)] -> Int
raznostranicni [] = 0
raznostranicni (x:xs) = if sviRazlicitiP x then 1 + raznostranicni xs else raznostranicni xs
