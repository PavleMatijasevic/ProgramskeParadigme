%d(ime,prezime,godine) petoro ih ima
sadrzi(X, [X|_]).
sadrzi(X, [_|R]):- sadrzi(X, R).
deca(L):- L = [
    d(_,_,2),
    d(_,_,3),
    d(_,_,4),
    d(_,_,5),
    d(_,_,6)
],
sadrzi(d(lazar,jankovic,_),L),
sadrzi(d(kata,_,G1), L),
sadrzi(d(_,ivanovic,G2),L),
sadrzi(d(nevenka,_,G3),L),
sadrzi(d(_,filipovic,G4),L),
sadrzi(d(marrko,_,G5),L),
sadrzi(d(ognjen,_,G6),L),
sadrzi(d(_,hadzic,G7),L),
sadrzi(d(_,grbovic,_),L),


G6 =:= G7 * 2,
G4 =:= G5 + 3,
G1 =:= G2 + 1,
G2 =:= G3 + 1.