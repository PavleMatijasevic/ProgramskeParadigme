automobil(a1,audi).
automobil(x2, bmw).
automobil(c3, citroen).

vlasnik(pavle, a1).
vlasnik(marrko, c3).
vlasnik(miljan, x2).

brziSifra(a1, x2).
brziSifra(a1, c3).
brziSifra(x2, c3).

brziNaziv(X, Y):- automobil(X1, X), automobil(Y1, Y),brziSifra(X1, Y1).
imaAutomobil(X):- vlasnik(X, X1), automobil(X1, _).
imaBrzi(X, Y):- vlasnik(X, X1), vlasnik(Y, Y1), brziSifra(X1, Y1).
