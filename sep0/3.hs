module Lib where

data Transakcija = MkTransakcija{
    ident :: Int,
    iznos :: Int,
    posiljalac :: String,
    primalac :: String
} deriving(Show,Eq)

type AktivneTransakcije = [Transakcija]

t1 = MkTransakcija 1 1000 "Paja" "Seka"
t2 = MkTransakcija 2 500 "Matija" "Tanja"
t3 = MkTransakcija 3 700 "Matija" "Paja"
t4 = MkTransakcija 4 650 "Tanja" "Mina"

at = [t1,t2,t3,t4]

izlistaj :: AktivneTransakcije -> String -> [Transakcija]
izlistaj ts br = filter(\tr-> ((posiljalac tr) == br) || (primalac tr)==br) ts

dodaj :: AktivneTransakcije -> Transakcija -> AktivneTransakcije
dodaj ts t = t : ts

ukloni :: AktivneTransakcije -> Int -> AktivneTransakcije
ukloni ts id = filter(\tr->(ident tr)/=id) ts

ukupno :: AktivneTransakcije -> Int
ukupno ts = sum(map(\tr->iznos tr)ts)











