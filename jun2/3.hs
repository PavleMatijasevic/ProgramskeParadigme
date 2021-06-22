data BulovskiTip = Tacno | Netacno

data Oblik = Kvadrat Float 
            | Pravougaonik  Float Float
            | Krug  Float
            | Trougao Float Float Float
            deriving Show  

data Zivotinja = Pas | Macka | Papagaj deriving Show 

data Ljubimac = MkLjubimac{
    ime::String,
    godine::Int,
    tip::Zivotinja
} deriving Show 


data Pravougaonik = MkPravougaonik {
    a :: Int,
    b :: Int
}  

instance Show Pravougaonik where
    show (MkPravougaonik a b) = "Pravougaonik sa stranicama: " ++ show a ++ " i " ++ show b

instance Eq Pravougaonik where
    (==) p1 p2 = (a p1) == (a p2) && (b p1) == (b p2) 



