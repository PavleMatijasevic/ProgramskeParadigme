% z(majkaIme,cerkaIme,prezime)

sadrzi(X, [X|_]).
sadrzi(X, [_|R]):- sadrzi(X,R).

zene(L):- L = [
    z(_,_,_),
    z(_,_,_),
    z(_,_,_),
    z(_,_,_)
],
sadrzi(z(petra,_,P1),L),
sadrzi(z(milica,_,P2),L),
sadrzi(z(lenka,petra,P3),L),
sadrzi(z(jovana,_,P4),L),


sadrzi(z(I1,petra,_),L),
sadrzi(z(I2,milica,_),L),
sadrzi(z(I3,jovana,_),L),

sadrzi(z(_,I1,peric),L),
sadrzi(z(_,I2,mikic),L),
sadrzi(z(_,I4,lazic),L),
sadrzi(z(_,I3,jovic),L),

not(I4 == lenka),
not(I1 == petra),
not(I2 == milica),
not(I3 == jovana),


not(P3 == lazic),
not(P4 == jovic),
not(P2 == mikic),
not(P1 == peric).












