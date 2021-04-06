spoji :: [[a]] -> [a]
spoji lista = [x | podlista <- lista, x <- podlista]


sufiksi :: [a] -> [[a]]
sufiksi [] = [[]]
sufiksi (glava:rep) = (glava:rep) : sufiksi rep
