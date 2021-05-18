
sadrzi(X,[X|_]):- !.
sadrzi(X, [G|R]):- G\==X, sadrzi(X, R).

duzinaListe([], 0).
duzinaListe([_|R], N):- duzinaListe(R, N1), N is N1 + 1.

sumaListe([], 0).
sumaListe([G|R], S):- sumaListe(R, S1), S is S1 + G.

proizvodListe([], 1).
proizvodListe([G|R], P):- proizvodListe(R, P1), P is P1 * G.


ucitaj(N, _):- N<0, !.
ucitaj(0, []).
ucitaj(N, [G|R]):- N>=1, write('Unesite element: '), read(G), nl, N1 is N-1, ucitaj(N1, R).
