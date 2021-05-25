primer1(Vars):- 
    Vars = [X, Y, Z],
    X:: 1..5,
    Y:: 2..6,
    Z:: 0..9,
    Z #< X,
    Y #> X,
    labeling(Vars).

primer2(Vars):-
    Vars = [X],
    X :: 1..100,
    X #= Y*Y,
    labeling(Vars).

petocifren(Vars):-
    Vars = [A,B,C,D,E],
    A :: 0..9,
    B :: 0..9,
    C :: 0..9,
    D :: 0..9,
    E :: 0..9,
    alldifferent(Vars),
    labeling([minimize(A+2*B-3*C+4*D-5*E)], Vars),
    Broj is E+10*D+100*C+1000*B+10000*A,
    write(Broj), nl.

novcici(Vars):-
    Vars = [A, B, C, D, E],
    A :: 1..50,
    B :: 1..25,
    C :: 1..10,
    D :: 1..5,
    E :: 1..2,

    labeling(Vars),
    Y #= A + B*2 + C*5 + D*10 + E*20,
    Y #= 50.

magican(Vars):-
    Vars = [A, B, C, D, E, F, G, H, I],
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
    Y #= A + B + C,
    Y #= D + E + F,
    Y #= G + H + I,
    Y #= A + D + G,
    Y #= B + E + H,
    Y #= C + F + I,
    labeling(Vars).

primer3(Vars):-
    Vars = [X, Y, Z],
    X :: 1..90,
    Y :: 2..2..60,
    Z :: 1..10..100,
    X #>= Z,
    X*2 + Y*X + Z  #=< 34,
    labeling(Vars).

sabiranje(Vars):- 
    Vars = [T,W,O,F,U,R],
    Vars :: 0..9,
    T #\= 0,
    F #\= 0,
    alldifferent(Vars),
    2*(T*100+W*10+O) #= 1000*F+100*O+10*U+R,
    labeling(Vars),
    write(T), write(W), write(O), nl,
    write('+'), write(T), write(W), write(O), nl,
    write('='), write(F), write(O), write(U), write(R), nl.


