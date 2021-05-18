

%dodajPocetak(X, L, NL)   dodaje X na pocetak liste L 

dodajPocetak(X, L, [X|L]).


dodajKraj(X,[],[X]).
dodajKraj(X, [G|R], [G|K]):- dodajKraj(X, R, K).

obrisiPrvi([], []).
obrisiPrvi([_|R], R).

obrisiPoslednji([], _):- fail.
obrisiPoslednji([_], []):- !.
obrisiPoslednji([G|R], [G|R1]):- obrisiPoslednji(R, R1).


% brise svako pojavljivanje
obrisi(_,[], []).
obrisi(X,[X|R], R1):- obrisi(X, R, R1), !.
obrisi(X, [G|R], [G|R1]):- obrisi(X,R,R1).

obrisiPrvo(_, [], []).
obrisiPrvo(X, [X|R], R):- !.
obrisiPrvo(X,[G|R], [G|R1]):- obrisiPrvo(X, R, R1).

obrisiK([],K,[]):- K>0.
obrisiK([_|R], 1, R):- !.
obrisiK([G|R], K, [G|R1]):- K>1, K1 is K-1, obrisiK(R, K1, R1).



