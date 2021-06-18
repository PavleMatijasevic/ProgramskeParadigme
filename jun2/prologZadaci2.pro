ucenik(u1,pavle,prvo).
ucenik(u2,miljan,prvo).
ucenik(u3,marrko,prvo).
ucenik(u4,misko,drugo).
ucenik(u5,jelena,drugo).
ucenik(u6,joca,drugo).

ocene(u1,p1,5).
ocene(u1,p2,5).
ocene(u1,p3,4).
ocene(u2,p1,3).
ocene(u2,p2,4).
ocene(u2,p3,5).
ocene(u3,p1,5).
ocene(u3,p2,5).
ocene(u3,p3,5).
ocene(u4,p1,2).
ocene(u4,p2,4).
ocene(u4,p3,3).
ocene(u5,p1,5).
ocene(u5,p2,5).
ocene(u5,p3,5).
ocene(u6,p1,3).
ocene(u6,p2,4).
ocene(u6,p3,4).

predmet(p1,matematika,5).
predmet(p2,engleski,4).
predmet(p3,hemija,3).

bar2PeticeSifra(S):- ucenik(M, _, _), ocene(M, A, 5), ocene(M, B, 5), predmet(_, A, _), predmet(_, B, _).

bar2PeticeIme(X):- ucenik(A,X,_), ocene(A,B,5), ocene(A,C,5).















