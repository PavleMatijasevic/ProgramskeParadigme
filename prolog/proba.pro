duzinaListe([], 0):- !.
duzinaListe([_|R], S):- duzinaListe(R, S1), S is S1 + 1.

sumaListe([], 0):- !.
sumaListe([G|R], N):- sumaListe(R, N1), N is N1 + G.