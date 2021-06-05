%par(muz, zena, maskamusko, maskazensko)
sadrzi(X,[X|_]).
sadrzi(X,[_|R]):- sadrzi(X, R).

pre(X,Y,[X|R]):- sadrzi(Y,R).
pre(X,Y,[_|R]):- pre(X,Y,R).



parovi(L):- L = [
    p(M,_,_,_),
    p(_,_,_,_),
    p(marrko,_,_,macka),
    p(_,_,_,_)
],
sadrzi(p(pera,Z,pajapatak,vestica),L),  
sadrzi(p(laza,_,_,_),L),
pre(p(laza,_,_,_),p(_,marija,_,_),L),
sadrzi(p(_,ana,_,_),L),
sadrzi(p(_,_,_,ciganka),L),
sadrzi(p(_,ivana,_,_),L),
sadrzi(p(_,_,medved,_),L),
sadrzi(p(_,K,betmen,I),L),
sadrzi(p(vasa,_,_,_),L),
pre(p(vasa,_,_,_), p(_,_,princ,_), L),
pre(p(laza,_,_,_),p(_,bojana,_,_),L),
pre(p(_,marija,_,_),p(_,bojana,_,_),L),
pre(p(_,ivana,_,_),p(_,_,_,snezana),L),
not(Z = bojana),
not(K = ana),
not(I = ciganka),
not(M = vasa).




