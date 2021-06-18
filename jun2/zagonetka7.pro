%z(ime,prezime,vrsta,boja)
sadrzi(X,[X|_]).
sadrzi(X,[_|R]):- sadrzi(X, R).

drugarice(L):- L = [
    z(milica,P2,sandale,B1),
    z(kaca,andonov,V1,_),
    z(anja,P1,_,_),
    z(jelena,_,V2,_)
],
sadrzi(z(_,ranisavljevic,_,zelena),L),
sadrzi(z(_,_,patike,_),L),
sadrzi(z(_,bogdanovic,_,_),L),
sadrzi(z(_,P3,cizme,braon),L),
sadrzi(z(_,_,_,crne),L),
sadrzi(z(_,cugurovic,_,_),L),
sadrzi(z(_,_,cipele,B2),L),
sadrzi(z(_,_,_,pink),L),


not(B2 == pink),
not(P3 == cugurovic),
not(P2 == ranisavljevic),
not(V2 == patike),
not(P1 == bogdanovic),
not(V1 == cizme),
not(B1 == crne).


