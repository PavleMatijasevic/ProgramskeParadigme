

primer1(Vars) :- Vars = [X,Y,Z],
X :: 1..3,
Y :: 2..2..10,
Z :: 5..8,
Z #>= Y,
labeling(Vars).

primer2(Vars):-Vars=[X],
X :: 1..100,
Y*Y #= X,
labeling(Vars).

primer3(Vars):-Vars = [A,B,C,D,E],
A :: 1..9,
B :: 1..9,
C :: 1..9,
D :: 1..9,
E :: 1..9,
alldifferent(Vars),
labeling([minimize(A+2*B-3*C+4*D-5*E)],Vars),
Broj is A*10000 + B*1000 + C*100 + D*10 + E,
write(Broj), nl.


primer4(Vars):- Vars=[A,B,C,D,E],
A :: 1..13,
B :: 1..7,
C :: 1..3,
D :: 1..2,
E :: 1..2,

A + B*2 + C*5 + D*10 + E*20 #= 50,
labeling(Vars).

magican(Vars):- Vars = [A,B,C,D,E,F,G,H,I],
A :: 1..9,
B :: 1..9,
C :: 1..9,
D :: 1..9,
E :: 1..9,
F :: 1..9,
G :: 1..9,
H :: 1..9,
I :: 1..9,

alldifferent(Vars),

A + B + C #= 15,
D + E + F #= 15,
G + H + I #= 15,

A + D + G #= 15,
B + E + H #= 15,
G + H + I #= 15,
A + E + I #= 15,
C + E + G #= 15,

labeling(Vars).

primer5(Vars):- Vars = [X,Y,Z,W],
X :: 1..10,
Y :: 1..2..51,
Z :: 10..10..100,
W :: 1..7..1002,

2*W #=< X,
3+Y #=< Z,
X-11*W+Y+11*Z #=<100,

labeling(Vars).


