type Tacka = (Float, Float)
type Putanja = [Tacka]


tacka :: Float -> Float  -> Tacka
tacka a b = (a,b)

putanja :: [Tacka] -> Putanja
putanja = id 


duzinaPutanje :: Putanja -> Int 
duzinaPutanje = length 








