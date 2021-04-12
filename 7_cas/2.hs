data Pravougaonik = MakePravougaonik{
    a :: Int
   ,b :: Int
} 

instance Show Pravougaonik where
       show (MakePravougaonik a b ) = 
            "(" ++ show a ++ ", " ++ show b ++ ")"