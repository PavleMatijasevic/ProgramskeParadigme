%m(majka,cerka,prezime)
sadrzi(X,[X|_]).
sadrzi(X,[_|R]):- sadrzi(X,R).

majke(L):- L = [
    m(_,_,_),
    m(_,_,_),
    m(_,_,_),
    m(_,_,_)
],

sadrzi(m(lenka,petra,P1), L),


sadrzi(m(I3,_,lazic),L),
sadrzi(m(I,_,peric),L),
sadrzi(m(I2,_,jovic),L),
sadrzi(m(I1,_,mikic),L),

sadrzi(m(milica,_,P2),L),
sadrzi(m(petra,_,P4),L),
sadrzi(m(jovana,_,P3),L),
sadrzi(m(_,milica,P2),L),
sadrzi(m(_,lenka,_),L),
sadrzi(m(_,jovana,P3),L),

not(I = petra), not(I2 = jovana),
not(I1 = milica), not(I3 = lenka),
not(P4 = peric),
not(P2 = mikic), not(P3 = jovic),
not(P1 = lazic), not(P1 = peric).