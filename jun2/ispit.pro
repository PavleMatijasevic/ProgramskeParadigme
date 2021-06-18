zadatak(Vars):- Vars = [A,B,C,D,E,F,G,H,I],
A :: 1..2..9,
B :: 2..2..8,
C :: 1..2..9,
D :: 2..2..8,
E :: 1..2..9,
F :: 2..2..8,
G :: 1..2..9,
H :: 2..2..8,
I :: 1..2..9,


alldifferent(Vars),
labeling(Vars), write(A), write(' '), write(B), write(' '), write(C), nl, write(D), write(' '), write(E), write(' '), write(F),nl, write(G), write(' '),write(H), write(' '),write(I),nl.



