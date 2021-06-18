
stan(matijasevic,75).
clan(matijasevic,4).

stan(petrovic,80).
clan(petrovic,5).

stan(torbica,20).
clan(torbica,6).


poClanu(Porodica,Prosek):- stan(Porodica,K), clan(Porodica, L), Prosek is K/L.

automobil(S1,golf).
automobil(S2,nisan).
automobil(S3,fiesta).

vlasnik(pavle,S1).
vlasnik(david,S2).
vlasnik(miljan,S3).

brziSifra(S1, S3).
brziSifra(S2, S1).
brziSifra(S2, S3).

brziNaziv(X, Y):- automobil(A, X), automobil(B, Y), brziSifra(A, B).




