primer(Vars):-
 Vars = [X,Y,Z],
 X :: 1..3,
 [Y,Z] :: 5..2..11,
 labeling(Vars).

primer2(Vars):-
Vars = [X,Y,Z],
X :: 1..3,
Y :: 2..2..10,
Z :: 5..8,
Z #>= Y,
labeling(Vars).

primer3(Vars):-
Vars = [X],
X :: 1..100,
Y*Y #= X,
labeling(Vars).

primer4(Vars):-
Vars = [A,B,C,D,E],
A :: 1..9,
[B,C,D,E] :: 0..9,
alldifferent(Vars),

labeling([minimize(A+2*B-3*C+4*D-5*E)] , Vars),
Broj is E+10*D+100*C+1000*B+10000*A,
write(Broj),
nl.

primer5(Vars):-
Vars = [A, B, C, D, E],
A :: 1..50,
B :: 1..25,
C :: 1..10,
D :: 1..5,
E :: 1..2,
A+B*2+C*5+D*10+E*20 #= 50,
labeling(Vars).

primer6(Vars):-
Vars = [
    A, B, C,
    D, E, F,
    G, H, I
],
[A,B,C,D,E,F,G,H,I] :: 1..9,
A + B + C #= 15,
D + E + F #= 15,
G + H + I #= 15,
A + D + G #= 15,
B + E + H #= 15,
C + F + I #= 15,
A + E + I #= 15,
G + E + C #= 15,
alldifferent(Vars),
labeling(Vars).

primer7(Vars):-
Vars = [X, Y, Z],
X :: 1..90,
Y :: 2..2..60,
Z :: 1..10..100,

Z #=< X,
X*2 + Y*X + Z #=< 34,

labeling(Vars).


pekara(Vars):-
Vars = [H, K],
H :: 1..66,
K :: 1..100,

H*10 + K*12 #=< 1200,
H*300 + 120*K #=< 20000,
labeling([maximize(H*7+K*9)], Vars),
Zarada is H*7+K*9,
write('Zarada je '), write(Zarada), write('dinara'), nl,
write('hleba: '), write(H), write(', kifli: '), write(K), nl.
