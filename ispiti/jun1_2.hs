module Lib where

data Transakcija = MkTransakcija{
                    ident :: Int,
                    iznos :: Int,
                    posiljalac :: String,
                    primalac :: String
} deriving(Show, Eq)

type AktivneTransakcije = [Transakcija]


t1 = MkTransakcija 1 1000 "Pavle" "Mina"
t2 = MkTransakcija 2 500 "Vladan" "Mina"
t3 = MkTransakcija 3 1500 "Vladan" "Tanja"
t4 = MkTransakcija 4 2000 "Tanja" "Pavle"
t5 = MkTransakcija 5 1000 "Coka" "Misa"

at = [t1,t2,t3,t4,t5]

izlistaj :: AktivneTransakcije -> String -> [Transakcija]
izlistaj ts br = filter(\trans -> (primalac trans) == br || (posiljalac trans) == br) ts


dodaj :: AktivneTransakcije -> Transakcija -> AktivneTransakcije
dodaj ts t = t : ts


ukupno :: AktivneTransakcije -> Int
ukupno ts = sum(map(\trans->(iznos trans))ts)

ukloni :: AktivneTransakcije -> Int -> AktivneTransakcije
ukloni ts br = filter(\trans -> (ident trans) /= br) ts





