film(kadPorastemBicuKengur, komedija, srdjanDragojevic, braca).
film(munje, krimi, tarantino, braca).
glumac(braca,sergejTrifunovic,1988,beograd).
film(nekiFilm, drama, srdjanDragojevic, baca).
glumac(baca, miodragRadonjic, 1990, lapovo).


% glumacBarDva(X):-glumac(A, X, _, _), film(F1, _, X, A), film(F2, _, X, A).
glumacBarDva(X):- glumac(S, X, _, _), film(F1,_,_,S), film(F2,_, _,S).

% za glumac mi je vazno Sifra glumca i ime glumca (prva dva)
% za film mi je vazno sifra filma, sifra glumca (prvo, cetvrto)
% ime glumca mi je X
% sifra glumca je S

filmskiUmetnik(X):- film(_,_,X,_), glumac(_, X, _, _).
opstiGlumac(X):- film(A,Z1, X,B), film(A1, Z2,X,B).
zanrovskiGlumac(X, Y):- film(_,Y,_,A), glumac(A, X,_,_).
