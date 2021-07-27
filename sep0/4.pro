

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









