ucenik(S1,pavle,prvo).
ucenik(S2,miljan,prvo).
ucenik(S3,joca,drugo).
ucenik(S4,misko,drugo).
ucenik(S5,bobeks,trece).
ucenik(S6,maricke,trece).

ocene(S1,P1,5).
ocene(S1,P2,5).

ocene(S2,P1,4).
ocene(S2,P2,5).

ocene(S3,P1,3).
ocene(S3,P2,4).

ocene(S4,P1,5).
ocene(S4,P2,5).

ocene(S5,P1,3).
ocene(S5,P2,4).

ocene(S6,P1,5).
ocene(S6,P2,2).

predmet(P1,mata,5).
predmet(P2,fizika,4).


bar2PeticeSifra(S):- ucenik(S,_,_), ocene(S,B,5), ocene(S,A,5).










