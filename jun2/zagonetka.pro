
% k(boja, nacija, pice, jelo, ljubimac)

sadrzi(X, [X|_]).
sadrzi(X, [_|R]):- sadrzi(X, R).

desno(X,Y,[Y,X|_]).
desno(X,Y,[_|R]):- desno(X, Y, R).

pored(X,Y,[X,Y|_]).
pored(X,Y,[Y,X|_]).
pored(X, Y, [_|R]):- pored(X, Y, R).


kuce(L):- L = [
   k(_,norveska,_,_,_),
   k(plava,_,_,_,_),
   k(_,_,mleko,_,_),
   k(_,_,_,_,_),
   k(_,_,_,_,_) 
],
sadrzi(k(crvena,englez,_,_,_),L),
sadrzi(k(_,spanija,_,_,pas),L),
sadrzi(k(zelena,_,kafa,_,_),L),
sadrzi(k(_,ukrajna,caj,_,_),L),
sadrzi(k(_,_,_,spagete,puz),L),
desno(k(zelena,_,kafa,_,_),k(bela,_,_,_,_),L),
sadrzi(k(zuta,_,_,pica,_),L),
pored(k(_,_,_,piletina,_),k(_,_,_,_,lisica),L),
pored(k(_,_,_,pica,_),k(_,_,_,_,konj), L),
sadrzi(k(_,_,sokPomorandza,brokoli,_),L),
sadrzi(k(_,japan,_,susi,_),L),
sadrzi(k(_,_,_,_,zebra),L),
sadrzi(k(_,_,voda,_,_),L).


zagonetka(X, Y):- kuce(L), sadrzi(k(_,X,_,_,zebra),L), sadrzi(k(_,Y,voda,_,_),L).


