module Lib where

data Transakcija = MkTransakcija {
                                    identifikator :: Int,
                                    iznos :: Int,
                                    posiljalac :: String,
                                    primalac :: String
}deriving(Show,Eq)

type AktivneTransakcije = [Transakcija]
t1 = MkTransakcija 1 1000 "001" "002"
t2 = MkTransakcija 2 1500 "003" "004"
t3 = MkTransakcija 3 500  "002" "003"
at = [t1, t2, t3]

izlistaj :: AktivneTransakcije -> String -> [Transakcija]
izlistaj ts br = filter(\tr->((posiljalac tr)==br) || ((primalac tr)==br)) ts

dodaj :: AktivneTransakcije -> Transakcija -> AktivneTransakcije
dodaj ts t = t:ts

--ukloni :: AktivneTransakcije -> Transakcija -> AktivneTransakcije
--ukloni ts ident = filter(\(ide tr) -> ide == ident) ts


ukupno :: AktivneTransakcije -> Int
ukupno ts = sum(map(\t-> iznos t)ts)








