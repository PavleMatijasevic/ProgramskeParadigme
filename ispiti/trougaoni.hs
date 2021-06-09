

trougaoni :: Int -> [(Int, Int)]
trougaoni n = [(x,div (x*(x+1)) 2)| x <- [1..n]]

