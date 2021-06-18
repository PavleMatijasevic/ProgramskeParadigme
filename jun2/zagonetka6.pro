% p(ime,prezime,igra,hrana) 4 osobe

sadrzi(X, [X|_]).
sadrzi(X, [_|R]):- sadrzi(X, R).

igraonica(L):- L = [
    p(_,_,_,_),
    p(_,_,_,_),
    p(_,_,_,_),
    p(_,_,_,_)
],
sadrzi(p(marrko,_,I1,nacos),L),
sadrzi(p(_,_,stoniFudbal,_),L),
sadrzi(p(_,markovic,_,kokice),L),
sadrzi(p(_,milic,_,_),L),
sadrzi(p(milica,P1,_,_),L),
sadrzi(p(P2,_,bilijar,pica),L),
sadrzi(p(ivana,stefanovic,_,_),L),
sadrzi(p(nemanja,P4,miniGolf,_),L),
sadrzi(p(_,P5,kuglanje,_),L),
sadrzi(p(_,radosavljevic,_,_),L),
sadrzi(p(_,_,_,sladoled),L),

not(P5 == radosavljevic),
not(P4 == radosavljevic),
not(P2 == milica),
not(P1 == milic),
not(I1 == stoniFudbal).



