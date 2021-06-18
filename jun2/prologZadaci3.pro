duzinaListe([], 0).
duzinaListe([_|R], N):- duzinaListe(R, N1), N is N1+1.

sumaElemenata([], 0).
sumaElemenata([G|R], N):- sumaElemenata(R, N1), N is N1+G.


ucitaj(N,_):- N<0, !.
ucitaj(0,[]).
ucitaj(N, [G|R]):- N>=1, write('Unesite element: '), read(G), nl, M is N-1, ucitaj(M,R).


dodajPocetak(X, [], [X]).
dodajPocetak(X, L, [X|L]).


dodajKraj(X,[],[X]).
dodajKraj(X,[G|R],[G|NR]):- dodajKraj(X, R, NR).

obrisiPrvi([],[]).
obrisiPrvi([_|R], R).


obrisiPoslednji([_],[]).
obrisiPoslednji([G|R],[G|NR]):- obrisiPoslednji(R, NR).


obrisi(_, [], []).
obrisi(X, [X|R], R1):- obrisi(X, R, R1), !.
obrisi(X, [G|R], [G|NR]):- obrisi(X, R, NR).



obrisiK([],K,[]):- K>0.
obrisiK([_|R], 1, R):- !.
obrisiK([G|R], K, [G|R1]):- K>1,  K1 is K-1, obrisiK(R,K1,R1).


podeli([],[],[]).
podeli([G|R],[G|R1],L2):- G > 0, podeli(R, R1, L2).
podeli([G|R],L1, [G|R1]):- G<0, podeli(R,L1,R1). 


dupliraj([],[]).
dupliraj([G|R],[G,G|R1]):- G<0, dupliraj(R,R1).


zameni(_, _, [], []).
zameni(X, Y, [X|R], [Y|R1]):- zameni(X, Y, R, R1), !.
zameni(X, Y, [Y|R], [X|R1]):- zameni(X, Y, R, R1), !.
zameni(X, Y, [G|R], [G|R1]):- G\==X, G \==Y, zameni(X, Y, R, R1).


maxEl([G], G).
maxEl([G|R], N):- maxEl(R, Y), G < Y, N is Y, !.
maxEl([G|R], N):- maxEl(R, Y), G >= Y, N is G.




