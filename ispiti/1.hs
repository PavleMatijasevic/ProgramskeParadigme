
trougao :: Int-> [(Int,Int,Int)]
trougao n = [(x, y, z) | x <- [1..n], y<-[1..n], z<-[1..n], x+y>z]


raz (a,b,c) = if a/=b && a/=c && b/=c then True else False 

raznostranicni :: [(Int, Int, Int)] -> Int
raznostranicni (x:xs) = if raz x then 1 + raznostranicni xs else raznostranicni xs

