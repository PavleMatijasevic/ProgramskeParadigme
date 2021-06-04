%par(muz, zena, maskamusko, maskazensko)
sadrzi(X,[X|_]).
sadrzi(X,[_|R]):- sadrzi(X, R).

pre(X,Y,[X|R]):- sadrzi(Y, R).
pre(X,Y,[_|R]):- pre(X,Y,R).



parovi(L):- L = [
    p(prvimuski,_,_,_),
    p(_,_,_,_),
    p(marrko,_,_,macka),
    p(_,_,_,_)
],
 sadrzi(p(vasa,_,_,_),L),
 sadrzi(p(_,_,medved,_),L),
 sadrzi(p(pera,Z,pajapatak,vestica),L),
 sadrzi(p(_,ZB,betmen,MZB),L),
 pre(p(_,_,medved,_),p(marrko,_,_,macka),L),
 pre(p(prvimuski,_,_,_),p(_,_,princ,_),L),
 pre(p(laza,_,_,_),p(_,bojana,_,_),L),
 pre(p(_,marija,_,_),p(_,bojana,_,_),L),
 pre(p(_,_,_,ciganka),p(_,ana,_,_),L),
 pre(p(_,_,_,snezana),p(_,ivana,_,_),L),
 not(prvimuski=vasa), not(Z = bojana), not(ZB = ana), not(MZB = ciganka).
 