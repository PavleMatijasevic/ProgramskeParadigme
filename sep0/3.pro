sadrzi(X,[X|_]).
sadrzi(X,[_|R]):- sadrzi(X,R).



duzinaListe([],0).
duzinaListe([_|R],N):- duzinaListe(R,N1), N is N1+1.


sumaElemenata([],0).
sumaElemenata([G|R], S):- sumaElemenata(R,S1), S is S1 + G.

dodajPocetak(X,L,[X|L]).

dodajKraj(X,[],[X]).
dodajKraj(X,[G|R],[G|R1]):- dodajKraj(X,R,R1).

obrisiGlavu([_],[]).
obrisiGlavu([_|R],R).

obrisiPoslednji([_],[]):-!.
obrisiPoslednji([_|R],[_|R1]):- obrisiPoslednji(R,R1).

obrisi(_,[],[]).
obrisi(X,[X|R],R1):- obrisi(X,R,R1), !.
obrisi(X,[G|R],[G|R1]):- X \== G, obrisi(X, R, R1).

obrisiPrvo(_,[],[]).
obrisiPrvo(X,[X|R],R):-!.
obrisiPrvo(X,[G|R],[G|R1]):- X \== G, obrisiPrvo(X,R,R1).


obrisiK(L,0,L).
obrisiK([_|R],1,R).
obrisiK([G|R],K,[G|R1]):- K1 is K-1, obrisiK(R,K1,R1).


podeli([],[],[]).
podeli([G|R],[G|L1],L2):- G>=0, podeli(R,L1,L2),!.
podeli([G|R],L1,[G|L2]):- G<0, podeli(R,L1,L2).


dupliraj([],[]).
dupliraj([G|R],[G|R1]):- G >= 0, dupliraj(R,R1),!.
dupliraj([G|R],[G,G|R1]):- G<0, dupliraj(R, R1).


zameni(X,Y,[],[]).
zameni(X,Y,[X|R],[Y|R1]):- zameni(X,Y,R,R1),!.
zameni(X,Y,[Y|R],[X|R1]):- zameni(X,Y,R,R1),!.
zameni(X,Y,[G|R],[G|R1]):- zameni(X,Y,R,R1).



















