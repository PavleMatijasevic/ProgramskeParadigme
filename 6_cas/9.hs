uvecajListu :: [Int] -> [Int]
uvecajListu lista = map(+1) lista

ispisiVeceOdPet :: [Int] -> [Int]
ispisiVeceOdPet lista = filter(>5) lista

ispisiManjeOdPet :: [Int] -> [Int]
ispisiManjeOdPet lista = filter(<5) lista

sviVeciOdPet :: [Int] -> Bool
sviVeciOdPet lista = all(>5) lista


barJedanVeciOdPet :: [Int] -> Bool
barJedanVeciOdPet lista = any(>5) lista