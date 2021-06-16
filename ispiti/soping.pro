% z(ime,prezime,artikal,boja)

sadrzi(X, [X|_]).
sadrzi(X, [_|R]):- sadrzi(X, R).

soping(L):- L = [
    z(_,_,_,_),
    z(_,_,_,_),
    z(_,_,_,_),
    z(_,_,_,_)
],
sadrzi(z(_,ranisavljevic,_,zelena),L),
sadrzi(z(_,P4,cizme,braon),L),
sadrzi(z(milica,P1,sandale,B1),L),
sadrzi(z(kaca, andonov,A1,_),L),
sadrzi(z(anja,P2,_,_),L),
sadrzi(z(_,bogdanovic,_,_),L),
sadrzi(z(jelena,_,A2,_),L),
sadrzi(z(_,_,cipele,B2),L),
sadrzi(z(_,_,_,pink),L),
sadrzi(z(_,_,_,crno),L),
sadrzi(z(_,_,patike,_),L),
sadrzi(z(_,cugurovic,_,_),L),

not(P4 == cugurovic),
not(B2 == pink),
not(A2 == patike),
not(P2 == bogdanovic),
not(A1 == cizme),
not(P1 == ranisavljevic),
not(B1 == crno).

