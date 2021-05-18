

musko(mihajlo).
musko(ivan).
musko(petar).
musko(igor).
musko(marko).
musko(goran).

zensko(sneza).
zensko(ana).
zensko(milena).
zensko(sanja).
zensko(maja).
zensko(ivana).

roditelj(goran, ivan).
roditelj(sneza, ivan).

roditelj(ana, mihajlo).
roditelj(ivan, mihajlo).


roditelj(ana, marko).
roditelj(ivan, marko).

roditelj(mihajlo, petar).
roditelj(sanja, petar).

roditelj(igor, ana).
roditelj(ivana, maja).

roditelj(igor, ana).
roditelj(ivana, ana).

roditelj(igor, maja).


majka(X,Y):- zensko(X), roditelj(X,Y).
otac(X,Y):- musko(X), roditelj(X,Y).
brat(X,Y):- musko(X), roditelj(Z,X), roditelj(Z,Y).
sestra(X, Y):- zensko(X), roditelj(Z, X), roditelj(Z, Y).

predak(X,Y):- roditelj(X,Y).
predak(X,Y):- roditelj(X,Z), predak(Z,Y).
