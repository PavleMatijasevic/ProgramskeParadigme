primer1(Vars):- Vars = [X,Y,Z],
X :: 1..10,
Y :: 2..2..10,
Z :: 1..2..10,

X #> Y,
Y #> Z,

labeling(Vars).

primer2(Vars):- Vars = [A,B,C,D,E],
A :: 1..9,
B :: 1..9,
C :: 1..9,
D :: 1..9,
E :: 1..9,


alldifferent(Vars),
labeling([minimize(A+2*B-3*C+4*D-5*E)],Vars),
Broj is E + D*10 + C*100 + B*1000 + A*10000,
write(Broj),nl.

primer3(Vars):- Vars = [A,B,C,D,E],
A :: 1..13,
B :: 1..8,
C :: 1..4,
D :: 1..3,
E :: 1..3,

A + B*2 + C*5 + D*10 + E*20 #= 50,
labeling(Vars).

primer4(Vars):- Vars = [A,B,C,D,E,F,G,H,I],

A :: 1..9,
B :: 1..9,
C :: 1..9,
D :: 1..9,
E :: 1..9,
F :: 1..9,
G :: 1..9,
H :: 1..9,
I :: 1..9,


A + B + C #= 15,
D + E + F #= 15,
G + H + I #= 15,

A + D + G #= 15,
B + E + H #= 15,
C + F + I #= 15,

A + E + I #= 15,
C + E + G #= 15,


alldifferent(Vars),
labeling(Vars),

write(A),write(' '),write(B),write(' '),write(C),nl,
write(D),write(' '),write(E),write(' '),write(F),nl,
write(G),write(' '),write(H),write(' '),write(I),nl.




