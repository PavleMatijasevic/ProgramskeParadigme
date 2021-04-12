data BulovskaAlgebra = Tacno | Netacno deriving Show

data Oblik = Kvadrat Float
           | Pravougaonik Float Float
           | Krug Float
           | Trougao Float Float Float
           deriving Show

data Zivotinja = Pas 
               | Macka
               | Papagaj
               deriving Show
data Ljubimac = MakeLjubimac{
    ime :: String
    , godine :: Int
    , tip :: Zivotinja
}deriving Show
