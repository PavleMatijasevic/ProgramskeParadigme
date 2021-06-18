% p(muzIme,muzMaska,zenaIme,zenaMaska)

sadrzi(X, [X|_]).
sadrzi(X, [_|R]):- sadrzi(X, R).

pre(X, Y, [X|R]):- sadrzi(Y,R).
pre(X, Y, [_|R]):- pre(X, Y, R).


parovi(L):- L = [
    p(P,_,_,_),
    p(_,_,_,_),
    p(marrko,_,_,macka),
    p(_,_,_,_)
],
sadrzi(p(_,medved,_,_),L),
sadrzi(p(_,princ,_,_),L),
sadrzi(p(pera,pajaPatak,B,vestica),L),
sadrzi(p(laza,_,_,_),L),
sadrzi(p(_,_,marija,_),L),
sadrzi(p(_,_,bojana,_),L),
sadrzi(p(_,_,_,ciganka),L),
sadrzi(p(_,_,ana,_),L),
sadrzi(p(_,betmen,A,C),L),
sadrzi(p(_,_,_,snezana),L),
sadrzi(p(_,_,ivana,_),L),
sadrzi(p(vasa,_,_,_),L),

pre(p(_,_,ivana,_),p(_,_,_,snezana),L),
pre(p(_,_,_,ciganka),p(_,_,ana,_),L),
pre(p(vasa,_,_,_),p(_,princ,_,_),L),
pre(p(laza,_,_,_),p(_,_,marija,_),L),
pre(p(laza,_,_,_),p(_,_,bojana,_),L),
pre(p(_,_,marija,_),p(_,_,bojana,_),L),


not(A == ana),
not(C == ciganka),
not(B == bojana),
not(P == vasa).
















