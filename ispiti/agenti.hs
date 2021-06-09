sifruj :: [Int] -> Int -> [Int]
sifruj [] _ = []
sifruj lista 0 = lista
sifruj lista k = pocetak ++ [umetnut] ++ sifruj ostatak k
    where s = take k lista
          pocetak = map(\t -> if t>0 then t+1 else t-1) s
          umetnut = if (mod k 2) == 0 then sum s else product s
          ostatak = drop k lista


desifruj :: [Int] -> Int -> [Int]
desifruj [] _ = []
desifruj lista 0 = lista
desifruj lista k = pocetakk ++ desifruj ostatakk k
    where s = take k lista
          pocetakk = map(\t-> if t>0 then t-1 else t+1) s
          ostatakk = drop (k+1) lista