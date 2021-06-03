maksimum(A, B, M):- B >= A, M is B.
maksimum(A, B, M):- A > B, M is B.

suma(1, 1).
suma(N, S):- N>1, N1 is N - 1, suma(N1, S1), S is S1 + N.

sumaParnih(2, 2).
sumaParnih(N, S):- N>2, N1 is N-2, sumaParnih(N1, S1), S is S1 + N.

proizvod(1, 1).
proizvod(N, P):- N > 1, N1 is N - 1, proizvod(N1, P1), P is P1 * N.

proizvodNeparnih(1, 1).
proizvodNeparnih(N, P):- N > 1, N1 is N-2, proizvodNeparnih(N1, P1), P is P1 * N.


cifra(0, nula).
cifra(1, jedan).
cifra(2, dva).
cifra(3, tri).
cifra(4, cetiri).
cifra(5, pet).
cifra(6, sest).
cifra(7, sedam).
cifra(8, osam).
cifra(9, devet).

cifra(N):- N < 1, !.
cifra(N):- N > 1, N < 10, cifra(N, M), write(M), nl, !.

ucenik(UC1, Pavle, Prvo).
ucenik(UC2, Mina, Drugo).
ucenik(UC3, Miki, Trece).
ucenik(UC4, Marrko, Prvo).

ocene(UC1, PR1, 5).
ocene(UC1, PR2, 2).
ocene(UC2, PR1, 4).
ocene(UC2, PR2, 4).
ocene(UC3, PR2, 5).
ocene(UC3, PR1, 4).
ocene(UC4, PR1, 5).
ocene(UC4, PR2, 3).

predmet(PR1, Mata, 5).
predmet(PR2, Fizika, 4).

bar2PeticeSifra(S):- ucenik(M, _, _), ocene(M, A, 5), ocene(M, B, 5), predmet(_, A, _), predmet(_, B, _).


automobil(S1, fiesta).
automobil(S2, nisan).
automobil(S3, golf).

vlasnik(Pavle, S3).
vlasnik(Miljan, S1).
vlasnik(David, S2).

brziSifra(S3, S2).
brziSifra(S3, S1).
brziSifra(S1, S2).

brziNaziv(X, Y):- automobil(A, X), automobil(B, Y), brziSifra(A, B).
imaAutomobil(X):- vlasnik(X, _).
imaBrzi(X,Y):- vlasnik(X, A), vlasnik(Y, B), brziSifra(A, B).

stan(Matijasevic, 75).
clan(Matijasevic, 4).

poClanu(Porodica, Prosek):- stan(Porodica, A), clan(Porodica, B), Prosek is A/B.

sadrzi(X, [X|_]):- !.
sadrzi(X, [G|R]):- G \== X, sadrzi(X, R).

sumaListe([], 0).
sumaListe([G|R], S):- number(G), sumaListe(R, S1), S is S1 + G.


duzinaListe([], 0).
duzinaListe([G|R], S):-number(G), duzinaListe(R, S1), S is 1 + S1.


dodajPocetak(X, [], [X]).
dodajPocetak(X, L, [X|L]).

dodajKraj(X, [], [X]).
dodajKraj(X, [G|R], [G|NR]):- dodajKraj(X, R, NR).

obrisiPrvi([G|R], R).


obrisiPoslednji([], _):- fail.
obrisiPoslednji([_],[]):- !.
obrisiPoslednji([G|R], [G|NR]):- obrisiPoslednji(R, NR).

obrisi(_, [], []).
obrisi(X, [X|R], R1):- obrisi(X, R, R1), !.
obrisi(X, [G|R], [G|NR]):- G\==X,  obrisi(X, R, NR).

obrisiK([], _, []).
obrisiK([G|R], 1, R):- !.
obrisiK([G|R], K, [G|NR]):- K>1, K1 is K-1, obrisiK(R, K1, NR).


dupliraj([],[]).
dupliraj([G|R], [G,G|R1]):- G=<0, dupliraj(R, R1).
dupliraj([G|R], [G|R1]):- G>0, dupliraj(R, R1).



zameni(X, Y, [], []).
zameni(X, Y, [X|R], [Y|R1]):- zameni(X,Y,R, R1), !.
zameni(X, Y, [Y|R], [X|R1]):- zameni(X,Y,R,R1), !.
zameni(X, Y, [G|R], [G|R1]):- G \== X, G \== Y, zameni(X, Y, R, R1).

maxEl(L, X)

maxEl([X], M):- M is X, !.
maxEl([G|R], X):- maxEl(R, Y), G < Y, X is Y, !.
maxEl([G|R], X):- maxEl(R, Y), G>= Y, X is G.





