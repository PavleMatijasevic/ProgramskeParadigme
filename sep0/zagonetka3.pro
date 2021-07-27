
sadrzi(X,[X|_]).
sadrzi(X,[_|R]):- sadrzi(X,R).

pre(X,Y,[X|R]):- sadrzi(Y,R).
pre(X,Y,[_|R]):- pre(X,Y,R).

%% p(muzIme,muzMaska,zenaIme,zenaMaska)
maske(L):- L = [
    p(I,_,_,_),
    p(_,_,_,_),
    p(marko,_,_,macka),
    p(_,_,_,_)
],
sadrzi(p(vasa,_,_,_),L),
pre(p(_,medved,_,_),p(marko,_,_,macka),L),
pre(p(vasa,_,_,_),p(_,princ,_,_),L),
sadrzi(p(pera,pajaPatak,U,vestica),L),
sadrzi(p(_,_,bojana,_),L),
pre(p(laza,_,_,_),p(_,_,marija,_),L),
pre(p(laza,_,_,_),p(_,_,bojana,_),L),
pre(p(_,_,marija,_),p(_,_,bojana,_),L),
%%pre(p(_,Q,_,ciganka),p(_,Q,ana,_),L),
sadrzi(p(_,betmen,A,B),L),
sadrzi(p(_,_,ana,_),L),
sadrzi(p(_,_,_,ciganka),L),
sadrzi(p(_,_,ivana,_),L),
sadrzi(p(_,_,_,snezana),L),

pre(p(_,_,ivana,_),p(_,_,_,snezana),L),

not(A == ana),
not(B == ciganka),
%%not(Q == betmen),
not(U == bojana),
not(I == vasa).
















