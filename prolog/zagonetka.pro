clan(X, [X|_]).
clan(X, [_|R]):- clan(X, R).

desno(X, Y, [Y, X|_]).
desno(X, Y, [_|R]):- desno(X,Y,R).

pored(X, Y, [X, Y|_]).
pored(X, Y, [Y, X|_]).
pored(X, Y, [_|R]):- pored(X,Y,R).

% boja, nacija, pice, jelo, ljubimac
kuce(L):- L = [k(_,norveska, _,_,_),
    k(plava, _,_,_,_),
    k(_,_,mleko,_,_),
    k(_,_,_,_,_),
    k(_,_,_,_,_)],

    clan(k(crvena,engleska,_,_,_),L),
    clan(k(_,spanija,_,_,pas), L),
    clan(k(zelena, _,kafa,_,_), L),
    clan(k(_,ukrajina, caj, _, _), L),
    desno(k(zelena,_,kafa,_,_), k(bela,_,_,_,_), L),
    clan(k(_,_,_,spagete,puz),L),
    clan(k(zuta,_,_pica,_),L),
    pored(k(_,_,_,piletina,_), k(_,_,_,_,lisica), L),
    pored(k(_,_,_,pica,_), k(_,_,_,_,konj), L),
    clan(k(_,_,sok,brokoli,_), L),
    clan(k(_,japan,_,susi,_),L),
    clan(k(_,_,_,_,zebra), L),
    clan(k(_,_,voda,_,_),L).


zagonetka(X, Y):- kuce(L), clan(k(_,X,voda,_,_),L), clan(k(_, Y, _,_,zebra), L).
