% i(ime,prezime,igra,hrana)

sadrzi(X,[X|_]).
sadrzi(X,[_|R]):- sadrzi(X, R).



prijatelji(L):- L = [
    i(_,_,_,_),
    i(_,_,_,_),
    i(_,_,_,_),
    i(_,_,_,_)
],
sadrzi(i(marrko,_,G1,nacos),L),
sadrzi(i(_,markovic,_,kokice),L),
sadrzi(i(milica,P1,I1,_),L),
sadrzi(i(_,_,bilijar,pica), L),
sadrzi(i(ivana,stefanovic,_,_),L),
sadrzi(i(nemanja,P2,miniGolf,_),L),
sadrzi(i(_,P3,kuglanje,_),L),
sadrzi(i(_,radosavljevic,_,_),L),
sadrzi(i(_,milic,_,_),L),
sadrzi(i(_,_,_,sladoled),L),
sadrzi(i(_,_,stoniFudbal,_),L),

not(G1 == stoniFudbal),
not(P3 == radosavljevic),
not(P2 == radosavljevic),
not(I1 == bilijar),
not(P1 == milic).









